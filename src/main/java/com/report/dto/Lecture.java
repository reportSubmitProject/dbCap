package com.report.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Lecture {
	int lecture_no;
	String lecture_name;
	String lecture_type;
	int ta_no;
	List<ProfessorLecture> professorLectureList = new ArrayList<>();
}
