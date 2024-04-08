
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
        <style>
            .form-item {
              display: flex;
              align-items: center;
              margin-bottom: 10px;
            }

            .form-item label {
              min-width: 180px;
              margin-right: 10px;
            }
            
            .desc {
                padding-bottom: 20px;
                margin-top: 10px;
            }

            input[type="text"],
            input[type="email"],
            select,
            textarea {
              width: 30%;
              margin-bottom: 5px;
            }

            .buttons {
              gap: 2rem;
              display: flex;
              align-items: center;
              margin-bottom: 10px;
            }
        </style>
    </head>
    
    
    <h2>Join our email list </h2>
    <span class="desc">To join our email list, enter your name and email address below</span>
        <form method ="post" action="./GetThreeParam">
            <div class="form-item">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required />
            </div>
            <div class="form-item">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" required />
            </div>
            <div class="form-item">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required />
            </div>
            <div class="form-item buttons">
                <input type="submit" value="Join Now" />
            </div>
        </form>
</html>
