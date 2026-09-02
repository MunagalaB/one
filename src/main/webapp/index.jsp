<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Modern E-Commerce</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

/* =========================
   GLOBAL
========================= */

:root{
    --primary:#111827;
    --secondary:#4f46e5;
    --accent:#7c3aed;
    --pink:#ec4899;

    --bg:#f8fafc;
    --card:#ffffff;
    --text:#111827;
    --muted:#64748b;

    --border:#e5e7eb;

    --radius:18px;
    --container:1250px;

    --shadow:0 10px 30px rgba(15,23,42,.07);
    --shadow-hover:0 20px 45px rgba(15,23,42,.13);
}

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Inter,Arial,sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.5;
}

a{
    text-decoration:none;
    color:inherit;
}

button,
input{
    font-family:inherit;
}

.container{
    width:100%;
    max-width:var(--container);
    margin:auto;
    padding:0 22px;
}


/* =========================
   HEADER
========================= */

header{
    position:sticky;
    top:0;
    z-index:1000;

    background:rgba(255,255,255,.88);
    backdrop-filter:blur(18px);

    border-bottom:1px solid rgba(15,23,42,.06);
}

.header-inner{
    min-height:76px;

    display:flex;
    align-items:center;
    justify-content:space-between;

    gap:25px;
}

.brand{
    font-family:Poppins,sans-serif;
    font-size:24px;
    font-weight:800;

    display:flex;
    align-items:center;
    gap:8px;
}

.brand-icon{
    width:38px;
    height:38px;

    display:grid;
    place-items:center;

    border-radius:12px;

    color:white;

    background:linear-gradient(
        135deg,
        var(--secondary),
        var(--pink)
    );

    box-shadow:0 8px 20px rgba(79,70,229,.25);
}

.brand .accent{
    color:var(--secondary);
}

.main-nav ul{
    list-style:none;

    display:flex;
    align-items:center;

    gap:6px;
}

.main-nav a{
    display:flex;
    align-items:center;
    gap:7px;

    padding:10px 13px;

    border-radius:10px;

    font-size:14px;
    font-weight:600;

    transition:.2s;
}

.main-nav a:hover{
    background:#eef2ff;
    color:var(--secondary);
}


/* =========================
   SEARCH
========================= */

.search{
    width:280px;

    display:flex;
    align-items:center;

    gap:10px;

    background:#f1f5f9;

    border:1px solid transparent;

    padding:10px 14px;

    border-radius:12px;

    transition:.2s;
}

.search:focus-within{
    background:white;
    border-color:#c7d2fe;

    box-shadow:0 0 0 4px rgba(79,70,229,.08);
}

.search input{
    border:0;
    outline:0;

    background:transparent;

    width:100%;

    font-size:14px;
}

.icon-btn{
    border:0;
    background:transparent;

    cursor:pointer;

    font-size:17px;

    color:#475569;

    transition:.2s;
}

.icon-btn:hover{
    color:var(--secondary);
}

.header-actions{
    display:flex;
    align-items:center;
    gap:15px;
}

.cart{
    position:relative;

    width:40px;
    height:40px;

    display:grid;
    place-items:center;

    border-radius:12px;

    background:#f1f5f9;

    transition:.2s;
}

.cart:hover{
    background:#eef2ff;
    color:var(--secondary);
}

.cart-count{
    position:absolute;

    top:-6px;
    right:-5px;

    width:20px;
    height:20px;

    display:grid;
    place-items:center;

    border-radius:50%;

    background:#ef4444;
    color:white;

    font-size:11px;
    font-weight:800;

    border:2px solid white;
}

.mobile-toggle{
    display:none;

    border:0;
    background:transparent;

    font-size:21px;

    cursor:pointer;
}


/* =========================
   HERO
========================= */

.hero{
    min-height:540px;

    display:flex;
    align-items:center;

    position:relative;

    overflow:hidden;

    background:
    linear-gradient(
        100deg,
        rgba(15,23,42,.95),
        rgba(49,46,129,.72),
        rgba(15,23,42,.45)
    ),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
    center/cover;
}

.hero-content{
    max-width:760px;

    color:white;
}

.hero-label{
    display:inline-flex;
    align-items:center;
    gap:8px;

    padding:8px 13px;

    background:rgba(255,255,255,.12);

    border:1px solid rgba(255,255,255,.18);

    border-radius:999px;

    font-size:13px;
    font-weight:700;

    margin-bottom:18px;
}

