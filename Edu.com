<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EduLearn - Education Website</title>

<style>

/* ===== GLOBAL ===== */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:#f4f7fb;
    color:#333;
}

/* ===== HEADER ===== */

header{
    width:100%;
    background:#0b1f3a;
    padding:15px 60px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    position:fixed;
    top:0;
    z-index:1000;
}

.logo{
    color:white;
    font-size:30px;
    font-weight:bold;
}

nav a{
    color:white;
    text-decoration:none;
    margin-left:25px;
    transition:0.3s;
    font-size:18px;
}

nav a:hover{
    color:#00d9ff;
}

/* ===== HERO SLIDER ===== */

.slider{
    width:100%;
    height:100vh;
    overflow:hidden;
    position:relative;
}

.slides{
    display:flex;
    width:300%;
    animation:slide 15s infinite;
}

.slide{
    width:100%;
    flex-shrink:0;
    height:100vh;
    position:relative;
}

.slide img{
    width:100%;
    height:100%;
    object-fit:cover;
    filter:brightness(50%);
}

.slide-content{
    position:absolute;
    top:50%;
    left:10%;
    transform:translateY(-50%);
    color:white;
    animation:fadeIn 2s;
}

.slide-content h1{
    font-size:65px;
    margin-bottom:20px;
}

.slide-content p{
    font-size:24px;
    margin-bottom:30px;
}

.btn{
    padding:14px 35px;
    background:#00d9ff;
    color:black;
    text-decoration:none;
    font-size:18px;
    border-radius:6px;
    transition:0.3s;
}

.btn:hover{
    background:white;
}

/* ===== ANIMATIONS ===== */

@keyframes slide{

    0%{margin-left:0;}
    25%{margin-left:0;}

    30%{margin-left:-100%;}
    55%{margin-left:-100%;}

    60%{margin-left:-200%;}
    85%{margin-left:-200%;}

    100%{margin-left:0;}
}

