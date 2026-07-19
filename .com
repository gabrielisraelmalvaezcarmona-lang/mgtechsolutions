<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>MG TECH SOLUTIONS | CCTV y Redes</title>
  <style>
    :root{
      --bg:#0b1220;
      --card:#121b2d;
      --blue:#1e88ff;
      --text:#f5f7fb;
      --muted:#a8b3c7;
    }
    *{box-sizing:border-box}
    body{
      margin:0;
      font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Arial,sans-serif;
      background:var(--bg);
      color:var(--text);
      line-height:1.6;
    }
    .container{max-width:1100px;margin:auto;padding:0 20px}
    header{
      position:sticky;top:0;
      background:rgba(11,18,32,.9);
      backdrop-filter:blur(8px);
      border-bottom:1px solid rgba(255,255,255,.06);
    }
    nav{
      display:flex;align-items:center;justify-content:space-between;
      padding:14px 0;
    }
    .logo{font-size:1.3rem;font-weight:800;letter-spacing:.5px}
    .logo span{color:var(--blue)}
    .btn{
      display:inline-block;
      background:var(--blue);
      color:#fff;
      padding:12px 18px;
      border-radius:12px;
      text-decoration:none;
      font-weight:700;
      transition:.2s;
    }
    .btn:hover{transform:translateY(-1px);filter:brightness(1.05)}
    .hero{
      padding:88px 0 64px;
      display:grid;
      grid-template-columns:1.2fr .8fr;
      gap:32px;
      align-items:center;
    }
    .hero h1{
      font-size:clamp(2rem,5vw,4rem);
      line-height:1.05;
      margin:0 0 18px;
    }
    .hero h1 span{color:var(--blue)}
    .hero p{
      color:var(--muted);
      font-size:1.1rem;
      max-width:640px;
    }
    .hero-card{
      background:linear-gradient(180deg,#16223a,#0f1728);
      border:1px solid rgba(255,255,255,.08);
      border-radius:24px;
      padding:28px;
      box-shadow:0 18px 40px rgba(0,0,0,.35);
    }
    .badge{
      display:inline-block;
      background:rgba(30,136,255,.14);
      color:#8fc0ff;
      padding:6px 12px;
      border-radius:999px;
      font-size:.85rem;
      margin-bottom:14px;
    }
    section{padding:28px 0}
    .section-title{
      font-size:1.8rem;
      margin:0 0 18px;
    }
    .grid{
      display:grid;
      grid-template-columns:repeat(auto-fit,minmax(230px,1fr));
      gap:18px;
    }
    .card{
      background:var(--card);
      border:1px solid rgba(255,255,255,.06);
      border-radius:18px;
      padding:22px;
    }
    .card h3{margin:0 0 8px}
    .card p{margin:0;color:var(--muted)}
    .contact{
      background:linear-gradient(180deg,#16223a,#0f1728);
      border:1px solid rgba(255,255,255,.08);
      border-radius:24px;
      padding:28px;
      display:grid;
      grid-template-columns:1fr auto;
      gap:20px;
      align-items:center;
    }
    footer{
      padding:28px 0 40px;
      color:var(--muted);
      text-align:center;
    }
    @media (max-width: 860px){
      .hero,.contact{grid-template-columns:1fr}
      nav{gap:14px}
    }
  </style>
</head>
<body>
  <header>
    <div class="container">
      <nav>
        <div class="logo">MG <span>TECH SOLUTIONS</span></div>
        <a class="btn" href="https://wa.me/5217221234567?text=Hola%20MG%20TECH%20SOLUTIONS,%20necesito%20soporte%20remoto" target="_blank">WhatsApp</a>
      </nav>
    </div>
  </header>

  <main class="container">
    <section class="hero">
      <div>
        <div class="badge">Soporte remoto en todo México</div>
        <h1>Soluciones profesionales en <span>CCTV, redes y soporte remoto</span></h1>
        <p>
          Configuración, diagnóstico y soporte para Dahua, Hikvision, Ubiquiti,
          Cambium, SmartPSS y DSS. Atención rápida por AnyDesk o TeamViewer.
        </p>
        <div style="margin-top:24px;display:flex;gap:12px;flex-wrap:wrap">
          <a class="btn" href="https://wa.me/5217221234567?text=Hola%20MG%20TECH%20SOLUTIONS,%20quiero%20una%20cotización" target="_blank">Solicitar cotización</a>
          <a class="btn" style="background:#24324d" href="#servicios">Ver servicios</a>
        </div>
      </div>

      <div class="hero-card">
        <h3 style="margin-top:0">Respuesta rápida</h3>
        <p style="color:var(--muted)">Tiempo promedio de atención: <strong style="color:#fff">15–30 min</strong></p>
        <hr style="border:none;border-top:1px solid rgba(255,255,255,.08);margin:18px 0">
        <p style="margin:0 0 10px">✔ Configuración Dahua / Hikvision</p>
        <p style="margin:0 0 10px">✔ SmartPSS y DSS</p>
        <p style="margin:0 0 10px">✔ Ubiquiti y Cambium</p>
        <p style="margin:0">✔ Diagnóstico remoto y asesoría</p>
      </div>
    </section>

    <section id="servicios">
      <h2 class="section-title">Servicios</h2>
      <div class="grid">
        <div class="card">
          <h3>Cámaras y NVR/DVR</h3>
          <p>Configuración, acceso remoto, DDNS, P2P y actualización de firmware.</p>
        </div>
        <div class="card">
          <h3>SmartPSS y DSS</h3>
          <p>Altas de dispositivos, usuarios, respaldos y solución de fallas.</p>
        </div>
        <div class="card">
          <h3>Ubiquiti y Cambium</h3>
          <p>Enlaces punto a punto, alineación, bridge, VLAN y optimización.</p>
        </div>
        <div class="card">
          <h3>Diagnóstico remoto</h3>
          <p>Soporte por AnyDesk o TeamViewer con atención en toda la República Mexicana.</p>
        </div>
      </div>
    </section>

    <section>
      <div class="contact">
        <div>
          <h2 class="section-title" style="margin-bottom:8px">¿Necesitas ayuda hoy?</h2>
          <p style="margin:0;color:var(--muted)">
            Envíanos una foto del error o una captura de pantalla y te responderemos por WhatsApp.
          </p>
        </div>
        <a class="btn" href="https://wa.me/5217221234567?text=Hola%20MG%20TECH%20SOLUTIONS,%20tengo%20un%20problema%20con%20mi%20equipo" target="_blank">Abrir WhatsApp</a>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      © 2026 MG TECH SOLUTIONS · Toluca, Estado de México · Soporte remoto en todo México
    </div>
  </footer>
</body>
</html>