.hero h1{
    font-family:Poppins,sans-serif;

    font-size:56px;

    line-height:1.1;

    letter-spacing:-2px;

    margin-bottom:20px;
}

.hero h1 span{
    background:linear-gradient(
        90deg,
        #a5b4fc,
        #f0abfc
    );

    -webkit-background-clip:text;
    color:transparent;
}

.hero p{
    max-width:650px;

    color:#e2e8f0;

    font-size:17px;

    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}


/* =========================
   BUTTONS
========================= */

.btn{
    border:0;

    padding:13px 20px;

    border-radius:12px;

    display:inline-flex;
    align-items:center;
    justify-content:center;

    gap:9px;

    cursor:pointer;

    font-weight:700;

    transition:.2s;
}

.btn-primary{
    background:linear-gradient(
        135deg,
        var(--secondary),
        var(--accent)
    );

    color:white;

    box-shadow:0 10px 25px rgba(79,70,229,.3);
}

.btn-primary:hover{
    transform:translateY(-2px);

    box-shadow:0 15px 30px rgba(79,70,229,.4);
}

.btn-ghost{
    color:white;

    background:rgba(255,255,255,.1);

    border:1px solid rgba(255,255,255,.25);
}

.btn-ghost:hover{
    background:white;
    color:var(--primary);
}


/* =========================
   SECTIONS
========================= */

.section{
    padding:70px 0;
}

.section-heading{
    text-align:center;

    margin-bottom:35px;
}

.section-heading h2{
    font-family:Poppins,sans-serif;

    font-size:32px;

    margin-bottom:8px;
}

.section-heading p{
    color:var(--muted);
}


/* =========================
   CATEGORIES
========================= */

.categories{
    display:grid;

    grid-template-columns:
    repeat(6,1fr);

    gap:16px;
}

.cat-card{
    background:white;

    padding:24px 14px;

    border:1px solid var(--border);

    border-radius:var(--radius);

    text-align:center;

    cursor:pointer;

    box-shadow:var(--shadow);

    transition:.25s;
}

.cat-card:hover{
    transform:translateY(-7px);

    border-color:#c7d2fe;

    box-shadow:var(--shadow-hover);
}

.cat-icon{
    width:58px;
    height:58px;

    margin:auto;

    display:grid;
    place-items:center;

    border-radius:17px;

    background:#eef2ff;

    color:var(--secondary);

    font-size:24px;

    margin-bottom:14px;

    transition:.25s;
}

.cat-card:hover .cat-icon{
    background:linear-gradient(
        135deg,
        var(--secondary),
        var(--accent)
    );

    color:white;

    transform:rotate(-5deg) scale(1.05);
}

.cat-card h4{
    font-size:14px;
    margin-bottom:4px;
}

.cat-card p{
    font-size:12px;
    color:var(--muted);
}


/* =========================
   PRODUCTS
========================= */

.products{
    display:grid;

    grid-template-columns:
    repeat(4,1fr);

    gap:22px;
}

.product{
    position:relative;

    background:white;

    border:1px solid var(--border);

    border-radius:var(--radius);

    overflow:hidden;

    box-shadow:var(--shadow);

    transition:.25s;
}

.product:hover{
    transform:translateY(-7px);

    box-shadow:var(--shadow-hover);
}

.product-image{
    position:relative;

    height:240px;

    background:#f8fafc;

    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;

    object-fit:cover;

    transition:.4s;
}

.product:hover .product-image img{
    transform:scale(1.07);
}

.badge{
    position:absolute;

    top:13px;
    left:13px;

    z-index:2;

    padding:6px 9px;

    border-radius:8px;

    background:#111827;

    color:white;

    font-size:11px;

    font-weight:800;
}

.badge.sale{
    background:#ef4444;
}

.wish-btn{
    position:absolute;

    top:13px;
    right:13px;

    width:36px;
    height:36px;

    display:grid;
    place-items:center;

    border:0;

    border-radius:50%;

    background:white;

    color:#64748b;

    cursor:pointer;

    box-shadow:0 5px 15px rgba(0,0,0,.1);

    transition:.2s;
}

.wish-btn:hover{
    color:#ef4444;

    transform:scale(1.08);
}

.product-body{
    padding:18px;
}

.product-category{
    color:var(--secondary);

    text-transform:uppercase;

    font-size:11px;

    font-weight:800;

    letter-spacing:.6px;

    margin-bottom:7px;
}

