<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>사진 업로드</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>사진 업로드</h2>

    <!-- 사진 업로드 폼 -->
    <form action="${pageContext.request.contextPath}/photo/upload" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="file" class="form-label">사진 선택:</label>
            <input type="file" class="form-control" id="file" name="image" accept="image/*" required>
        </div>
        <!-- 폼 제출 버튼 추가 -->
        <button type="submit" class="btn btn-primary mt-3">사진 업로드</button>
    </form>

    <!-- 인증하기 버튼 -->
    <button type="button" class="btn btn-primary mt-3" onclick="location.href='${pageContext.request.contextPath}/sensorCheck'">인증하기</button>

    <!-- 업로드 성공/실패 메시지 -->
    <% if (request.getParameter("success") != null) { %>
    <div class="alert alert-success mt-3">사진이 성공적으로 업로드되었습니다.</div>
    <% } else if (request.getParameter("error") != null) { %>
    <div class="alert alert-danger mt-3">사진 업로드 중 오류가 발생했습니다.</div>
    <% } %>
</div>
</body>
</html>
