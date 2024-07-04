<%@page language="java" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid">
    <div class="main h-100">
        <div class="row justify-content-center" style="margin-top: 200px">
            <div class="col-3 text-center">
                <div class="card">
                    <img src="/images/movie.png" class="card-img-top">
                    <hr/>
                    <div class="card-body">
                        <h4 class="card-title"><b>영화 리스트</b></h4>
                        <p class="card-text">다양한 영화들을 만나보세요</p>
                        <a href="/movie/showList" class="btn btn-primary"
                           style="display: block; width: 100%; height: auto">이동</a>
                    </div>
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-3 text-center">
                <div class="card">
                    <img src="/images/theater.png" class="card-img-top">
                    <hr/>
                    <div class="card-body">
                        <h4 class="card-title"><b>영화관 리스트</b></h4>
                        <p class="card-text">영화관들을 만나보세요</p>
                        <a href="/theater/showList" class="btn btn-primary"
                           style="display: block; width: 100%; height: auto">이동</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>