.product h3{
    font-size:16px;

    margin-bottom:12px;
}

.price-row{
    display:flex;

    justify-content:space-between;

    align-items:center;

    gap:10px;
}

.price{
    font-size:19px;

    font-weight:800;
}

.old-price{
    color:#94a3b8;

    font-size:12px;

    text-decoration:line-through;

    margin-left:5px;
}

.rating{
    color:#f59e0b;

    font-size:12px;
}

.rating span{
    color:#94a3b8;
}

.product-footer{
    padding:0 18px 18px;

    display:flex;

    gap:8px;
}

.add-btn{
    flex:1;

    border:0;

    background:#111827;

    color:white;

    padding:11px;

    border-radius:10px;

    cursor:pointer;

    font-weight:700;

    transition:.2s;
}

.add-btn:hover{
    background:var(--secondary);
}


/* =========================
   FLASH SALE
========================= */

.deal{
    display:grid;

    grid-template-columns:1fr 1fr;

    overflow:hidden;

    border-radius:24px;

    background:
    linear-gradient(
        135deg,
        #111827,
        #312e81
    );

    color:white;

    box-shadow:0 20px 50px rgba(15,23,42,.18);
}

.deal-image{
    min-height:390px;

    background:
    url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
    center/cover;
}

.deal-content{
    padding:45px;

    display:flex;

    flex-direction:column;

    justify-content:center;
}

.deal-tag{
    color:#c4b5fd;

    font-size:12px;

    font-weight:800;

    text-transform:uppercase;

    letter-spacing:1px;

    margin-bottom:10px;
}

.deal h2{
    font-family:Poppins,sans-serif;

    font-size:36px;

    margin-bottom:10px;
}

.deal-description{
    color:#cbd5e1;

    margin-bottom:20px;
}

.timer{
    display:flex;

    gap:10px;

    margin:15px 0 22px;
}

.time-box{
    min-width:68px;

    padding:11px;

    text-align:center;

    background:rgba(255,255,255,.1);

    border:1px solid rgba(255,255,255,.12);

    border-radius:12px;
}

.time-box strong{
    display:block;

    font-size:21px;
}

.time-box span{
    font-size:10px;

    color:#cbd5e1;
}

.deal-price{
    display:flex;

    align-items:center;

    gap:12px;

    margin-bottom:20px;
}

.deal-price strong{
    font-size:30px;
}

.deal-old{
    text-decoration:line-through;

    color:#94a3b8;
}

.discount{
    background:#ef4444;

    padding:5px 9px;

    border-radius:7px;

    font-size:12px;

    font-weight:800;
}


/* =========================
   TESTIMONIALS
========================= */

.testimonials{
    display:grid;

    grid-template-columns:
    repeat(3,1fr);

    gap:20px;
}

.testimonial{
    background:white;

    padding:25px;

    border:1px solid var(--border);

    border-radius:var(--radius);

    box-shadow:var(--shadow);
}

.stars{
    color:#f59e0b;

    margin-bottom:14px;
}

.testimonial p{
    color:#475569;

    font-size:14px;

    margin-bottom:20px;
}

.customer{
    display:flex;

    align-items:center;

    gap:12px;
}

.customer img{
    width:45px;
    height:45px;

    border-radius:50%;

    object-fit:cover;
}

.customer-name{
    font-weight:800;

    font-size:14px;
}

.customer-role{
    color:var(--muted);

    font-size:12px;
}


/* =========================
   NEWSLETTER
========================= */

.newsletter{
    position:relative;

    overflow:hidden;

    text-align:center;

    color:white;

    padding:55px 25px;

    border-radius:24px;

    background:
    linear-gradient(
        135deg,
        #4f46e5,
        #7c3aed,
        #db2777
    );
}

.newsletter h2{
    font-family:Poppins,sans-serif;

    font-size:30px;

    margin-bottom:8px;
}

.newsletter p{
    color:#ede9fe;

    margin-bottom:22px;
}

.newsletter-form{
    display:flex;

    justify-content:center;

    gap:8px;

    max-width:500px;

    margin:auto;
}

.newsletter-form input{
    flex:1;

    min-width:0;

    border:0;

    outline:0;

    padding:14px 17px;

    border-radius:11px;

    font-size:14px;
}

.newsletter-form .btn{
    background:#111827;
}


/* =========================
   FOOTER
========================= */

footer{
    background:#0f172a;

    color:#cbd5e1;

    margin-top:30px;

    padding:55px 0 25px;
}

