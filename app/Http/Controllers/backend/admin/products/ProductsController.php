<?php
namespace App\Http\Controllers\backend\admin\products;
use App\Http\Controllers\Controller;
use App\Models\Product;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Cloudinary;
class ProductsController extends Controller
{

//Products List
    public function products(){

        $data['allproducts'] = Product::with('category')->where('active', 1)->latest()->paginate(10);

        return view('backend.products.products',$data);

    }

//Goto New product form

    public function productsNew(){
        return view('backend.products.new');

    }
//Store Products
    public function productsStore(Request $request){

        $validator = Validator::make($request->all(), [

            'title' => 'required|min:2',
            'description' => 'required',
            'image'     => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:5000',
            'price' => 'required|numeric',
            'stock_status' => 'required',
            'category'  => 'required',
            'stock' => 'required'
            
        ]);

        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }

        if( $request->hasFile('image')){
            if($request->file('image')->isValid()){

                $image = $request->file('image');

                $imageName= $image->getClientOriginalName().random_int(2,4).'.'.$image->getClientOriginalExtension();

               $image_resize = Image::make($image->getRealPath());
               $image_resize->resize(600, null, function($cons){
                   $cons->aspectRatio();
                   $cons->upsize();
               });

               $image_resize->save(public_path('allfiles/products_image/'.$imageName));

        //         $resizedImage = cloudinary()->upload($request->file('image')->getRealPath(), [
        //             'folder' => 'products',
        //             'transformation' => [
        //                       'width' => 379,
        //                       'height' => 304
        //              ]
        // ])->getSecurePath();    

            }
        }

        if($request->child_category!==null && $request->child_category!==""){
            
            $category_id = $request->child_category;
            
        }else{         
            $category_id = ($request->sub_category)? $request->sub_category : $request->category;
        }

try {
    Product::create([

        'category_id' => $category_id,
        'title'       => $request->title,
        'description'   => $request->description,
        'image'         => $imageName,
        'in_stock'  =>$request->stock_status,
        'price'         =>$request->price,
        'sale_price'    =>$request->sprice,
        'active' => $request->product_status,
        'stock_amount' =>$request->stock

    ]);
} catch (Exception $e) {
    
    $this->errorMessage($e->getMessage());
    return redirect()->back()->withInput();
}

   $this->successMessage("Product successfully created");
   return redirect()->back();
    }

//Show Product
    public function productsShow($id){

        $product = Product::with('category')->findOrFail($id);
        return view('backend.products.show',['product' => $product]);

    }

//Edit Products
    public function productsEdit($id){
        $data['product'] = Product::find($id);

        return view('backend.products.edit')->with($data);
    }

//Update Products

    public function productsUpdate(Request $request, $id){
        $validator = Validator::make($request->all(), [

            'title' => 'required|min:2',
            'description' => 'required',
            'image'     => 'image|mimes:jpeg,png,jpg,gif,svg|max:5000',
            'price' => 'required|numeric',
            'stock_status' => 'required',
            'category'  => 'required',
            'stock' => 'required'          
            
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $product = Product::find($id);


        if( $request->hasFile('image')){
            if($request->file('image')->isValid()){

                 
          $image = $request->file('image');
        
          $imageName= $image->getClientOriginalName().random_int(2,4).'.'.$image->getClientOriginalExtension();
        
          $image_resize = Image::make($image->getRealPath());
          $image_resize->resize(600, null, function($cons){
            $cons->aspectRatio();
            $cons->upsize();
        });
           $image_resize->save(public_path('allfiles/products_image/'.$imageName));

               unlink(public_path().'/allfiles/products_image/'.$product->image);

    //         $url = $product->image;
    //         preg_match("/products\/(?:v\d+\/)?([^\.]+)/", $url, $matches);
    //         Cloudinary::destroy($matches[0]);
    //         $resizedImage = cloudinary()->upload($request->file('image')->getRealPath(), [
    //             'folder' => 'products',
            
    // ])->getSecurePath();  

               $product->image = $imageName;
               $product->save();
               
            }
        }

        if($request->child_category!==null && $request->child_category!==""){
            $category_id = $request->child_category;
            $product->category_id = $category_id;
            $product->save();
            
        }else{

            $category_id = ($request->sub_category)? $request->sub_category : $request->category;
            $product->category_id = $category_id;
            $product->save();
        }
try {
    Product::find($id)->update([

        
        'title'       => $request->title,
        'description'   => $request->description,
        'in_stock'  =>$request->stock_status,
        'price'         =>$request->price,
        'sale_price'    =>$request->sprice,
        'active' => $request->product_status,
        'stock_amount' =>$request->stock


    ]);
} catch (Exception $e) {
    
    $this->errorMessage($e->getMessage());
    return redirect()->back()->withInput();
}

   $this->successMessage("Product successfully updated");
   return redirect()->back();
        
    }

//Delete Products

    public function productsDelete($id){

        $product = Product::find($id);
        // $url = $product->image;
        // preg_match("/products\/(?:v\d+\/)?([^\.]+)/", $url, $matches);
        // Cloudinary::destroy($matches[0]);

        $product->delete();

        if($product->image){
            unlink(public_path().'/allfiles/products_image/'.$product->image);   
        }

        session()->flash('type','success');
        session()->flash('message','Product successfully deleted');
        return redirect()->back();
    }
}