{% load static %}
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <title>monkey</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script
      src="https://kit.fontawesome.com/7d891d878a.js"
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
      integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
      crossorigin="anonymous"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <link rel="stylesheet" href="{% static 'css/style.css' %}" />
  </head>
  <body>
    <header id="header">
      <div class="h_inner">
        <div class="m_logo">
          <h1 class="tit_h1">
            <a href="/"></a>
            <span class="blind">monky</span>
          </h1>
          <h2>Monkey Magic</h2>
          <div class="sub">
            <ul class="snb d-flex">
              <li>
                <a href="/users/english/view/">ENG</a>
              </li>
              <li>
                <a href="/">KOR</a>
              </li>
            </ul>
            <ul class="login">
              {% if request.session.loggedin %}
              <script>
                var loginStatus = true;
              </script>
              <li>
                <a id="logoutButton" href="/users/logout/">로그아웃</a>
              </li>
              <li>
                <a href="/users/mypage/view/" class="text-white">{{user.mail}}</a>
              </li>
              <li>
                <a href="/users/mypage/view/" class="imgg"></a>
                <span class="blind">my</span>
              </li>
              {% else %}
              <script>
                loginStatus = false;
              </script>
              <li><a href="/users/login/view/">로그인</a></li>
              {% endif %}
            </ul>
            <ul class="search">
              <input type="text" placeholder="Search" />
              <button>검색</button>
            </ul>
          </div>
        </div>
        <div class="m_nav">
          <nav>
            <ul>
              <li>
                <a href="/ins/">원숭이두창</a>
              </li>
              <li>
                <a href="#" name="examineButton">검사</a>
              </li>
              <li>
                <a href="/map/">원숭이두창맵</a>
              </li>
              <li>
                <a href="#none">기타</a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </header>

    <section id="mv">
      <img src="{% static 'css/images/main_image.png' %}" />
      <div class="main_text">
        <div class="text_box">
          <h3>원숭이두창</h3>
          <p>
            AI 모델을 활용해, 피부에 있는 발진이 원숭이 두창에 의한 증상인지에
            대해 판별하는 검사입니다.
            <br />
            <br />
            (본 검사는 AI 모델을 활용한 검사이니, 하나의 판단 근거 지표로
            활용해주시길 바랍니다.)
          </p>
          <div class="start">
            <p><a href="#" name="examineButton">검사 시작</a></p>
          </div>
        </div>
      </div>
    </section>
    <footer id="ft">
      <div class="foot_box">
        <address>
          Monkey Magic
          <br />
          BE 소프트웨어학부 장은진 글로벌미디어학부 20182764 황지원 / PM
          글로벌미디어학부 20182728 이동호 / AI 글로벌미디어학부 20192684 방지훈
          / FE 글로벌미디어학부 20213004 김혜령
          <br />
          TEL : 010.5112.1400 Copyright (c) 2022 SW. ALL ALL RIGHTS RESERVED
        </address>
      </div>
    </footer>
    <script>
      $(document).ready(function () {
        $("a[name=examineButton]").on("click", function () {
          if (loginStatus == true) {
            location.href = "/diagnose/input/";
          } else {
            alert("로그인 해주세요.");
            location.href = "/users/login/view/";
          }
        });
      });
    </script>
  </body>
</html>