@keyframes fadeIn{
    from{
        opacity:0;
        transform:translateY(30px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

/* ===== COURSES ===== */

.courses{
    padding:100px 60px;
    text-align:center;
}

.courses h2{
    font-size:45px;
    margin-bottom:50px;
    color:#0b1f3a;
}

.course-container{
    display:flex;
    justify-content:center;
    flex-wrap:wrap;
    gap:30px;
}

.course-card{
    width:300px;
    background:white;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 5px 20px rgba(0,0,0,0.1);
    transition:0.4s;
}

.course-card:hover{
    transform:translateY(-10px);
}

.course-card img{
    width:100%;
    height:200px;
    object-fit:cover;
}

.course-info{
    padding:20px;
}

.course-info h3{
    margin-bottom:15px;
    color:#0b1f3a;
}

.course-info p{
    margin-bottom:20px;
    color:#555;
}

.course-btn{
    display:inline-block;
    padding:10px 25px;
    background:#00d9ff;
    color:black;
    text-decoration:none;
    border-radius:5px;
    font-weight:bold;
}

/* ===== LOGIN SECTION ===== */

.login-section{
    padding:100px 20px;
    background:#0b1f3a;
    display:flex;
    justify-content:center;
    align-items:center;
}

.login-box{
    width:400px;
    background:white;
    padding:40px;
    border-radius:15px;
    animation:fadeIn 1.5s;
}

.login-box h2{
    text-align:center;
    margin-bottom:30px;
    color:#0b1f3a;
}

.input-box{
    margin-bottom:20px;
}

.input-box input{
    width:100%;
    padding:14px;
    border:1px solid #ccc;
    border-radius:5px;
    outline:none;
    font-size:16px;
}

.login-btn{
    width:100%;
    padding:14px;
    border:none;
    background:#00d9ff;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
    border-radius:5px;
    transition:0.3s;
}

.login-btn:hover{
    background:#0b1f3a;
    color:white;
}

/* ===== FOOTER ===== */

footer{
    background:#081426;
    color:rgb(235, 198, 198);
    text-align:center;
    padding:20px;
}

/* ===== RESPONSIVE ===== */

@media(max-width:768px){

    header{
        padding:15px 20px;
        flex-direction:column;
    }

    nav{
        margin-top:10px;
    }

    .slide-content h1{
        font-size:40px;
    }

    .slide-content p{
        font-size:18px;
    }

    .course-container{
        flex-direction:column;
        align-items:center;
    }

    .login-box{
        width:100%;
    }

}

</style>
</head>

<body>

<!-- HEADER -->

<header>

    <div class="logo">EduLearn</div>

    <nav>
        <a href="#">Home</a>
        <a href="#">Courses</a>
        <a href="#">Login</a>
        <a href="#">Contact</a>
    </nav>

</header>

<!-- HERO SLIDER -->

<section class="slider">

    <div class="slides">

        <!-- Slide 1 -->

        <div class="slide">

            <img src="https://images.unsplash.com/photo-1523240795612-9a054b0db644" alt="">

            <div class="slide-content">
                <h1>Learn From Experts</h1>
                <p>Interactive Online Education Platform</p>
                <a href="#" class="btn">Start Learning</a>
            </div>

        </div>

        <!-- Slide 2 -->

        <div class="slide">

            <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3" alt="">

            <div class="slide-content">
                <h1>Build Your Skills</h1>
                <p>Programming, Design & Business Courses</p>
                <a href="#" class="btn">Explore Courses</a>
            </div>

        </div>

        <!-- Slide 3 -->

        <div class="slide">

            <img src="https://images.unsplash.com/photo-1509062522246-3755977927d7" alt="">

            <div class="slide-content">
                <h1>Join Thousands Students</h1>
                <p>Grow Your Career With Modern Learning</p>
                <a href="#" class="btn">Join Now</a>
            </div>

        </div>

    </div>

</section>

<!-- COURSES -->

<section class="courses">

    <h2>Popular Courses</h2>

    <div class="course-container">

        <!-- Course 1 -->

        <div class="course-card">

            <img src="https://images.unsplash.com/photo-1515879218367-8466d910aaa4" alt="">

            <div class="course-info">
                <h3>Web Development</h3>
                <p>Learn HTML, CSS, JavaScript and modern web design.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>

        <!-- Course 2 -->

        <div class="course-card">

            <img src="https://images.unsplash.com/photo-1516321497487-e288fb19713f" alt="">

            <div class="course-info">
                <h3>Graphic Design</h3>
                <p>Create amazing UI/UX and professional graphics.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>

        <!-- Course 3 -->

        <div class="course-card">

            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978" alt="">

            <div class="course-info">
                <h3>Digital Marketing</h3>
                <p>Master SEO, social media and online marketing skills.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>
        <div class="course-card">

            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978" alt="">

            <div class="course-info">
                <h3>Data Science</h3>
                <p>Master Python, Machine Learning, and Analytics.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>
         <div class="course-card">

            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978" alt="">

            <div class="course-info">
                <h3>Data Science</h3>
                <p>Master Python, Machine Learning, and Analytics.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>
         <div class="course-card">

            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978" alt="">

            <div class="course-info">
                <h3>Data Science</h3>
                <p>Master Python, Machine Learning, and Analytics.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>
 <div class="course-card">

            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978" alt="">

            <div class="course-info">
                <h3>Data Science</h3>
                <p>Master Python, Machine Learning, and Analytics.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>
         <div class="course-card">

            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978" alt="">

            <div class="course-info">
                <h3>Data Science</h3>
                <p>Master Python, Machine Learning, and Analytics.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

        </div>
        <div class="course-card">

            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978" alt="">

            <div class="course-info">
                <h3>Data Science</h3>
                <p>Master Python, Machine Learning, and Analytics.</p>
                <a href="#" class="course-btn">Enroll</a>
            </div>

    </div>

</section>

<!-- LOGIN PAGE -->

<section class="login-section">

    <div class="login-box">

        <h2>Student Login</h2>

        <div class="input-box">
            <input type="email" placeholder="Enter Email">
        </div>

        <div class="input-box">
            <input type="password" placeholder="Enter Password">
        </div>

        <button class="login-btn">Login</button>

    </div>

</section>

<!-- FOOTER -->

<footer>

    <p>© 2026 EduLearn By Er.Sabir | All Rights Reserved</p>

</footer>

</body>
</html>