<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class ApiController extends Controller
{
	public function projects()
	{
			return response()->json([
    'Api' => 'My Laravel',
    'version' => '1.0'
	]);
	}

	public function show_project($id)
	{
			return response()->json([
				'title' => 'Project #'.$id,
				'project id' => $id
				]);
	}

	public function tasks($category)
	{
			return response()->json([
				'Tasks' => 'Index',
				'category of projects' => $category
				]);
	}

	public function show_task($category, $id)
	{
			return response()->json([
				'Project category' => $category,
				'task id' => $id
				]);
	}

}