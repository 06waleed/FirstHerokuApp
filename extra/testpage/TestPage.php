<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link href="page.css" rel="stylesheet" type="text/css">
    <link href="ninja-slider.css" rel="stylesheet" type="text/css" />
    <script src="ninja-slider.js" type="text/javascript"></script>
    <style>
        body {font: normal 0.9em Arial;margin:0;}
        a {color:#1155CC;}
        ul li {padding: 20px 0;}
    </style>
    <title>Quiz Master</title>
</head>
<body>
<div id="bar">Quiz Master</div>
<div id="navbar">
    <ol id="list">
        <li><a class="a"href="file:///D:/WebStrom/TestPageHome/Home.html">Home</a></li>
        <li>About</li>
        <li>Contact</li>
        <li><a class="a"href="file:///D:/WebStrom/TestPage/TestPage.html">Quiz</a></li>
        <li>Help</li>
    </ol>
</div>
<form id="details">
    <fieldset>
        <legend>Your Details</legend>
        <label>Name:
            <input class="a" type="text" name="name" size="30px" maxlength="100px" required="required">
        </label>
        <br/>
        <label class="one">Email:
            <input class="a" type="text" name="email" size="30px" maxlength="100px" required="required">
        </label>
    </fieldset>
</form>
<form id="courses">
    <fieldset>
        <legend>
            Select Courses
        </legend>
        <label>
            <input class="radio" type="radio" name="selection" value="HTML">
            HTML
        </label>
        <br/>
        <label>
            <input class="radio" type="radio" name="selection" value="CSS">
            CSS
        </label><br/>
        <label>
            <input class="radio" type="radio" name="selection" value="Java">
            Java
        </label><br/>
        <label>
            <input class="radio" type="radio" name="selection" value="JavaScript">
            Javascript
        </label><br/>
        <label>
            <input class="radio" type="radio" name="selection" value="Android">
            Android
        </label><br/>
        <label>
            <input class="radio" type="radio" name="selection" value="AngularJS">
            AngularJS
        </label><br/>
        <label>
            <input class="radio" type="radio" name="selection" value="JQuery">
            JQuery
        </label>
    </fieldset>
    <input type="submit" value="Submit" id="button">
</form>
<div id="img">
    <div id='ninja-slider'>
        <ul>
            <li>
                <div data-image="collageofprofessionals.jpg"></div>
            </li>
            <li>
                <div data-image="care.png"></div>
            </li>
            <li>
                <div data-image="healthcare.jpg"></div>
            </li>
            <li>
                <div data-image="slideimage.jpg"></div>
            </li>
            <li>
                <div data-image="health.jpg"></div>
            </li>
            <li>
                <div data-image="healths.jpg"></div>
            </li>
            <li>
                <div data-image="Workplace.jpg"></div>
            </li>
            <li><a data-image="Sectors.jpg" href="http://www.menucool.com"></a></li>
        </ul>
    </div>
</div>

</body>
</html>