<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>add form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>

<body>
<div class="container">
    <div class="col">
        <h4 class="mb-3">Add new Music!</h4>
        <form action="addpost.jsp" method="post" enctype="multipart/form-data">
            <div class="row g-3">

                <div class="col-12">
                    <label for="preference" class="form-label">선호도</label>
                    <input type="text" class="form-control" id="preference" name="preference" placeholder="선호도 입력 " required="">
                    <div class="invalid-feedback">
                        Please enter Preference.
                    </div>
                </div>

                <div class="col-12">
                    <label for="title" class="form-label">제목</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="" required="">
                    <div class="invalid-feedback">
                        Please enter Title.
                    </div>
                </div>

                <div class="col-12">
                    <label for="singer" class="form-label">가수</label>
                    <input type="text" class="form-control" id="singer" name="singer" placeholder="" required="">
                    <div class="invalid-feedback">
                        Please enter Singer.
                    </div>
                </div>

                <div class="col-12">
                    <label for="album" class="form-label">앨범명</label>
                    <input type="text" class="form-control" id="album" name="album" placeholder="" required="">
                    <div class="invalid-feedback">
                        Please enter album.
                    </div>
                </div>

                <div class="col-12">
                    <label for="playtime" class="form-label">재생시간</label>
                    <input type="text" class="form-control" id="playtime" name="playtime" placeholder="" required="">
                    <div class="invalid-feedback">
                        Please enter playtime.
                    </div>
                </div>
            </div>
            <br>
            <button class="btn btn-primary btn-sm" type="submit">Save</button>
        </form>
    </div>
</div>

</body>
</html>