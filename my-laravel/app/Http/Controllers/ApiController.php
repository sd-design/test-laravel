<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class ApiController extends Controller
{
	public function index()
	{
			return response()->json([
    'Api' => 'My Laravel',
    'version' => '1.0'
	]);
	}

	public function projects()
	{
		$projects = DB::select('select * from projects');
			return response()->json($projects);
	}

	public function show_project($id)
	{
		$tasksProject = DB::select('select * from tasks where project_id = ?', [$id]);
		return response()->json($tasksProject);
	}

	public function show_task($id)
	{
		$task = DB::select('select * from tasks where ID = ?', [$id]);
		return response()->json([$task]);
	}

}