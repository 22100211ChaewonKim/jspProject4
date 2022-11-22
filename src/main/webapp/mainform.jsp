<%--
  Created by IntelliJ IDEA.
  User: gongju
  Date: 2022/11/17
  Time: 2:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    :root {
        --bs-blue: #0d6efd;
        --bs-indigo: #6610f2;
        --bs-purple: #6f42c1;
        --bs-pink: #d63384;
        --bs-red: #dc3545;
        --bs-orange: #fd7e14;
        --bs-yellow: #ffc107;
        --bs-green: #198754;
        --bs-teal: #20c997;
        --bs-cyan: #0dcaf0;
        --bs-white: #fff;
        --bs-gray: #6c757d;
        --bs-gray-dark: #343a40;
        --bs-gray-100: #f8f9fa;
        --bs-gray-200: #e9ecef;
        --bs-gray-300: #dee2e6;
        --bs-gray-400: #ced4da;
        --bs-gray-500: #adb5bd;
        --bs-gray-600: #6c757d;
        --bs-gray-700: #495057;
        --bs-gray-800: #343a40;
        --bs-gray-900: #212529;
        --bs-primary: #0d6efd;
        --bs-secondary: #6c757d;
        --bs-success: #198754;
        --bs-info: #0dcaf0;
        --bs-warning: #ffc107;
        --bs-danger: #dc3545;
        --bs-light: #f8f9fa;
        --bs-dark: #212529;
        --bs-primary-rgb: 13, 110, 253;
        --bs-secondary-rgb: 108, 117, 125;
        --bs-success-rgb: 25, 135, 84;
        --bs-info-rgb: 13, 202, 240;
        --bs-warning-rgb: 255, 193, 7;
        --bs-danger-rgb: 220, 53, 69;
        --bs-light-rgb: 248, 249, 250;
        --bs-dark-rgb: 33, 37, 41;
        --bs-white-rgb: 255, 255, 255;
        --bs-black-rgb: 0, 0, 0;
        --bs-body-color-rgb: 33, 37, 41;
        --bs-body-bg-rgb: 255, 255, 255;
        --bs-font-sans-serif: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", "Liberation Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
        --bs-font-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
        --bs-gradient: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0));
        --bs-body-font-family: var(--bs-font-sans-serif);
        --bs-body-font-size: 1rem;
        --bs-body-font-weight: 400;
        --bs-body-line-height: 1.5;
        --bs-body-color: #212529;
        --bs-body-bg: #fff;
    }
</style>

<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='deletepost.jsp?id=' + id;
    }
</script>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <title>Title</title>
</head>

<body>
<div class="container">
    <div class="top">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="http://localhost:8080/jspProject4_war_exploded/mainform.jsp"
               class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <span class="fs-3">🎧 My Playlist 🎧</span>
            </a>

            <ul class="nav nav-pills">
                <li class="nav-item"><a href="http://localhost:8080/jspProject4_war_exploded/mainform.jsp"
                                        class="nav-link active" aria-current="page">Home</a></li>
                <li class="nav-item"><a href="https://www.melon.com/" class="nav-link">Melon</a></li>
                <li class="nav-item"><a href="https://www.youtube.com/" class="nav-link">YouTube</a></li>
                <li class="nav-item"><a href="http://localhost:8080/jspProject4_war_exploded/aboutme.jsp"
                                        class="nav-link">About</a></li>
            </ul>
        </header>
    </div>

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h4">재생목록</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group me-2">
                <form>
                    <div class="row g-3 align-items-center">

                        <div class="col-auto">
                            <button type="button" class="btn btn-sm btn-success"
                                    onclick="location.href='addpostform.jsp'">Add
                            </button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">선호도</th>
            <th scope="col">노래제목</th>
            <th scope="col">가수이름</th>
            <th scope="col">앨범명</th>
            <th scope="col">재생시간</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody class="table-group-divider">

        <tr>
            <th scope="row">13</th>
            <td>🖤🖤🖤</td>
            <td>forever only</td>
            <td>재현</td>
            <td>forever only</td>
            <td>03:17</td>
            <td><a href="editform.jsp?id=13"><i class="bi bi-pencil-square imo"></i></a></td>
            <td><a href="javascript:delete_ok('13')"><i class="bi bi-trash imo"></i></a></td>
        </tr>

        <tr>
            <th scope="row">14</th>
            <td>🖤🖤🖤</td>
            <td>attention</td>
            <td>뉴진스</td>
            <td>attention</td>
            <td>03:17</td>
            <td><a href="editform.jsp?id=14"><i class="bi bi-pencil-square imo"></i></a></td>
            <td><a href="javascript:delete_ok('14')"><i class="bi bi-trash imo"></i></a></td>
        </tr>

        <tr>
            <th scope="row">15</th>
            <td>🖤</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td><a href="editform.jsp?id=15"><i class="bi bi-pencil-square imo"></i></a></td>
            <td><a href="javascript:delete_ok('15')"><i class="bi bi-trash imo"></i></a></td>
        </tr>

        </tbody>
    </table>



    <div class="bottom">
        <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
            <div class="col-md-4 d-flex align-items-center">
                <a href="https://getbootstrap.com/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
                    <svg class="bi" width="30" height="24">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
                </a>
                <span class="mb-3 mb-md-0 text-muted">© 2022 Company, chaewon</span>
            </div>

        </footer>
    </div>


</div>

</body>
</html>