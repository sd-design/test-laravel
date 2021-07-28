<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('projects', [ApiController::class, 'projects']);
Route::get('projects/{id}', [ApiController::class, 'show_project']);
Route::get('tasks/{category}', [ApiController::class, 'tasks']);
Route::get('tasks/{category}/{id}', [ApiController::class, 'show_task']);
