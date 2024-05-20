<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ex2</title>
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

            input[type="text"],
            input[type="email"],
            select,
            textarea {
              width: 30%;
              margin-bottom: 5px;
            }

            input[type="radio"],
            input[type="checkbox"] {
              margin-right: 5px;
            }

            .checkbox-group {
              display: flex;
              flex-direction: column;
              align-items: flex-start;
            }

            .buttons {
              gap: 2rem;
            }
        </style>
    </head>
    <body>
        <h2>Personal Information</h2>
        
        <form method ="post" action="./GetInfor">
            <div class="form-item">
                <label for="name">Full name:</label>
                <input type="text" id="name" name="name" required />
            </div>
            <div class="form-item">
              <label for="id">ID:</label>
              <input type="text" id="id" name="id" required />
            </div>
            <div class="form-item">
              <label for="email">Email:</label>
              <input type="email" id="email" name="email" required />
            </div>
            <div class="form-item">
                <label>Gender:</label>
                <div>
                    <input type="radio" id="male" name="gender" value="male" />
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female" />
                    <label for="female">Female</label>
                </div>
            </div>
            <div class="form-item">
              <label for="major">Major:</label>
              <select name="major" id="major">
                <option value="cs">CS</option>
                <option value="im">IM</option>
                <option value="ee">EE</option>
                <option value="ba">BA</option>
                <option value="be">BE</option>
              </select>
            </div>
            <div class="form-item">
                <label for="interestingfield">Interesting field</label>
                <textarea name="interestingfield" id="interestingfield" cols="30" rows="10"></textarea>
            </div>
            <div class="form-item buttons">
                <input type="submit" value="Insert" />
                <input type="button" value="Cancel" onclick="window.location.href='cancel'"/>
            </div>
        </form>
        <br>
        <hr/>
    </body>
</html>
