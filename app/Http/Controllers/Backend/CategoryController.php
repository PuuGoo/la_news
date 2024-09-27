<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;

class CategoryController extends Controller
{
    ////////// Category /////////
    public function AllCategory()
    {
        $categories = Category::latest()->get();

        return view('backend.category.category_all', compact('categories'));
    }

    public function AddCategory()
    {
        return view('backend.category.category_add');
    }

    public function CategoryStore(Request $request)
    {

        Category::insert([
            'category_name' => $request->category_name,
            'category_slug' => strtolower(str_replace(' ', '-', $request->category_name)),
        ]);

        $notification = array(
            'message' => 'Category Inserted Successfully!',
            'alert-type' => 'success',
        );

        return redirect()->route('all.category')->with($notification);
    }

    public function EditCategory($id)
    {
        $category = Category::findOrFail($id);
        return view('backend.category.category_edit', compact('category'));
    }

    public function CategoryUpdate(Request $request)
    {
        Category::findOrFail($request->id)->update([
            'category_name' => $request->category_name,
            'category_slug' => strtolower(str_replace(' ', '-', $request->category_name)),
        ]);

        $notification = array(
            'message' => 'Category Updated Successfully!',
            'alert-type' => 'success',
        );

        return redirect()->route('all.category')->with($notification);
    }

    public function DeleteCategory($id)
    {
        Category::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Category Deleted Successfully!',
            'alert-type' => 'success',
        );

        return redirect()->route('all.category')->with($notification);
    }

    ///////// SubCategory  ////////////

    public function AllSubCategory()
    {
        $subcategories = SubCategory::latest()->get();

        return view('backend.subcategory.subcategory_all', compact('subcategories'));
    }

    public function AddSubCategory()
    {
        $categories = Category::latest()->get();
        return view('backend.subcategory.subcategory_add', compact('categories'));
    }

    public function SubCategoryStore(Request $request)
    {

        SubCategory::insert([
            'category_id' => $request->category_id,
            'subcategory_name' => $request->subcategory_name,
            'subcategory_slug' => strtolower(str_replace(' ', '-', $request->subcategory_name)),
        ]);

        $notification = array(
            'message' => 'SubCategory Inserted Successfully!',
            'alert-type' => 'success',
        );

        return redirect()->route('all.subcategory')->with($notification);
    }

    public function EditSubCategory($id)
    {
        $categories = Category::latest()->get();
        $subcategories = SubCategory::findOrFail($id);
        return view('backend.subcategory.subcategory_edit', compact('categories', 'subcategories'));
    }

    public function SubCategoryUpdate(Request $request)
    {
        SubCategory::findOrFail($request->id)->update([
            'category_id' => $request->category_id,
            'subcategory_name' => $request->subcategory_name,
            'subcategory_slug' => strtolower(str_replace(' ', '-', $request->subcategory_name)),
        ]);

        $notification = array(
            'message' => 'SubCategory Updated Successfully!',
            'alert-type' => 'success',
        );

        return redirect()->route('all.subcategory')->with($notification);
    }

    public function DeleteSubCategory($id)
    {
        SubCategory::findOrFail($id)->delete();

        $notification = array(
            'message' => 'SubCategory Deleted Successfully!',
            'alert-type' => 'success',
        );

        return redirect()->route('all.subcategory')->with($notification);
    }

    public function GetSubCategory($category_id)
    {
        $subcat = SubCategory::where('category_id', $category_id)->orderBy('subcategory_name', 'ASC')->get();

        return json_encode($subcat);
    }
}
