<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="my-3 p-3 bg-white rounded shadow-sm">
	<h6 class="border-bottom border-gray pb-2 mb-0">카테고리</h6>
	<div class="media text-muted pt-3">
		<img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1"
			alt="" class="mr-2 rounded">
		<div
			class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
			<div class="d-flex justify-content-between align-items-center w-100">
				<button type="button" class="btn btn-block"
					onclick="location.href='notice?id=${lecture.lecture_no}' ">과제 및 공지</button>
			</div>
		</div>
	</div>
	<div class="media text-muted pt-3">
		<img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1"
			alt="" class="mr-2 rounded">
		<div
			class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
			<div class="d-flex justify-content-between align-items-center w-100">
				<button type="button" class="btn btn-block"
					onclick="location.href='lecturefile?id=${lecture.lecture_no}' ">강의 자료</button>
			</div>
		</div>
	</div>
	<div class="media text-muted pt-3">
		<img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1"
			alt="" class="mr-2 rounded">
		<div
			class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
			<div class="d-flex justify-content-between align-items-center w-100">
				<button type="button" class="btn btn-block"
					onclick="location.href='studentnotice?id=${lecture.lecture_no}' ">학생 게시판</button>
			</div>
		</div>
	</div>
</div>