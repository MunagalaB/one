<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Jenkins CI/CD Dashboard</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Inter,Segoe UI,Arial,sans-serif;
    background:#f5f7fb;
    color:#172033;
}

/* ================= HEADER ================= */

header{
    height:72px;
    background:#ffffff;
    border-bottom:1px solid #e7eaf0;
    display:flex;
    align-items:center;
    position:sticky;
    top:0;
    z-index:100;
}

.header{
    width:92%;
    max-width:1400px;
    margin:auto;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    display:flex;
    align-items:center;
    gap:12px;
    font-size:21px;
    font-weight:800;
}

.logo-icon{
    width:40px;
    height:40px;
    border-radius:12px;
    background:#6366f1;
    color:white;
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:21px;
}

.logo span{
    color:#6366f1;
}

.nav{
    display:flex;
    gap:28px;
    align-items:center;
}

.nav a{
    text-decoration:none;
    color:#64748b;
    font-size:14px;
}

.nav a:hover{
    color:#6366f1;
}

.status{
    display:flex;
    align-items:center;
    gap:8px;
    padding:9px 15px;
    border-radius:30px;
    background:#ecfdf5;
    color:#15803d;
    font-size:13px;
    font-weight:600;
}

.status-dot{
    width:8px;
    height:8px;
    background:#22c55e;
    border-radius:50%;
}

/* ================= HERO ================= */

.hero{
    width:92%;
    max-width:1400px;
    margin:45px auto 30px;
}

.hero-top{
    display:flex;
    justify-content:space-between;
    align-items:flex-end;
    gap:20px;
}

.hero-label{
    color:#6366f1;
    font-size:13px;
    font-weight:700;
    text-transform:uppercase;
    letter-spacing:1.5px;
    margin-bottom:10px;
}

.hero h1{
    font-size:42px;
    line-height:1.15;
    margin-bottom:12px;
}

.hero h1 span{
    color:#6366f1;
}

.hero p{
    color:#64748b;
    max-width:650px;
    line-height:1.7;
}

.refresh{
    background:white;
    border:1px solid #e2e8f0;
    padding:12px 18px;
    border-radius:10px;
    cursor:pointer;
    font-weight:600;
}

.refresh:hover{
    background:#6366f1;
    color:white;
}

/* ================= STATS ================= */

.stats{
    width:92%;
    max-width:1400px;
    margin:30px auto;
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.stat-card{
    background:white;
    padding:22px;
    border-radius:16px;
    border:1px solid #e8ebf1;
    box-shadow:0 5px 20px rgba(15,23,42,.04);
}

.stat-top{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:18px;
}

.stat-icon{
    width:42px;
    height:42px;
    border-radius:11px;
    background:#eef2ff;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:20px;
}

.stat-card small{
    color:#94a3b8;
}

.stat-number{
    font-size:27px;
    font-weight:800;
}

.green{
    color:#16a34a;
}

.orange{
    color:#ea580c;
}

/* ================= MAIN ================= */

.main{
    width:92%;
    max-width:1400px;
    margin:30px auto;
}

/* ================= PIPELINE ================= */

.pipeline-card{
    background:white;
    border:1px solid #e8ebf1;
    border-radius:20px;
    padding:30px;
    box-shadow:0 8px 30px rgba(15,23,42,.05);
}

.section-title{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:30px;
}

.section-title h2{
    font-size:21px;
}

.section-title p{
    color:#94a3b8;
    font-size:13px;
    margin-top:5px;
}

.running{
    padding:8px 14px;
    background:#eef2ff;
    color:#4f46e5;
    border-radius:20px;
    font-size:12px;
    font-weight:700;
}

/* ================= FLOW ================= */

.flow{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:10px;
}

.node{
    width:150px;
    min-height:135px;
    border:1px solid #e5e7eb;
    border-radius:17px;
    background:#fff;
    display:flex;
    flex-direction:column;
    align-items:center;
    justify-content:center;
    text-align:center;
    transition:.3s;
    position:relative;
}

.node:hover{
    transform:translateY(-6px);
    box-shadow:0 15px 35px rgba(15,23,42,.10);
}

.node-icon{
    width:50px;
    height:50px;
    border-radius:14px;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:25px;
    background:#f1f5f9;
    margin-bottom:12px;
}

.node h3{
    font-size:15px;
    margin-bottom:5px;
}

.node p{
    font-size:11px;
    color:#94a3b8;
}

.success-node{
    border-color:#bbf7d0;
}

.success-node .node-icon{
    background:#dcfce7;
}

.arrow{
    display:flex;
    flex-direction:column;
    align-items:center;
    color:#6366f1;
}

.arrow-line{
    width:55px;
    height:2px;
    background:#c7d2fe;
}

.arrow-text{
    font-size:10px;
    margin-top:5px;
    color:#94a3b8;
}

/* ================= POLL SCM ================= */

.poll-section{
    margin-top:25px;
    background:#111827;
    color:white;
    border-radius:20px;
    padding:30px;
    overflow:hidden;
    position:relative;
}

.poll-section:before{
    content:"";
    position:absolute;
    width:250px;
    height:250px;
    background:#6366f1;
    opacity:.08;
    border-radius:50%;
    right:-80px;
    top:-100px;
}

.poll-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:25px;
}

