
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
    
    
    <h2>Collect three Parameters </h2>
        <form method ="post" action="./GetThreeParam">
            <div class="form-item">
                <label for="first">First parameter:</label>
                <input type="text" id="first" name="first" required />
            </div>
            <div class="form-item">
                <label for="second">Second parameter:</label>
                <input type="text" id="second" name="second" required />
            </div>
            <div class="form-item">
                <label for="third">Third parameter:</label>
                <input type="text" id="third" name="third" required />
            </div>
            <div class="form-item buttons">
                <input type="submit" value="Submit" />
            </div>
        </form>
    <br>
    <hr />
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
    <hr />
    <h2>School of Computer Science & Engineering</h2>
    <h2>Register Form</h2>

    <form method ="post" action="./RegisterCourse">
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
          <label for="major">Field of study:</label>
          <select name="major" id="major">
                <option value="cs">CS</option>
                <option value="im">IM</option>
                <option value="ee">EE</option>
                <option value="ba">BA</option>
                <option value="be">BE</option>
          </select>
        </div>
        
      <div class="form-item">
        <label for="courses">List of subjects:</label>
        <div class="checkbox-group">
            <div>
                <input
                  type="checkbox"
                  id="course"
                  name="courses1"
                  value="course1"
                />
                <label for="course1">Principle of EE 1</label>
            </div>
            <div>
                <input
                  type="checkbox"
                  id="course2"
                  name="courses"
                  value="course2"
                />
                <label for="course2">Computer Network</label>
            </div>
            <div>
              <input
                type="checkbox"
                id="course3"
                name="courses"
                value="course3"
              />
              <label for="course3">Web Application Development</label>
            </div>
            <div>
              <input
                type="checkbox"
                id="course4"
                name="courses"
                value="course4"
              />
              <label for="course4">Object-Oriented Programming</label>
            </div>
            <div>
              <input
                type="checkbox"
                id="course5"
                name="courses"
                value="course5"
              />
              <label for="course5">Computer Graphics</label>
            </div>
        </div>
    </div>
    <div class="form-item">
        <label for="comments">Comments</label>
        <textarea name="comments" id="comments" cols="30" rows="10"></textarea>
    </div>
    <div class="form-item buttons">
        <input type="submit" value="Submit" />
        <input type="reset" value="Cancel" />
    </div>
    </form>
     
    
</html>
