<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개발자 정보 | NEVITA</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
        }
        .header {
            background: linear-gradient(to right, #4a00e0, #8e2de2);
            color: white;
            padding: 40px 20px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .header h1 {
            font-size: 2.5rem;
            font-weight: 300;
            letter-spacing: 2px;
        }
        .container {
            padding-top: 50px;
            padding-bottom: 50px;
        }
        .card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            background: linear-gradient(to right, #4a00e0, #8e2de2);
            color: white;
            font-weight: bold;
            text-align: center;
            padding: 20px;
            font-size: 1.2rem;
        }
        .card-body {
            padding: 30px;
        }
        .contact-info p {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }
        .contact-info i {
            margin-right: 10px;
            color: #4a00e0;
            font-size: 1.2rem;
        }
        .github-link {
            color: #4a00e0;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .github-link:hover {
            color: #8e2de2;
        }
    </style>
</head>
<body>

<div class="header">
    <h1><i class="fas fa-code"></i> NEVITA 개발팀</h1>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-3 mb-4">
            <div class="card">
                <div class="card-header">
                    Developer 1
                </div>
                <div class="card-body contact-info">
                    <p><i class="fas fa-user"></i> <strong>김지민</strong></p>
                    <p><i class="fas fa-laptop-code"></i> 백엔드 개발자</p>
                    <p><i class="fas fa-envelope"></i> jimin3347@naver.com</p>
                    <p><i class="fab fa-github"></i> <a href="https://github.com/ijnim1121" target="_blank" class="github-link">github.com/ijnim1121</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-3 mb-4">
            <div class="card">
                <div class="card-header">
                    Developer 2
                </div>
                <div class="card-body contact-info">
                    <p><i class="fas fa-user"></i> <strong>최민지</strong></p>
                    <p><i class="fas fa-laptop-code"></i> 백엔드 개발자</p>
                    <p><i class="fas fa-envelope"></i> kim@example.com</p>
                    <p><i class="fab fa-github"></i> <a href="https://github.com/" target="_blank" class="github-link">github.com/최민지</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-3 mb-4">
            <div class="card">
                <div class="card-header">
                    Developer 3
                </div>
                <div class="card-body contact-info">
                    <p><i class="fas fa-user"></i> <strong>이슬아</strong></p>
                    <p><i class="fas fa-laptop-code"></i> 백엔드 개발자</p>
                    <p><i class="fas fa-envelope"></i> lee@example.com</p>
                    <p><i class="fab fa-github"></i> <a href="https://github.com/" target="_blank" class="github-link">github.com/이슬아</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-3 mb-4">
            <div class="card">
                <div class="card-header">
                    Developer 4
                </div>
                <div class="card-body contact-info">
                    <p><i class="fas fa-user"></i> <strong>박상미</strong></p>
                    <p><i class="fas fa-laptop-code"></i> 백엔드 개발자</p>
                    <p><i class="fas fa-envelope"></i> park@example.com</p>
                    <p><i class="fab fa-github"></i> <a href="https://github.com/" target="_blank" class="github-link">github.com/박상미</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>