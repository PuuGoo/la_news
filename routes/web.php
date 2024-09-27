<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Frontend\IndexController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\NewsPostController;

// Home Route
Route::get('/', [IndexController::class, 'Index']);

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

// User All Route
Route::middleware(['auth'])->group(
    function () {
        Route::get('/dashboard', [UserController::class, 'UserDashboard'])->name('dashboard');
        Route::post('/user/profile/edit', [UserController::class, 'UserProfileEdit'])->name('user.profile.edit');
        Route::get('/user/logout', [UserController::class, 'UserLogout'])->name('user.logout');
        Route::get('/user/change/password', [UserController::class, 'UserChangePassword'])->name('user.change.password');
        Route::post('/user/update/password', [UserController::class, 'UserUpdatePassword'])->name('user.update.password');
    }
);

// Profile All Route
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

// Admin All Route
Route::middleware(['auth', 'role:admin'])->group(function () {
    Route::get('/admin/dashboard', [AdminController::class, 'AdminDashboard'])->name('admin.dashboard');
    Route::get('/admin/logout', [AdminController::class, 'AdminLogout'])->name('admin.logout');
    Route::get('/admin/profile', [AdminController::class, 'AdminProfile'])->name('admin.profile');
    Route::post('/admin/profile/edit', [AdminController::class, 'AdminProfileEdit'])->name('admin.profile.edit');
    Route::get('/admin/change/password', [AdminController::class, 'AdminChangePassword'])->name('admin.change.password');
    Route::post('/admin/update/password', [AdminController::class, 'AdminUpdatePassword'])->name('admin.update.password');
});

Route::get('/admin/login', [AdminController::class, 'AdminLogin'])->name('admin.login');
Route::get('/admin/logout/page', [AdminController::class, 'AdminLogoutPage'])->name('admin.logout.page');

Route::middleware(['auth', 'role:admin'])->group(function () {
    // Category All Route
    Route::controller(CategoryController::class)->group(function () {
        Route::get('/all/category', "AllCategory")->name('all.category');
        Route::get('/add/category', "AddCategory")->name('add.category');
        Route::post('/category/store', "CategoryStore")->name('category.store');
        Route::get('/edit/category/{id}', "EditCategory")->name('edit.category');
        Route::post('/category/update', "CategoryUpdate")->name('category.update');
        Route::get('/delete/category/{id}', "DeleteCategory")->name('delete.category');
    });

    // SubCategory All Route
    Route::controller(CategoryController::class)->group(function () {
        Route::get('/all/subcategory', "AllSubCategory")->name('all.subcategory');
        Route::get('/add/subcategory', "AddSubCategory")->name('add.subcategory');
        Route::post('/subcategory/store', "SubCategoryStore")->name('subcategory.store');
        Route::get('/edit/subcategory/{id}', "EditSubCategory")->name('edit.subcategory');
        Route::post('/subcategory/update', "SubCategoryUpdate")->name('subcategory.update');
        Route::get('/delete/subcategory/{id}', "DeleteSubCategory")->name('delete.subcategory');
        Route::get('/subcategory/ajax/{category_id}', "GetSubCategory");
    });

    // Admin User All Route
    Route::controller(AdminController::class)->group(function () {
        Route::get('/all/admin', "AllAdmin")->name('all.admin');
        Route::get('/add/admin', "AddAdmin")->name('add.admin');
        Route::post('/admin/store', "AdminStore")->name('admin.store');
        Route::get('/edit/admin/{id}', "EditAdmin")->name('edit.admin');
        Route::post('/admin/update', "AdminUpdate")->name('admin.update');
        Route::get('/delete/admin/{id}', "DeleteAdmin")->name(name: 'delete.admin');
        Route::get('/inactive/admin/user/{id}', "InactiveAdminUser")->name(name: 'inactive.admin.user');
        Route::get('/active/admin/user/{id}', "ActiveAdminUser")->name(name: 'active.admin.user');
    });

    // News Post All Route
    Route::controller(NewsPostController::class)->group(function () {
        Route::get('/all/news/post', "AllNewsPost")->name('all.news.post');
        Route::get('/add/news/post', "AddNewsPost")->name('add.news.post');
        Route::post('/news/post/store', "NewsPostStore")->name('news.post.store');
        Route::get('/news/post/{id}', "EditNewsPost")->name('edit.news.post');
        Route::post('/news/post/update', "NewsPostUpdate")->name('news.post.update');
        Route::get('/delete/news/post/{id}', "DeleteNewsPost")->name('delete.news.post');
        Route::get('/inactive/news/post/user/{id}', "InactiveNewsPost")->name(name: 'inactive.news.post.user');
        Route::get('/active/news/post/user/{id}', "ActiveNewsPost")->name(name: 'active.news.post.user');
    });
});


// Access Route
Route::get('/news/details/{id}/{slug}', [IndexController::class, 'NewsDetails']);
Route::get('/news/category/{id}/{slug}', [IndexController::class, 'CatWiseNews']);
Route::get('/news/subcategory/{id}/{slug}', [IndexController::class, 'SubCatWiseNews']);
Route::get('/news/search', [IndexController::class, 'NewsSearch'])->name('news.search');
Route::post('/news/search/keyword', [IndexController::class, 'NewsSearchKeyword'])->name('news.search.keyword');