.poll-header h2{
    font-size:20px;
}

.poll-header p{
    color:#94a3b8;
    font-size:13px;
    margin-top:5px;
}

.cron{
    background:#1e293b;
    border:1px solid #334155;
    padding:10px 15px;
    border-radius:9px;
    font-family:monospace;
    color:#a5b4fc;
}

/* Poll Flow */

.poll-flow{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:12px;
}

.poll-node{
    min-width:155px;
    padding:17px;
    border-radius:13px;
    background:#1e293b;
    border:1px solid #334155;
    text-align:center;
}

.poll-node .big{
    font-size:22px;
    margin-bottom:7px;
}

.poll-node strong{
    font-size:13px;
}

.poll-node small{
    display:block;
    color:#94a3b8;
    margin-top:5px;
}

.poll-arrow{
    color:#818cf8;
    font-size:22px;
}

/* ================= COMPARISON ================= */

.compare{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
    margin-top:25px;
}

.compare-card{
    background:white;
    border:1px solid #e8ebf1;
    border-radius:18px;
    padding:25px;
}

.compare-card h3{
    margin-bottom:10px;
}

.compare-card p{
    color:#64748b;
    font-size:13px;
    line-height:1.6;
}

.compare-icon{
    width:44px;
    height:44px;
    background:#eef2ff;
    border-radius:12px;
    display:flex;
    align-items:center;
    justify-content:center;
    margin-bottom:15px;
}

/* ================= BUILD HISTORY ================= */

.history{
    margin-top:25px;
    background:white;
    border:1px solid #e8ebf1;
    border-radius:18px;
    overflow:hidden;
}

.history-header{
    padding:22px 25px;
    border-bottom:1px solid #edf0f4;
}

.history-header h2{
    font-size:19px;
}

.history table{
    width:100%;
    border-collapse:collapse;
}

.history th,
.history td{
    padding:17px 25px;
    text-align:left;
    font-size:13px;
    border-bottom:1px solid #f1f3f6;
}

.history th{
    color:#94a3b8;
    font-size:11px;
    text-transform:uppercase;
}

.badge{
    padding:6px 11px;
    border-radius:20px;
    font-size:11px;
    font-weight:700;
}

.badge.success{
    background:#dcfce7;
    color:#15803d;
}

.badge.failed{
    background:#fee2e2;
    color:#dc2626;
}

.badge.running-badge{
    background:#fef3c7;
    color:#b45309;
}

/* ================= INTERVIEW ================= */