.footer-grid{
    display:grid;

    grid-template-columns:
    2fr 1fr 1fr 1fr;

    gap:40px;
}

.footer-brand{
    font-family:Poppins,sans-serif;

    color:white;

    font-size:22px;

    font-weight:800;

    margin-bottom:12px;
}

.footer-description{
    color:#94a3b8;

    max-width:350px;

    font-size:14px;
}

.footer-title{
    color:white;

    font-weight:700;

    margin-bottom:15px;
}

.footer-links{
    display:flex;

    flex-direction:column;

    gap:9px;

    font-size:14px;
}

.footer-links a{
    color:#94a3b8;

    transition:.2s;
}

.footer-links a:hover{
    color:white;
}

.socials{
    display:flex;

    gap:10px;

    margin-top:20px;
}

.socials a{
    width:38px;
    height:38px;

    display:grid;
    place-items:center;

    border-radius:10px;

    background:#1e293b;

    transition:.2s;
}

.socials a:hover{
    background:var(--secondary);

    color:white;
}

.copyright{
    text-align:center;

    border-top:1px solid #1e293b;

    margin-top:40px;

    padding-top:20px;

    color:#64748b;

    font-size:12px;
}


/* =========================
   MOBILE MENU
========================= */

.mobile-menu{
    display:none;

    background:white;

    border-top:1px solid var(--border);
}

.mobile-menu a{
    display:block;

    padding:13px 0;

    font-weight:600;

    border-bottom:1px solid #f1f5f9;
}


/* =========================
   RESPONSIVE
========================= */

@media(max-width:1100px){

    .main-nav{
        display:none;
    }

    .mobile-toggle{
        display:block;
    }

    .header-inner{
        gap:12px;
    }

    .search{
        width:230px;
    }

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }
}

