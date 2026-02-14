<script>
  let accepted = false;
  let noButtonStyle = {
    position: "relative",
    left: "0",
    top: "0",
    transform: "none",
  };

  function handleYes() {
    accepted = true;
    createFireworks();
  }

  function escapeNo() {
    const btn = document.querySelector(".no-button");

    // Add escape class so it positions relative to body
    btn.classList.add("escape");

    const btnWidth = btn.offsetWidth;
    const btnHeight = btn.offsetHeight;

    const maxX = window.innerWidth - btnWidth;
    const maxY = window.innerHeight - btnHeight;

    const randomX = Math.random() * maxX;
    const randomY = Math.random() * maxY;

    noButtonStyle = {
      position: "fixed",
      left: `${randomX}px`,
      top: `${randomY}px`,
      transform: "none",
    };
  }

  function createFireworks() {
    const container = document.querySelector(".fireworks-container");

    setInterval(() => {
      const firework = document.createElement("div");
      firework.className = "firework";
      firework.style.left = Math.random() * 100 + "%";
      firework.style.top = Math.random() * 100 + "%";
      container.appendChild(firework);

      setTimeout(() => firework.remove(), 1000);
    }, 200);
  }
</script>

<div class="fireworks-container"></div>

{#if !accepted}
  <div class="container">
    <div class="question-card">
      <h1 class="title">💕 Will you be my Valentine? 💕</h1>
      <div class="buttons-container">
        <button class="yes-button" on:click={handleYes}> Yes! 💖 </button>
        <button
          class="no-button"
          style="left: {noButtonStyle.left}; top: {noButtonStyle.top}; transform: {noButtonStyle.transform}; position: {noButtonStyle.position};"
          on:mouseenter={escapeNo}
          on:click={escapeNo}
        >
          No 😢
        </button>
      </div>
    </div>
  </div>
{:else}
  <div class="celebration">
    <div class="firework-gif-bg"></div>
    <div class="message">
      <h1 class="celebration-text">Good choice!</h1>
      <h2 class="love-text">I love youuuu my valentine!!!!</h2>
      <div class="hearts">
        <span class="heart">💕</span>
        <span class="heart">💖</span>
        <span class="heart">💗</span>
        <span class="heart">💓</span>
        <span class="heart">💝</span>
      </div>
    </div>
  </div>
{/if}

<style>
  .container {
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;

  background-image: url('./IMGs/BG.png'); 
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;

  position: relative;
  overflow: hidden;
}

  .question-card {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 60px 80px;
    border-radius: 30px;
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.15);
    text-align: center;
    position: relative;
    z-index: 10;
  }

  .title {
    font-size: 2.5rem;
    color: #ff6b9d;
    margin-bottom: 40px;
    font-weight: 700;
  }

  .buttons-container {
    display: flex;
    gap: 20px;
    justify-content: center;
    position: relative;
    min-height: 60px;
  }

  .yes-button,
  .no-button {
    padding: 15px 40px;
    font-size: 1.3rem;
    border: none;
    border-radius: 50px;
    cursor: pointer;
    font-weight: 600;
    transition: all 0.3s ease;
  }

  .yes-button {
    background: linear-gradient(135deg, #ff6b9d 0%, #ff8fab 100%);
    color: white;
    box-shadow: 0 5px 15px rgba(255, 107, 157, 0.4);
  }

  .yes-button:hover {
    transform: scale(1.1);
    box-shadow: 0 8px 25px rgba(255, 107, 157, 0.6);
  }

  .no-button {
    background: linear-gradient(135deg, #a8a8a8 0%, #c4c4c4 100%);
    color: white;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    transition: all 0.2s ease;
  }

  .celebration {
    width: 100vw;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg, #ff6b9d 0%, #c471ed 50%, #12c2e9 100%);
    position: relative;
    overflow: hidden;
  }

  .fireworks-container {
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    pointer-events: none;
  }

  :global(.firework) {
    position: absolute;
    width: 5px;
    height: 5px;
    border-radius: 50%;
    animation: explode 1s ease-out forwards;
  }

  @keyframes explode {
    0% {
      box-shadow:
        0 0 0 0 #ff6b9d,
        0 0 0 0 #feca57,
        0 0 0 0 #48dbfb,
        0 0 0 0 #ff9ff3,
        0 0 0 0 #54a0ff;
      opacity: 1;
    }
    100% {
      box-shadow:
        0 -80px 40px 10px #ff6b9d,
        80px -40px 40px 10px #feca57,
        80px 40px 40px 10px #48dbfb,
        0 80px 40px 10px #ff9ff3,
        -80px 40px 40px 10px #54a0ff,
        -80px -40px 40px 10px #ff6b9d,
        40px -70px 40px 10px #feca57,
        70px 40px 40px 10px #48dbfb,
        -40px 70px 40px 10px #ff9ff3,
        -70px -40px 40px 10px #54a0ff;
      opacity: 0;
    }
  }

  .message {
    text-align: center;
    z-index: 10;
    background: rgba(255, 255, 255, 0.9);
    padding: 60px 100px;
    border-radius: 30px;
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.2);
  }

  .celebration-text {
    font-size: 4rem;
    color: #ff6b9d;
    margin-bottom: 20px;
    font-weight: 800;
    animation: pulse 1.5s ease-in-out infinite;
  }

  .love-text {
    font-size: 3rem;
    color: #c471ed;
    margin-bottom: 30px;
    font-weight: 700;
    animation: pulse 1.5s ease-in-out infinite 0.2s;
  }

  @keyframes pulse {
    0%,
    100% {
      transform: scale(1);
    }
    50% {
      transform: scale(1.05);
    }
  }

  .hearts {
    display: flex;
    gap: 20px;
    justify-content: center;
    font-size: 3rem;
  }

  .heart {
    animation: float 2s ease-in-out infinite;
  }

  .heart:nth-child(1) {
    animation-delay: 0s;
  }
  .heart:nth-child(2) {
    animation-delay: 0.2s;
  }
  .heart:nth-child(3) {
    animation-delay: 0.4s;
  }
  .heart:nth-child(4) {
    animation-delay: 0.6s;
  }
  .heart:nth-child(5) {
    animation-delay: 0.8s;
  }

  @keyframes float {
    0%,
    100% {
      transform: translateY(0px);
    }
    50% {
      transform: translateY(-20px);
    }
  }
</style>
