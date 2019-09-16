<?php

use Illuminate\Database\Seeder;
use App\Product;
class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new Product([
                'imagePath'=>'https://lareviewofbooks-org-cgwbfgl6lklqqj3f4t3.netdna-ssl.com/wp-content/uploads/2016/09/paavpdqsbtggtmn4smxs.png',
                 'title'=> 'IT',
                 'description'=>"Too scary - movie for childeren lol.",
                 'price'=>200
        ]);
        $product->save();
        $product = new Product([
                'imagePath'=>'https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg',
                 'title'=> 'Game of Thrones',
                 'description'=>"You've got this game.",
                 'price'=>200
        ]);
        $product->save();
        $product = new Product([
                'imagePath'=>'https://img04.mgo-images.com/image/thumbnail?id=MMVAF76018A477C2826A4EC8747C40B7BE27&ql=70&sizes=310x465',
                 'title'=> 'Avengers Endgame',
                 'description'=>"One snap with the six stones.",
                 'price'=>200
        ]);
        $product->save();
        $product = new Product([
                'imagePath'=>'http://www.gstatic.com/tv/thumb/v22vodart/3542039/p3542039_v_v8_ac.jpg',
                 'title'=> 'Avatar',
                 'description'=>"Kids know this movie.",
                 'price'=>200
        ]);
        $product->save();

        $product = new Product([
                'imagePath'=>'http://t0.gstatic.com/images?q=tbn:ANd9GcQhYjUIu2o5v5u3rfJpCq5Cz0Q9WK--XdYxai_N2d0ImohPiIOp',
                 'title'=> 'Titanic',
                 'description'=>"Even the biggest ship",
                 'price'=>200
        ]);
        $product->save();

        $product = new Product([
                'imagePath'=>'http://t2.gstatic.com/images?q=tbn:ANd9GcSRyzmDo83KY0dClkpu3VPWZ0tMfzySsKqBO8YAouuFJxwNXMOU',
                 'title'=> 'Godzilla',
                 'description'=>"The Alpha and the great great great.",
                 'price'=>200
        ]);
        $product->save();
    }
}
