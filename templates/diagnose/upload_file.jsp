{% load static %}
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Django File Upload</title>
    <script
      src="https://kit.fontawesome.com/7d891d878a.js"
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link rel="stylesheet" href="{% static 'css/upload_file.css' %}" />
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
                <a href="/users/mypage/view/" class="text-white">{{
                  user.mail
                }}</a>
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
                <a href="#mv">원숭이두창</a>
              </li>
              <li>
                <a href="#" name="examineButton">검사</a>
              </li>
              <li>
                <a href="#none">원숭이두창맵</a>
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
      <div class="container">
        <div class="box">
          <h2 class="text-center">원숭이두창 검사</h2>
          <form method="POST" enctype="multipart/form-data">
            {% csrf_token %}
            {{ form.as_p }}
            <input type="submit" value="Submit" id="submitbutton" />
          </form>
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
          / FE 글로벌미디어학부 2021 김혜령
          <br />
          TEL : 010.5112.1400 Copyright (c) 2022 SW. ALL ALL RIGHTS RESERVED
        </address>
      </div>
    </footer>
  </body>
</html>
