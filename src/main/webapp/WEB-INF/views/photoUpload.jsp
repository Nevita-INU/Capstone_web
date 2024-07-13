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
        <form action="${pageContext.request.contextPath}/photoUpload" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="file" class="form-label">사진 선택:</label>
                <input type="file" class="form-control" id="file" name="file" accept="image/*" required>
            </div>
            <button type="submit" class="btn btn-primary">업로드</button>
        </form>
        
        <% if (request.getParameter("success") != null) { %>
            <div class="alert alert-success mt-3">사진이 성공적으로 업로드되었습니다.</div>
        <% } else if (request.getParameter("error") != null) { %>
            <div class="alert alert-danger mt-3">사진 업로드 중 오류가 발생했습니다.</div>
        <% } %>
    </div>
</body>
</html>