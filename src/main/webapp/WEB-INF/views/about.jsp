<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네비타 사용 방법</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .header {
            background: linear-gradient(45deg, #007bff, #6610f2);
            color: white;
            padding: 40px 20px;
            text-align: center;
        }
        .content {
            padding: 50px 30px;
            max-width: 900px;
            margin: auto;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-top: -50px;
            position: relative;
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        h2 {
            color: #007bff;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-top: 40px;
        }
        p, li {
            line-height: 1.8;
            font-size: 1.1em;
        }
        .step {
            background-color: #e9ecef;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            transition: all 0.3s ease;
        }
        .step:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        .icon {
            font-size: 2em;
            color: #007bff;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<div class="header">
    <h1 data-aos="fade-down">nevita를 방문해주신 여러분 환영합니다</h1>
</div>

<div class="content" data-aos="fade-up">
    <h2><i class="fas fa-info-circle"></i> 1. 플랫폼 소개</h2>
    <p>nevita는 킥보드 사용자의 안전을 위해 헬멧 착용 독려를 위한 혁신적인 플랫폼입니다. 킥보드 이용 시 헬멧에 부착된 첨단 센서와, 헬멧 착용 사진 업로드를 통해 인증이 완료된 후 서비스 이용이 가능합니다.</p>

    <h2><i class="fas fa-clipboard-list"></i> 2. 기본 사용 방법</h2>
    <p>네비타 플랫폼을 안전하고 효율적으로 사용하기 위해 다음 단계를 따라주세요:</p>
    <div class="step" data-aos="fade-right">
        <div class="icon"><i class="fas fa-play-circle"></i></div>
        <strong>인증하고 운행 시작하기:</strong> 플랫폼에 접속하여 '인증하고 운행 시작하기' 버튼을 클릭합니다.
    </div>
    <div class="step" data-aos="fade-left">
        <div class="icon"><i class="fas fa-broadcast-tower"></i></div>
        <strong>센서 인증하기:</strong> 헬멧을 착용하고 센서 인식을 확인합니다. 최첨단 기술로 정확한 착용 여부를 감지합니다.
    </div>
    <div class="step" data-aos="fade-right">
        <div class="icon"><i class="fas fa-camera"></i></div>
        <strong>사진 업로드하기:</strong> 헬멧 착용 사진을 업로드하여 이중 확인 절차를 거칩니다.
    </div>
    <div class="step" data-aos="fade-left">
        <div class="icon"><i class="fas fa-check-circle"></i></div>
        <strong>인증 완료:</strong> 모든 인증 절차가 완료되면 '인증완료' 버튼을 클릭하여 안전한 운행을 시작하세요!
    </div>

    <h2><i class="fas fa-headset"></i> 3. 추가 지원</h2>
    <p>추가적인 도움이 필요하신가요? 네비타의 24/7 고객 지원 센터에 문의하거나 상세한 FAQ 섹션을 참조하세요. 사용자 여러분의 안전과 편의를 위해 다양한 맞춤형 지원 서비스를 제공하고 있습니다.</p>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script>
    AOS.init({
        duration: 1000,
        once: true
    });
</script>
</body>
</html>