@media(max-width:800px){

    .hero{
        min-height:500px;
    }

    .hero h1{
        font-size:43px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal-image{
        min-height:260px;
    }

    .testimonials{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:600px){

    .header-inner{
        min-height:68px;
    }

    .brand{
        font-size:19px;
    }

    .brand-icon{
        width:34px;
        height:34px;
    }

    .search{
        display:none;
    }

    .header-actions .icon-btn{
        display:none;
    }

    .hero{
        min-height:500px;
    }

    .hero h1{
        font-size:34px;

        letter-spacing:-1px;
    }

    .hero p{
        font-size:14px;
    }

    .section{
        padding:50px 0;
    }

    .section-heading h2{
        font-size:27px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:1fr;
    }

    .product-image{
        height:260px;
    }

    .deal-content{
        padding:30px 22px;
    }

    .deal h2{
        font-size:28px;
    }

    .timer{
        gap:6px;
    }

    .time-box{
        min-width:60px;
    }

    .newsletter-form{
        flex-direction:column;
    }

    .newsletter-form input{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }
}

</style>
</head>


<body>

<!-- ================= HEADER ================= -->

<header>

<div class="container header-inner">

    <div style="display:flex;align-items:center;gap:12px;">

        <button
            class="mobile-toggle"
            id="mobileToggle"
            aria-label="Open menu">

            <i class="fas fa-bars"></i>

        </button>

        <a href="#" class="brand">

            <span class="brand-icon">
                <i class="fas fa-bag-shopping"></i>
            </span>

            <span>
                Nexus<span class="accent">Shop</span>
            </span>

        </a>

    </div>


    <nav class="main-nav">

        <ul>

            <li>
                <a href="#">
                    <i class="fas fa-home"></i>
                    Home
                </a>
            </li>

            <li>
                <a href="#categories">
                    <i class="fas fa-grid-2"></i>
                    Categories
                </a>
            </li>

            <li>
                <a href="#products">
                    <i class="fas fa-fire"></i>
                    Trending
                </a>
            </li>

            <li>
                <a href="#deals">
                    <i class="fas fa-tag"></i>
                    Deals
                </a>
            </li>

            <li>
                <a href="#about">
                    <i class="fas fa-circle-info"></i>
                    About
                </a>
            </li>

        </ul>

    </nav>


    <div style="display:flex;align-items:center;gap:14px;">

        <div class="search">

            <input
                type="search"
                id="searchInput"
                placeholder="Search products..."
            >

            <button
                class="icon-btn"
                id="searchBtn">

                <i class="fas fa-search"></i>

            </button>

        </div>


        <div class="header-actions">

            <button class="icon-btn">
                <i class="far fa-user"></i>
            </button>

            <button class="icon-btn">
                <i class="far fa-heart"></i>
            </button>

            <a
                class="cart"
                href="#"
                id="cartBtn">

                <i class="fas fa-shopping-bag"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </a>

        </div>

    </div>

</div>


<div class="mobile-menu" id="mobileMenu">

<div class="container">

    <a href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Trending</a>
    <a href="#deals">Deals</a>
    <a href="#about">About</a>

</div>

</div>

</header>



<!-- ================= HERO ================= -->

<main>

<section class="hero">

<div class="container">

<div class="hero-content">

    <div class="hero-label">

        <i class="fas fa-sparkles"></i>

        New Season • Premium Collection

    </div>


    <h1>

        Upgrade Your
        <span>Everyday Style.</span>

    </h1>


    <p>

        Discover premium fashion, smart technology,
        accessories and everyday essentials — all in one place.

    </p>


    <div class="hero-buttons">

        <button
            class="btn btn-primary"
            id="shopNow">

            Shop Collection

            <i class="fas fa-arrow-right"></i>

        </button>


        <button
            class="btn btn-ghost"
            id="exploreDeals">

            <i class="fas fa-tag"></i>

            View Deals

        </button>

    </div>

</div>

</div>

</section>



<!-- ================= CATEGORIES ================= -->

<section
    class="section"
    id="categories">

<div class="container">

<div class="section-heading">

    <h2>Shop by Category</h2>

    <p>
        Find everything you need in one place.
    </p>

</div>


<div
    class="categories"
    id="categoriesGrid">
</div>

</div>

</section>



<!-- ================= PRODUCTS ================= -->

<section
    class="section"
    id="products">

<div class="container">

<div class="section-heading">

    <h2>Trending Products</h2>

    <p>
        Popular picks our customers love.
    </p>

</div>


<div
    class="products"
    id="productsGrid">
</div>

</div>

</section>



<!-- ================= DEAL ================= -->

<section
    class="section"
    id="deals">

<div class="container">

<div class="section-heading">

    <h2>Limited Time Deal</h2>

    <p>
        Grab it before the timer runs out.
    </p>

</div>


<div class="deal">

    <div class="deal-image"></div>


    <div class="deal-content">

        <div class="deal-tag">
            Flash Sale
        </div>

        <h2>
            MacBook Air M2
        </h2>

        <p class="deal-description">

            Thin, light and incredibly powerful.
            Experience next-generation performance
            with Apple's M2 chip.

        </p>


        <div class="timer">

            <div class="time-box">
                <strong id="dealDays">0</strong>
                <span>Days</span>
            </div>

            <div class="time-box">
                <strong id="dealHours">00</strong>
                <span>Hours</span>
            </div>

            <div class="time-box">
                <strong id="dealMinutes">00</strong>
                <span>Minutes</span>
            </div>

            <div class="time-box">
                <strong id="dealSeconds">00</strong>
                <span>Seconds</span>
            </div>

        </div>


        <div class="deal-price">

            <strong>$999</strong>

            <span class="deal-old">
                $1,199
            </span>

            <span class="discount">
                -17%
            </span>

        </div>


        <p style="margin-bottom:18px;color:#cbd5e1;">

            <i class="fas fa-bolt"></i>

            Only <strong>12</strong> items left!

        </p>


        <div>

            <button
                class="btn btn-primary"
                id="buyDeal">

                Buy Now

                <i class="fas fa-arrow-right"></i>

            </button>

        </div>

    </div>

</div>

</div>

</section>



<!-- ================= TESTIMONIALS ================= -->

<section class="section">

<div class="container">

<div class="section-heading">

    <h2>What Our Customers Say</h2>

    <p>
        Trusted by shoppers around the world.
    </p>

</div>


<div class="testimonials">

<div class="testimonial">

    <div class="stars">
        ★★★★★
    </div>

    <p>
        "Fast shipping and excellent customer support.
        The product exceeded my expectations!"
    </p>

    <div class="customer">

        <img
            src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
            alt="Ava Martin">

        <div>

            <div class="customer-name">
                Ava Martin
            </div>

            <div class="customer-role">
                Verified Buyer
            </div>

        </div>

    </div>

</div>



<div class="testimonial">

    <div class="stars">
        ★★★★★
    </div>

    <p>
        "Great selection and the checkout was smooth.
        Will definitely shop again."
    </p>

    <div class="customer">

        <img
            src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
            alt="Michael Lee">

        <div>

            <div class="customer-name">
                Michael Lee
            </div>

            <div class="customer-role">
                Frequent Buyer
            </div>

        </div>

    </div>

</div>



<div class="testimonial">

    <div class="stars">
        ★★★★★
    </div>

    <p>
        "Amazing quality and very reasonable prices.
        NexusShop has become my favourite store."
    </p>

    <div class="customer">

        <img
            src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
            alt="Sophia Williams">

        <div>

            <div class="customer-name">
                Sophia Williams
            </div>

            <div class="customer-role">
                Verified Buyer
            </div>

        </div>

    </div>

</div>

</div>

</div>

</section>



<!-- ================= NEWSLETTER ================= -->

<section class="section">

<div class="container">

<div class="newsletter">

    <h2>
        Stay in the Loop
    </h2>

    <p>
        Subscribe for exclusive offers and new arrivals.
    </p>


    <form
        class="newsletter-form"
        id="newsletterForm">

        <input
            type="email"
            id="newsletterEmail"
            placeholder="Enter your email address"
            required>

        <button
            class="btn"
            type="submit">

            Subscribe

        </button>

    </form>


    <div
        id="newsletterMsg"
        style="margin-top:12px;font-size:13px;">
    </div>

</div>

</div>

</section>

</main>



<!-- ================= FOOTER ================= -->

<footer id="about">

<div class="container">

<div class="footer-grid">

    <div>

        <div class="footer-brand">
            NexusShop
        </div>

        <p class="footer-description">

            A modern shopping experience built
            for people who value quality, style
            and convenience.

        </p>


        <div class="socials">

            <a href="#">
                <i class="fab fa-facebook-f"></i>
            </a>

            <a href="#">
                <i class="fab fa-twitter"></i>
            </a>

            <a href="#">
                <i class="fab fa-instagram"></i>
            </a>

            <a href="#">
                <i class="fab fa-linkedin-in"></i>
            </a>

        </div>

    </div>


    <div>

        <div class="footer-title">
            Company
        </div>

        <div class="footer-links">

            <a href="#">About Us</a>
            <a href="#">Careers</a>
            <a href="#">Press</a>
            <a href="#">Blog</a>

        </div>

    </div>


    <div>

        <div class="footer-title">
            Support
        </div>

        <div class="footer-links">

            <a href="#">Help Center</a>
            <a href="#">Shipping</a>
            <a href="#">Returns</a>
            <a href="#">Contact Us</a>

        </div>

    </div>


    <div>

        <div class="footer-title">
            Quick Links
        </div>

        <div class="footer-links">

            <a href="#products">Products</a>
            <a href="#deals">Deals</a>
            <a href="#categories">Categories</a>
            <a href="#">Wishlist</a>

        </div>

    </div>

</div>


<div class="copyright">

    © <span id="year"></span>
    NexusShop. All rights reserved.

</div>

</div>

</footer>



<script>

/* =========================
   DATA
========================= */

const CATEGORIES = [

    {
        id:"phones",
        name:"Smartphones",
        icon:"fa-mobile-screen-button"
    },

    {
        id:"laptops",
        name:"Laptops",
        icon:"fa-laptop"
    },

    {
        id:"clothing",
        name:"Clothing",
        icon:"fa-shirt"
    },

    {
        id:"gadgets",
        name:"Gadgets",
        icon:"fa-headphones"
    },

    {
        id:"footwear",
        name:"Footwear",
        icon:"fa-shoe-prints"
    },

    {
        id:"accessories",
        name:"Accessories",
        icon:"fa-watch"
    }

];


const PRODUCTS = [

    {
        id:1,
        title:"iPhone 14 Pro Max",
        price:1099,
        oldPrice:1199,
        rating:5,
        reviews:128,
        badge:"New",
        img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",
        category:"phones"
    },

    {
        id:2,
        title:'MacBook Pro 14"',
        price:1999,
        rating:4,
        reviews:86,
        img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",
        category:"laptops"
    },

    {
        id:3,
        title:"Apple Watch Series 8",
        price:349,
        oldPrice:399,
        rating:5,
        reviews:214,
        badge:"-25%",
        img:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85",
        category:"accessories"
    },

    {
        id:4,
        title:"Nike Air Max 270",
        price:150,
        rating:4,
        reviews:53,
        img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85",
        category:"footwear"
    },

    {
        id:5,
        title:"Sony A7 IV Camera",
        price:2499,
        rating:5,
        reviews:42,
        img:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",
        category:"gadgets"
    },

    {
        id:6,
        title:"Premium Perfume",
        price:120,
        rating:5,
        reviews:189,
        img:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",
        category:"accessories"
    },

    {
        id:7,
        title:"Travel Backpack",
        price:79,
        oldPrice:99,
        rating:4,
        reviews:67,
        badge:"Sale",
        img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85",
        category:"accessories"
    },

    {
        id:8,
        title:"Sony WH-1000XM5",
        price:399,
        rating:5,
        reviews:156,
        img:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85",
        category:"gadgets"
    }

];


/* =========================
   ELEMENTS
========================= */

const categoriesGrid =
    document.getElementById("categoriesGrid");

const productsGrid =
    document.getElementById("productsGrid");

const cartCountEl =
    document.getElementById("cartCount");

const searchInput =
    document.getElementById("searchInput");

let cartCount = 0;


/* =========================
   CATEGORIES
========================= */

function renderCategories(){

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(cat => {

        const el = document.createElement("div");

        el.className = "cat-card";

        el.innerHTML = `

            <div class="cat-icon">

                <i class="fas ${cat.icon}"></i>

            </div>

            <h4>
                ${cat.name}
            </h4>

            <p>
                Explore products
            </p>

        `;

        el.addEventListener("click",()=>{

            searchInput.value = cat.name;

            filterProducts(cat.name);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior:"smooth"
                });

        });

        categoriesGrid.appendChild(el);

    });

}