.interview{
    margin-top:25px;
    padding:25px;
    border-radius:18px;
    background:linear-gradient(120deg,#eef2ff,#f8fafc);
    border:1px solid #dbeafe;
}

.interview h2{
    font-size:18px;
    margin-bottom:12px;
}

.interview p{
    color:#475569;
    line-height:1.8;
    font-size:14px;
}

.code{
    background:#111827;
    color:#a5b4fc;
    padding:3px 8px;
    border-radius:5px;
    font-family:monospace;
}

/* ================= FOOTER ================= */

footer{
    margin-top:50px;
    background:#111827;
    color:#94a3b8;
    padding:25px;
    text-align:center;
    font-size:13px;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1000px){

    .stats{
        grid-template-columns:repeat(2,1fr);
    }

    .flow{
        flex-wrap:wrap;
    }

    .arrow{
        transform:rotate(90deg);
    }

    .poll-flow{
        flex-wrap:wrap;
    }
}

@media(max-width:700px){

    .nav{
        display:none;
    }

    .hero h1{
        font-size:30px;
    }

    .hero-top{
        display:block;
    }

    .refresh{
        margin-top:20px;
    }

    .stats{
        grid-template-columns:1fr;
    }

    .pipeline-card,
    .poll-section{
        padding:20px;
    }

    .compare{
        grid-template-columns:1fr;
    }

    .poll-header{
        display:block;
    }

    .cron{
        display:inline-block;
        margin-top:15px;
    }

    .history{
        overflow-x:auto;
    }

    .history table{
        min-width:650px;
    }
}
</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

<div class="header">

    <div class="logo">
        <div class="logo-icon">⚙</div>
        Dev<span>Ops</span>Flow
    </div>

    <nav class="nav">
        <a href="#">Dashboard</a>
        <a href="#pipeline">Pipeline</a>
        <a href="#poll">Poll SCM</a>
        <a href="#history">Build History</a>
    </nav>

    <div class="status">
        <div class="status-dot"></div>
        Jenkins Online
    </div>

</div>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

<div class="hero-top">

<div>

<div class="hero-label">
    CI / CD AUTOMATION
</div>

<h1>
    Jenkins <span>Pipeline</span><br>
    Dashboard
</h1>

<p>
    Monitor your source code, builds, testing and deployment
    through one simple CI/CD workflow.
</p>

</div>

<button class="refresh" onclick="refreshPipeline()">
    ↻ Refresh Pipeline
</button>

</div>

</section>


<!-- ================= STATS ================= -->

<section class="stats">

<div class="stat-card">

<div class="stat-top">
    <small>BUILD STATUS</small>
    <div class="stat-icon">🔨</div>
</div>

<div class="stat-number green">
    Successful
</div>

</div>


<div class="stat-card">

<div class="stat-top">
    <small>SUCCESS RATE</small>
    <div class="stat-icon">📈</div>
</div>

<div class="stat-number">
    96.8%
</div>

</div>


<div class="stat-card">

<div class="stat-top">
    <small>LAST BUILD</small>
    <div class="stat-icon">⏱</div>
</div>

<div class="stat-number">
    #248
</div>

</div>


<div class="stat-card">

<div class="stat-top">
    <small>BUILD TIME</small>
    <div class="stat-icon">⚡</div>
</div>

<div class="stat-number">
    2m 18s
</div>

</div>

</section>


<!-- ================= MAIN ================= -->

<main class="main">

<!-- PIPELINE -->

<section class="pipeline-card" id="pipeline">

<div class="section-title">

<div>
    <h2>🚀 CI/CD Pipeline</h2>
    <p>Latest deployment workflow</p>
</div>

<div class="running">
    ● Pipeline Active
</div>

</div>


<div class="flow">

<!-- Developer -->

<div class="node">

<div class="node-icon">👨‍💻</div>

<h3>Developer</h3>

<p>Write Code</p>

</div>


<div class="arrow">

<div class="arrow-line"></div>
<span class="arrow-text">git push</span>

</div>


<!-- GitHub -->

<div class="node">

<div class="node-icon">🐙</div>

<h3>GitHub</h3>

<p>Source Repository</p>

</div>


<div class="arrow">

<div class="arrow-line"></div>
<span class="arrow-text">webhook</span>

</div>


<!-- Jenkins -->

<div class="node success-node">

<div class="node-icon">🔧</div>

<h3>Jenkins</h3>

<p>CI Server</p>

</div>


<div class="arrow">

<div class="arrow-line"></div>
<span class="arrow-text">trigger</span>

</div>


<!-- Build -->

<div class="node success-node">

<div class="node-icon">🔨</div>

<h3>Build</h3>

<p>Compile & Package</p>

</div>


<div class="arrow">

<div class="arrow-line"></div>
<span class="arrow-text">success</span>

</div>


<!-- Test -->

<div class="node success-node">

<div class="node-icon">🧪</div>

<h3>Testing</h3>

<p>Automated Tests</p>

</div>


<div class="arrow">

<div class="arrow-line"></div>
<span class="arrow-text">pass</span>

</div>


<!-- Deploy -->

<div class="node success-node">

<div class="node-icon">🚀</div>

<h3>Deploy</h3>

<p>Production</p>

</div>

</div>

</section>


<!-- ================= POLL SCM ================= -->

<section class="poll-section" id="poll">

<div class="poll-header">

<div>

<h2>🔍 Poll SCM</h2>

<p>
Jenkins periodically checks the Git repository for new commits.
</p>

</div>

<div class="cron">
H/5 * * * *
</div>

</div>


<div class="poll-flow">

<div class="poll-node">

<div class="big">⚙️</div>

<strong>Jenkins</strong>

<small>Scheduler</small>

</div>


<div class="poll-arrow">→</div>


<div class="poll-node">

<div class="big">🔎</div>

<strong>Check Repository</strong>

<small>Every 5 minutes</small>

</div>


<div class="poll-arrow">→</div>


<div class="poll-node">

<div class="big">🐙</div>

<strong>GitHub</strong>

<small>Compare commits</small>

</div>


<div class="poll-arrow">→</div>


<div class="poll-node">

<div class="big">❓</div>

<strong>New Change?</strong>

<small>Yes / No</small>

</div>


<div class="poll-arrow">→</div>


<div class="poll-node">

<div class="big">🚀</div>

<strong>Trigger Build</strong>

<small>Start Pipeline</small>

</div>

</div>

</section>


<!-- ================= WEBHOOK VS POLL ================= -->

<section class="compare">

<div class="compare-card">

<div class="compare-icon">🔔</div>

<h3>Webhook</h3>

<p>
GitHub immediately sends a notification to Jenkins
when a new commit is pushed.
</p>

<br>

<strong>GitHub → Jenkins</strong>

</div>


<div class="compare-card">

<div class="compare-icon">🔍</div>

<h3>Poll SCM</h3>

<p>
Jenkins periodically checks GitHub to determine
whether new changes are available.
</p>

<br>

<strong>Jenkins → GitHub</strong>

</div>

</section>


<!-- ================= BUILD HISTORY ================= -->

<section class="history" id="history">

<div class="history-header">

<h2>📋 Build History</h2>

</div>

<table>

<thead>

<tr>
<th>Build</th>
<th>Branch</th>
<th>Commit</th>
<th>Duration</th>
<th>Status</th>
</tr>

</thead>

<tbody>

<tr>
<td>#248</td>
<td>main</td>
<td>a83f21c</td>
<td>2m 18s</td>
<td>
<span class="badge success">SUCCESS</span>
</td>
</tr>


<tr>
<td>#247</td>
<td>main</td>
<td>7bc912a</td>
<td>2m 04s</td>
<td>
<span class="badge success">SUCCESS</span>
</td>
</tr>


<tr>
<td>#246</td>
<td>develop</td>
<td>91af220</td>
<td>1m 52s</td>
<td>
<span class="badge failed">FAILED</span>
</td>
</tr>


<tr>
<td>#245</td>
<td>main</td>
<td>2cd891a</td>
<td>2m 31s</td>
<td>
<span class="badge success">SUCCESS</span>
</td>
</tr>


<tr>
<td>#244</td>
<td>develop</td>
<td>83ad921</td>
<td>2m 10s</td>
<td>
<span class="badge running-badge">RUNNING</span>
</td>
</tr>

</tbody>

</table>

</section>


<!-- ================= INTERVIEW ================= -->

<section class="interview">

<h2>🎯 Interview Ready</h2>

<p>

<strong>Poll SCM:</strong>
Jenkins periodically checks the source code repository
for new changes. If a new commit is detected, Jenkins
automatically triggers the build.

<br><br>

<strong>Example:</strong>

<span class="code">H/5 * * * *</span>

means Jenkins checks the repository approximately
every 5 minutes.

<br><br>

<strong>Easy way to remember:</strong>

Webhook = <b>GitHub tells Jenkins</b> 🔔

&nbsp;&nbsp; | &nbsp;&nbsp;

Poll SCM = <b>Jenkins asks GitHub</b> 🔍

</p>

</section>

</main>


<!-- ================= FOOTER ================= -->

<footer>

Jenkins CI/CD Dashboard • GitHub • Build • Test • Deploy

</footer>


<script>

function refreshPipeline(){

    const button = document.querySelector(".refresh");

    button.innerHTML = "⟳ Refreshing...";

    setTimeout(() => {

        button.innerHTML = "✓ Pipeline Updated";

        setTimeout(() => {
            button.innerHTML = "↻ Refresh Pipeline";
        },1500);

    },1000);

}

</script>

</body>
</html>
