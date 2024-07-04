<%@page language="java" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body style="background-color: #e8e8e8">
<div class="container-fluid h-100">
    <form action="/user/register" method="POST">
        <div class="row justify-content-center">
            <div class="row justify-content-center">
                <div class="col-4" style="background-color: #d0d0d0; padding: 20px">
                    <h1>계정 생성</h1>
                </div>
            </div>
            <div class="col-4" style="background-color: #e0e0e0; padding: 20px">
                <div class="row">
                    <div class="col-9">
                        <label for="username">아이디</label>
                        <input type="text" class="form-control" id="username" name="username"
                               oninput="disableSubmitBtn()">
                    </div>
                    <div class="col-3" style="margin-top:20px">
                        <a class="btn btn-outline-primary" onclick="isValidateUsername()">중복 확인</a>
                    </div>
                </div>

                <div class="row">
                    <label for="password1">비밀번호</label>
                    <input type="password" class="form-control" id="password1" name="password"
                           oninput="checkPassword()">
                </div>
                <div class="row">
                    <label for="password2">비밀번호 확인</label>
                    <input type="password" class="form-control" id="password2" name="password2"
                           oninput="checkPassword()">
                </div>
                <div class="row">
                    <p id="passwordText">비밀번호를 입력해주세요(8자 이상)</p>
                </div>
                <div class="row">
                    <label for="nickname">닉네임</label>
                    <input type="text" class="form-control" id="nickname" name="nickname">
                </div>
                <div class="row text-center" style="margin-top: 30px">
                    <input type="submit" class="btn btn-primary" id="submitBtn" value="계정 생성" disabled>
                </div>
            </div>
        </div>
    </form>
</div>
<script>
    function isValidateUsername() {
        console.log("중복 검사 버튼 클릭");
        let username = $('#username');
        let submitBtn = $('#submitBtn');

        $.ajax({
            url: '/user/isValidateUsername',
            type: 'get',
            data: {
                'username': username.val()
            },
            success: (result) => {
                if (result.result === 'success') {
                    swal.fire({
                        'title': '가입 가능한 아이디입니다'
                    }).then(() => {
                        submitBtn.removeAttr('disabled');
                    })
                } else {
                    swal.fire({
                        'title': '중복된 아이디입니다',
                        'icon': 'warning'
                    }).then({

                    })
                }
            }
        })
    }

    function disableSubmitBtn() {

    }

    function checkPassword() {

    }
</script>
</body>