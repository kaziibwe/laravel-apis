<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use PhpParser\Node\Expr\FuncCall;
use PhpParser\Node\Scalar\MagicConst\Function_;
use Illuminate\Validation\ValidationException;
use App\Models\User;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// show all users
// Route::get('users', [UserController::class, 'index']);

Route::get('usersshow', function () {
    try {
        $users = User::all();

        return response()->json([
            'results' => $users
        ], 200);
    } catch (\Exception $e) {
        return response()->json([
            'error' => 'Failed to fetch users',
            'message' => $e->getMessage(),
        ], 500);
    }
});




// show single user
// Route::get('users/{id}', [UserController::class, 'show']);

Route::get('usersshow/{id}', function ($id){
    try {
        // user details
        $users = User::find($id);
        if (!$users) {
            return response()->json([
                'message' => "User Not Found"
            ], 404);
        }

        return response()->json([
            'users' => $users
        ], 200);
    } catch (\Exception $e) {
        return response()->json([
            'error' => 'Failed to fetch users',
            'message' => $e->getMessage(),
        ], 500);
    }
});


// Route::get('users', [UserController::class, 'index']);
// Route::post('/addnew', [UserController::class, 'store']);
// Route::put('/usersupdate/{id}', [UserController::class, 'update']);


// delete user
Route::delete('usersdelete/{id}', function ($id) {
    try {

        // user details
        $users = User::find($id);
        if (!$users) {
            return response()->json([
                'message' => "User Not Found"
            ], 404);
        }

        $users->delete();

        return response()->json([
            'message' => 'User deleted successfully',
        ], 200);
    } catch (ValidationException $e) {
        return response()->json([
            'error' => 'Validation failed',
            'errors' => $e->errors(),
        ], 422);
    }
});


Route::put('/updating/{id}', function (Request $request, $id) {
    try {

        // user details
        $users = User::find($id);
        if (!$users) {
            return response()->json([
                'message' => "User Not Found"
            ], 404);
        }

        $formAddUpdate = $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        // Hash the password before updating
        $formAddUpdate['password'] = bcrypt($formAddUpdate['password']);

        // Use Eloquent to update the user
        User::where('id', $id)->update($formAddUpdate);

        return response()->json([
            'message' => 'User updated successfully',
        ], 200);
    } catch (ValidationException $e) {
        return response()->json([
            'error' => 'Validation failed',
            'errors' => $e->errors(),
        ], 422);
    }
});



Route::post('/adduser', function (Request $request) {
    $formAdduser = $request->validate([
        'name' => 'required',
        'email' => 'required',
        'password' => 'required'
    ]);
      // Hash the password before updating
      $formAdduser['password'] = bcrypt($formAdduser['password']);

    DB::table('users')->insert($formAdduser);
    // return redirect('index');

    return response()->json([
        'message' => "User created successfully"
    ], 200);
});