/* =========================
   PRODUCTS
========================= */

function renderProducts(list){

    productsGrid.innerHTML = "";

    if(!list.length){

        productsGrid.innerHTML = `

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:50px;
                color:#64748b;
            ">

                <i
                    class="fas fa-box-open"
                    style="
                        font-size:40px;
                        margin-bottom:15px;
                    ">
                </i>

                <h3>
                    No products found
                </h3>

                <p>
                    Try another search.
                </p>

            </div>

        `;

        return;
    }


    list.forEach(p => {

        const el =
            document.createElement("article");

        el.className = "product";


        el.innerHTML = `

            <div class="product-image">

                ${
                    p.badge
                    ?
                    `<span class="badge ${p.badge === "Sale" || p.badge.startsWith("-") ? "sale" : ""}">
                        ${p.badge}
                    </span>`
                    :
                    ""
                }


                <button
                    class="wish-btn"
                    aria-label="Wishlist">

                    <i class="far fa-heart"></i>

                </button>


                <img
                    src="${p.img}"
                    alt="${escapeHtml(p.title)}"
                >

            </div>


            <div class="product-body">

                <div class="product-category">
                    ${p.category}
                </div>

                <h3>
                    ${escapeHtml(p.title)}
                </h3>


                <div class="price-row">

                    <div>

                        <span class="price">
                            $${p.price.toLocaleString()}
                        </span>

                        ${
                            p.oldPrice
                            ?
                            `<span class="old-price">
                                $${p.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>


                    <div class="rating">

                        ${"★".repeat(
                            Math.round(p.rating)
                        )}

                        <span>
                            (${p.reviews})
                        </span>

                    </div>

                </div>

            </div>


            <div class="product-footer">

                <button
                    class="add-btn"
                    data-id="${p.id}">

                    <i class="fas fa-cart-plus"></i>

                    Add to Cart

                </button>

            </div>

        `;


        productsGrid.appendChild(el);

    });


    document
        .querySelectorAll(".add-btn")
        .forEach(btn => {

            btn.addEventListener(
                "click",
                ()=>{

                    addToCart(
                        Number(btn.dataset.id)
                    );

                }
            );

        });


    document
        .querySelectorAll(".wish-btn")
        .forEach(btn => {

            btn.addEventListener(
                "click",
                ()=>{

                    const icon =
                        btn.querySelector("i");

                    icon.classList.toggle(
                        "far"
                    );

                    icon.classList.toggle(
                        "fas"
                    );

                    btn.style.color =
                        icon.classList.contains("fas")
                        ? "#ef4444"
                        : "";

                }
            );

        });

}


/* =========================
   CART
========================= */

function addToCart(productId){

    const product =
        PRODUCTS.find(
            p => p.id === productId
        );

    if(!product) return;

    cartCount++;

    cartCountEl.textContent =
        cartCount;

    const btn =
        document.querySelector(
            `.add-btn[data-id="${productId}"]`
        );

    if(btn){

        const original =
            btn.innerHTML;

        btn.innerHTML =
            '<i class="fas fa-check"></i> Added';

        btn.style.background =
            "#16a34a";

        btn.disabled = true;

        setTimeout(()=>{

            btn.innerHTML =
                original;

            btn.style.background =
                "";

            btn.disabled =
                false;

        },1200);

    }

}


/* =========================
   SEARCH
========================= */

function filterProducts(query){

    const q =
        String(query || "")
        .trim()
        .toLowerCase();

    if(!q){

        renderProducts(PRODUCTS);

        return;
    }


    const filtered =
        PRODUCTS.filter(p =>

            p.title
            .toLowerCase()
            .includes(q)

            ||

            p.category
            .toLowerCase()
            .includes(q)

        );


    renderProducts(filtered);

}


document
    .getElementById("searchBtn")
    .addEventListener(
        "click",
        ()=>{
            filterProducts(
                searchInput.value
            );
        }
    );


searchInput.addEventListener(
    "keydown",
    e => {

        if(e.key === "Enter"){

            filterProducts(
                e.target.value
            );

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }

    }
);


/* =========================
   MOBILE MENU
========================= */

const mobileToggle =
    document.getElementById(
        "mobileToggle"
    );

const mobileMenu =
    document.getElementById(
        "mobileMenu"
    );


mobileToggle.addEventListener(
    "click",
    ()=>{

        mobileMenu.style.display =
            mobileMenu.style.display === "block"
            ? "none"
            : "block";

    }
);


/* =========================
   HERO BUTTONS
========================= */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        ()=>{

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


document
    .getElementById("exploreDeals")
    .addEventListener(
        "click",
        ()=>{

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior:"smooth"
                });

        }
    );


/* =========================
   DEAL
========================= */

document
    .getElementById("buyDeal")
    .addEventListener(
        "click",
        ()=>{

            cartCount++;

            cartCountEl.textContent =
                cartCount;

            alert(
                "MacBook Air M2 added to cart!"
            );

        }
    );


/* =========================
   COUNTDOWN
========================= */

(function(){

    const target =
        new Date(
            Date.now()
            +
            (24 * 60 + 36)
            * 60
            * 1000
        );


    function tick(){

        const diff =
            target - new Date();


        if(diff <= 0){

            document
                .getElementById("dealDays")
                .textContent = "0";

            return;

        }


        const days =
            Math.floor(
                diff /
                (24 * 3600 * 1000)
            );


        const hours =
            Math.floor(
                (
                    diff %
                    (24 * 3600 * 1000)
                )
                /
                (3600 * 1000)
            );


        const minutes =
            Math.floor(
                (
                    diff %
                    (3600 * 1000)
                )
                /
                (60 * 1000)
            );


        const seconds =
            Math.floor(
                (
                    diff %
                    (60 * 1000)
                )
                /
                1000
            );


        document
            .getElementById("dealDays")
            .textContent = days;

        document
            .getElementById("dealHours")
            .textContent =
                String(hours)
                .padStart(2,"0");

        document
            .getElementById("dealMinutes")
            .textContent =
                String(minutes)
                .padStart(2,"0");

        document
            .getElementById("dealSeconds")
            .textContent =
                String(seconds)
                .padStart(2,"0");

    }


    tick();

    setInterval(tick,1000);

})();


/* =========================
   NEWSLETTER
========================= */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        e => {

            e.preventDefault();

            const email =
                document
                .getElementById(
                    "newsletterEmail"
                )
                .value
                .trim();

            const msg =
                document
                .getElementById(
                    "newsletterMsg"
                );


            if(
                !email ||
                !email.includes("@")
            ){

                msg.textContent =
                    "Please enter a valid email.";

                return;

            }


            msg.textContent =
                "✓ Thanks! You are subscribed.";

            document
                .getElementById(
                    "newsletterEmail"
                )
                .value = "";

        }
    );


/* =========================
   UTILITY
========================= */

function escapeHtml(text){

    return String(text)
        .replace(
            /[&<>"']/g,
            s => ({

                "&":"&amp;",
                "<":"&lt;",
                ">":"&gt;",
                '"':"&quot;",
                "'":"&#39;"

            }[s])
        );

}


/* =========================
   INIT
========================= */

renderCategories();

renderProducts(PRODUCTS);

document
    .getElementById("year")
    .textContent =
        new Date().getFullYear();

</script>

</body>
</html>
