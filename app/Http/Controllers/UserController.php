<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use PhpParser\Node\Expr\FuncCall;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Requests\UserStoreRequest;

class UserController extends Controller
{
    //show all users
//     public function index()
//     {
//         try {
//             $users = User::all();

//             return response()->json([
//                 'results' => $users
//             ], 200);
//         } catch (\Exception $e) {
//             return response()->json([
//                 'error' => 'Failed to fetch users',
//                 'message' => $e->getMessage(),
//             ], 500);
//         }
//     }

//     public function show($id)
//     {
//         // user details
//         $users = User::find($id);
//         if (!$users) {
//             return response()->json([
//                 'message' => "User Not Found"
//             ], 404);
//         }

//         return response()->json([
//             'users' => $users
//         ], 200);
//     }


//     // public function store(UserStoreRequest $request)
//     // {
//     //     // Debugging line

//     //     try {
//     //         // ... rest of the code ...

//     //         User::create([
//     //             'name' => $request->name,
//     //             'email' => $request->email,
//     //             'password' => $request->password
//     //         ]);
//     //         return response()->json([
//     //             'message' => 'User created successfully'
//     //         ], 200);
//     //     } catch (\Exception $e) {
//     //         // ... handle exceptions ...

//     //         return response()->json([
//     //             'message' => "Something went Wrong"
//     //         ], 500);
//     //     }
//     // }



//     public function store(Request $request)
//     {
//         try {

//             $formAddUser = $request->validate([
//                 'name' => 'required',
//                 'email' => 'required',
//                 'password' => 'required|min:6',
//             ]);
//             $formAddUpdate['password'] = bcrypt($formAddUser['password']);
//             DB::table('users')->insert($formAddUser);
//             // return redirect('index');

//             return response()->json([
//                 'message' => "User created successfully"
//             ], 200);

//         } catch (\Exception $e) {
//             // ... handle exceptions ...

//             return response()->json([
//                 'message' => "Something went Wrong"
//             ], 500);
//         }
//     }



//     public function update( $request ,$id){


//         try {
//             // user details
//         $users = User::find($id);
//         if (!$users) {
//             return response()->json([
//                 'message' => "User Not Found"
//             ], 404);
//         }
//         // $userUpdateDetails= User::where('id',$id)->update(['name

//         $formAddUpdate = $request->validate([
//             'name' => 'required',
//             'email' => 'required',
//             'password' => 'required|min:6',
//         ]);
//         $formAddUpdate['password'] = bcrypt($formAddUpdate['password']);


//         DB::table('users')->where('id', $id)->update($formAddUpdate);


//             return response()->json([
//                 'message' => "User updated successfully"
//             ], 200);

//         } catch (\Exception $e) {
//             // ... handle exceptions ...

//             return response()->json([
//                 'message' => "Something went Wrong"
//             ], 500);
//         }

//     }



// }


// $formAddCategory = $request->validate([
//     'name'=> 'required',
//      'Active'=>'required',
//      'Featured'=>'required'
// ]);

// DB::table('categories')->where('id', $category->id)->update($formAddCategory);
// //    session::flush('message','listing created successfully');
// return back()->with('success','Category updated successfully');

}
