<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<style>
    body{
        background: url(https://easyroster.net/wp-content/uploads/2021/11/EasyRoster-attendance-management-system-2048x1240.jpg) center;
        background-size: cover;
    }
    .welcome{
        
        justify-content: space-around;
        align-items: left;
        flex-direction: column;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    h1{
        font-size: 5.0rem;
    }
    a{
        text-decoration: none;
        font-size: 1.6rem;
        margin: 10px;
        font-weight: 500;
    }
    button{
        font-size: 1rem;
        padding: 5px ;
    }
</style>

<form action="logout.jsp" method="post">
    <div class="welcome">
        <h1>ATTENDANCE RECORD</h1>
        <div class="links">
            <a href="view.jsp">VIEW ATTENDANCE</a>
            <br><br>
            <a href="update.jsp">UPDATE ADDENDANCE</a>
            <br><br>
            <a href="update.jsp">SCORE BOARD</a>

        </div>
        <br>
        <br>
        <button type="submit">Log-Out</button>
    </div>
</form>


</body>
</html>