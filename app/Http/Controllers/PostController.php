<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\InfoPost;
use App\Tag;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('created_at', 'desc')->paginate(5);

        return view('posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Get all tags
        $tags = Tag::all();

        return view('posts.create', compact('tags'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // GET FORM DATA
        $data = $request->all();
        // dd($data);

        // VALIDATION
        $request->validate($this->ruleValidation());

        // SET POST SLUG
        $data['slug'] = Str::slug($data['title'], '-');
        // dd($data);

        // Se img è presente
        if (!empty($data['path_img'])) {
            $data['path_img'] = Storage::disk('public')->put('images', $data['path_img']);
        }

        // SAVE TO DB
        $newPost = new Post();
        $newPost->fill($data); // $fillable Model
        $saved = $newPost->save();

        // <------ InfoPost record 
        $data['post_id'] = $newPost->id; // FK
        $newInfo = new InfoPost();
        $newInfo->fill($data);
        $infoSaved = $newInfo->save();


        if($saved && $infoSaved) {
            if(!empty($data['tags'])) {
                $newPost->tags()->attach($data['tags']);
            }
            return redirect()->route('posts.index');
        } else {
            return redirect()->route('homepage');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $post = Post::where('slug', $slug)->first();
        // dd($post);

        // Check
        if (empty($post)) {
            abort(404);
        }

        return view('posts.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($slug)
    {
        $post = Post::where('slug', $slug)->first();
        $tags = Tag::all();

        if(empty($post)) {
            abort(404);
        }

        return view('posts.edit', compact('post', 'tags'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // GET DATA FROM FORM
        $data = $request->all();

        // VALIDAZIONE
        $request->validate($this->ruleValidation());

        // GET POST TO UPDATE
        $post = Post::find($id);

        // Gen slug
        $data['slug'] = Str::slug($data['title'], '-');

        // if img changed
        if(!empty($data['path_img'])) {
            // delete previus one
            if (!empty($post->path_img)) {
                Storage::disk('public')->delete($post->path_img);
            }

            // set new img
            $data['path_img'] = Storage::disk('public')->put('images', $data['path_img']);
        }

        // UPDATE DB
        $updated = $post->update($data); // <-- $fillable nel Model

        //<----- Info table update 
        $data['post_id'] = $post->id; // FK
        $info = InfoPost::where('post_id', $post->id)->first();
        $infoUpdate = $info->update($data); // <-- $fillable nel Model

        if ($updated && $infoUpdate) {
            if(!empty($data['tags'])) {
                $post->tags()->sync($data['tags']);
            } else {
                $post->tags()->detach();
            }

            return redirect()->route('posts.show', $post->slug);
        } else {
            return redirect()->route('homepage');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post) // (Forma abbr. parte sotto) 
    {
        // $post = Post::find($id);

        $title = $post->title;
        $image = $post->path_img;

        $post->tags()->detach();
        $deleted = $post->delete();

        if ($deleted) {
            if(!empty($image)) {
                Storage::disk('public')->delete($image);
            }
            return redirect()->route('posts.index')->with('post-deleted', $title);
        } else {
            return redirect()->route('homepage');
        }
    }

    /**
     * Validation rules
     */
    private function ruleValidation() {
        return [
            'title' => 'required',
            'body' => 'required',
            'path_img' => 'mimes:jpg,jpeg,bmp,png'
        ];
    }
}
