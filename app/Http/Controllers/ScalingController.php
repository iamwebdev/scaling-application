<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Attendance;
use App\AcademicYear;
use App\Teacher;
use App\Result;
use App\Student;

class ScalingController extends Controller
{
    public function viewScaling()
    {
    	$years = AcademicYear::all();
    	return view('scale', compact('years'));
    }

    public function getScaling(Request $request)
    {
    	$years = AcademicYear::all();
    	# Suppose total days are 30 in a year
    	$totalDays = 30;	
    	$yearArray = explode('to', $request->year);
    	$startDate = str_replace(' ', '', $yearArray[0]);
    	$endDate = str_replace(' ', '', $yearArray[1]);
    	$teacherList = Teacher::all();
    	$scalingArray = array();
    	foreach ($teacherList as $key => $value) {
    		$failedStudentCount = 0;
	    	$details = Teacher::join('students','students.teacher_id','teachers.id')
	    						->join('attendances','attendances.natt_stu_id','students.id')
	    						->select('students.*','teachers.*','teachers.id as teacherId','attendances.*','students.id as studentId')
	    						->where([['satt_status','P'],['attendances.natt_teacher_id',$value->id]])
	    						->whereBetween('satt_date', [$startDate, $endDate])
	    						->get();
	    	if ($details->count() > 0) {
				$studentIds = $details->pluck('studentId')->unique();
				foreach ($studentIds as $key1 => $value1) {
					$presentCount = $details->where('studentId',$value1)->count();
					$percentage = ($presentCount/$totalDays)*100;
					if ($percentage >= 70) {
						$failedStudent = Result::where([['nres_stu_id',$value1],['sres_status','Fail'],['sres_academic_year',$request->year]])->get();
						if ($failedStudent->pluck('id')->first()) {
							$failedStudentCount++;
						}
					}
				}
				$totalStudent = Student::where('teacher_id',$value->id)->count();
				$passedStudentCount = $totalStudent - $failedStudentCount;
				$rating = ($passedStudentCount/$totalStudent)*100;
				if ($rating == 100){
					$scalingArray[$value->teacher_name] = 10;		
				} else {
					$scalingArray[$value->teacher_name] = substr($rating, 0, 1);	
				}
	    	}
    	}
    	return view('scale', compact('years','scalingArray'));
    } 
}
