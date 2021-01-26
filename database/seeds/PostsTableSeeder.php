<?php

use Illuminate\Database\Seeder;
use App\Post;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        // SOLO SE RICHIESTO (rimuove tutti i record precedenti della tabella)
        Post::truncate();

        /**
         * FAKER
         */
        for ($i = 0; $i < 10; $i++) {
            $title = $faker->text(50);

            $newPost = new Post();

            $newPost->title = $title;
            $newPost->body = $faker->paragraphs(2, true);
            $newPost->slug = Str::slug($title, '-');
 
            $newPost->save();
        }

        /**
         * BASIC WAY 
         */
        // $posts = [
        //     [
        //         'title' => 'My post lorem',
        //         'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae eveniet vero, officia.'
        //     ],
        //     [
        //         'title' => 'Post ipsum amet',
        //         'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti modi exercitationem placeat 
        //                    rem quaerat eos sapiente deserunt repellat optio at?'
        //     ],
        //     [
        //         'title' => 'Delectus nam alias',
        //         'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla molestiae eveniet sapiente! 
        //                    Maiores alias consectetur accusantium magni facere, molestiae perferendis esse.'
        //     ],
        // ];

        // foreach ($posts as $post) {
        //     // Creazione istanza da modello 
        //     $newPost = new Post();

        //     // Popolazione properties dell'istanza (col db)
        //     $newPost->title = $post['title'];
        //     $newPost->body = $post['body'];
        //     $newPost->slug = Str::slug($post['title'], '-');

        //     // Salvataggio record (istanza) nel db
        //     $newPost->save();
        // }
    }
}
