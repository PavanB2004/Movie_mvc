<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Profile</title>
</head>
<body>

    <h1>${movie.title}</h1>

    <div>
        <img src="${movie.image_url}" alt="${movie.title}">
        <p><strong>Description:</strong> ${movie.description}</p>
        <p><strong>Release Date:</strong> ${movie.releaseDate}</p>
        <p><strong>Duration:</strong> ${movie.duration} minutes</p>
        <p><strong>Language:</strong> ${movie.language}</p>
        <p><strong>Genre:</strong> ${movie.genre}</p>
        <p><strong>Rating:</strong> ${movie.rating}</p>
    </div>

    <button onclick="location.href='${pageContext.request.contextPath}/tktbooking/dashboard'">Back to Dashboard</button>

</body>
</html>
