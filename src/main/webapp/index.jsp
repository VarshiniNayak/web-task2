<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="shortcut icon" href="https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico" type="image/x-icon" />
  <link rel="stylesheet" href="netflix.css" />
<style>
/* Color ---------------------------------------------- */

:root {
    --color-invalid: #e50914;
    --color-invalid-hover: #f11722;
    --color-valid: rgb(13, 150, 65);
    --color-forgot: #0071eb;
    --color-forgot-hover: #2786ec;
    --color-input: #333333;
    --color-bg-2: rgba(0, 0, 0, 0.4);
    --header-box-shadow: inset 10rem 10rem 24rem rgba(0, 0, 0, 0.5),
      inset -10rem -10rem 24rem rgba(0, 0, 0, 0.5);
  }
  
  /* Box Sizing ----------------------------------------- */
  
  *,
  *::before,
  *::after {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }
  
  /* Text, Tag Style ------------------------------------ */
  
  h1 {
    font-size: 2rem;
    font-weight: 500;
    line-height: 1.3;
  }
  h2 {
    font-size: 0.84rem;
    font-weight: 300;
    line-height: 1.3;
    text-transform: uppercase;
  }
  a,
  li {
    text-decoration: none;
    list-style: none;
  }
  p,
  span {
    font-weight: 300;
  }
  img,
  video {
    max-width: 100%;
  }
  body {
    font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
      Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
    background-color: black;
    color: white;
  }
  
  /* Text Style ----------------------------------------- */
  
  .text-white-1 {
    color: white;
    font-weight: 500;
  }
  .text-blue {
    font-size: 0.9rem;
    color: var(--color-forgot);
  }
  .text-xl {
    font-size: clamp(2rem, 10.4vw, 3.2rem);
    font-weight: 600;
  }
  .text-lg {
    font-size: clamp(1.2rem, 8.8vw, 2.8rem);
    font-weight: 600;
  }
  .text-md {
    font-size: clamp(0.8rem, 6vw, 1.6rem);
    font-weight: 400;
    line-height: 1.3;
  }
  .text-md-1 {
    font-size: clamp(0.8rem, 4.8vw, 1.6rem);
    font-weight: 300;
    line-height: 1.3;
  }
  .text-sm {
    font-size: clamp(0.6rem, 4.5vw, 1.2rem);
    font-weight: 300;
    line-height: 1.5;
  }
  .text-terms {
    font-size: 0.8rem;
    color: grey;
  }
  .text-error {
    position: absolute;
    left: 0.1rem;
    font-size: 0.8rem;
    font-weight: 500;
    color: orange;
    display: none;
  }
  .text-center {
    text-align: center;
  }
  .text-underline {
    cursor: pointer;
  }
  .text-underline:hover {
    text-decoration: underline;
  }
  
  /* Grid ----------------------------------------------- */
  
  .border-gray {
    border-bottom: 0.4rem solid var(--color-input);
  }
  .grid-reversed {
    order: 2;
  }
  
  /* Spacing -------------------------------------------- */
  
  .margin-top {
    margin-top: 1rem;
  }
  .margin-top-1 {
    margin-top: 1.4rem;
  }
  .margin-bottom-1 {
    margin-bottom: 1.4rem;
  }
  .margin-inline {
    margin-inline: auto;
  }
  .margin-left {
    margin-left: 0.6rem;
  }
  
  /* Button -------------------------------------------- */
  
  button,
  .btn {
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    cursor: pointer;
    font-size: 1.1em;
    font-family: inherit;
    font-weight: inherit;
    padding: 1.1em;
    border: none;
    border-radius: 4px;
    color: white;
    height: 3.2rem;
    max-width: 100%;
  }
  .btn-primary {
    font-size: 1.2em;
    background: var(--color-invalid);
    margin-inline: auto;
  }
  .btn-signin {
    height: 2.2rem;
    padding: 0.8em;
    background-color: var(--color-invalid);
    font-size: 1em;
  }
  .btn-primary:hover,
  .btn-signin:hover {
    background-color: var(--color-invalid-hover);
  }
  
  /* Logo ---------------------------------------------- */
  
  .logo {
    margin-top: 0.4rem;
    width: 8rem;
  }
  
  /* Nav ----------------------------------------------- */
  
  .nav {
    position: relative;
    display: flex;
    align-items: center;
    width: 100%;
    padding: 1.4rem 3.2rem;
    z-index: 2;
  }
  .nav-4 {
    position: absolute;
    justify-content: space-between;
  }
  .right {
    display: flex;
    align-items: center;
    gap: 0.8rem;
  }
  
  /* Input Field & State-------------------------------- */
  
  ::placeholder {
    color: transparent;
  }
  ::-ms-input-placeholder {
    color: transparent;
  }
  label {
    color: white;
    transition: top 200ms ease-in, left 200ms ease-in, font-size 200ms ease-in;
  }
  .input {
    position: relative;
  }
  .input-field {
    border: none;
    outline: none;
    font-size: 1em;
    border-radius: 4px;
    padding-inline: 1.36em;
    padding-block: 1.8em 1em;
    height: 4rem;
    width: 100%;
  }
  .input-label {
    display: grid;
    position: absolute;
    top: 1.36rem;
    left: 1.36rem;
    color: gray;
    transition: top 200ms ease-in, left 200ms ease-in, font-size 200ms ease-in;
  }
  .input-field:focus ~ .label-size,
  .input-field:not(:placeholder-shown) ~ .label-size {
    top: 0.6rem;
    left: 1.36rem;
    font-size: 0.9em;
  }
  .input-field:valid {
    border: 2px solid var(--color-valid);
  }
  .input-field:not(:placeholder-shown):invalid {
    border-bottom: 3px solid orange;
  }
  .input-field:not(:placeholder-shown):invalid ~ .text-error {
    display: block;
  }
  
  /* Header Container ------------------------------------------------------ */
  
  .header {
    position: relative;
    display: grid;
    justify-content: center;
    align-items: center;
    min-height: 96vh;
    background: url("https://assets.nflxext.com/ffe/siteui/vlv3/5e48e7b6-350d-48d9-96d6-de8ca173c89f/26c35d01-db23-4f28-b2eb-42490d7f4002/ID-id-20221219-popsignuptwoweeks-perspective_alpha_website_large.jpg")
      center/cover no-repeat;
    overflow: hidden;
  }
  .header::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: var(--color-bg-2);
    box-shadow: var(--header-box-shadow);
    border-bottom: 0.4rem solid var(--color-input);
    z-index: 1;
  }
  .header-container {
    max-width: 42rem;
    padding-block: 4rem;
    padding-inline: 4%;
    z-index: 2;
  }
  
  /* Features ------------------------------------------ */
  
  .features {
    position: relative;
    display: grid;
    grid-template-columns: 1fr 1fr;
    align-items: center;
    gap: clamp(0.4rem, 1vh, 2rem);
    padding-block: 4rem;
    padding-inline: 6%;
    max-width: 80rem;
    min-height: 60vh;
  }
  .text-area {
    display: grid;
    gap: 1rem;
  }
  .img-area {
    position: relative;
    overflow: hidden;
  }
  .grid-reversed {
    order: 2;
  }
  .video-1 {
    pointer-events: none;
    position: absolute;
    height: 74%;
    width: 73.2%;
    top: 11%;
    left: 13%;
    z-index: -1;
  }
  .video-2 {
    pointer-events: none;
    position: absolute;
    height: 78%;
    width: 63%;
    top: -6%;
    left: 18%;
    z-index: -1;
  }
  .download {
    position: absolute;
    bottom: 7%;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    align-items: center;
    gap: 1.2rem;
    padding: 0.6rem;
    border: 1px solid gray;
    border-radius: 0.6rem;
    background: black;
    width: 68%;
  }
  .download :first-child {
    width: 18%;
  }
  .download :last-child {
    width: 14%;
  }
  
  /* F.A.Q --------------------------------------------- */
  
  .faq {
    display: grid;
    gap: 2rem;
    padding-block: 4rem;
    padding-inline: 3%;
  }
  .faq-accordion {
    display: grid;
    gap: 0.4rem;
    max-width: 50rem;
  }
  .faq-input {
    display: none;
  }
  .faq-label {
    cursor: pointer;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-block: 1rem;
    padding-inline: 3%;
    background-color: var(--color-input);
    border-bottom: 4px solid black;
  }
  .faq-content {
    background-color: var(--color-input);
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s ease-in, padding 0.3s ease-in;
  }
  .faq-content p {
    margin: 2rem;
  }
  .faq-input:checked ~ .faq-content {
    max-height: 60rem;
    transition: max-height 0.3s ease-in;
  }
  .faq-input:checked ~ .faq-label i {
    transform: rotate(45deg);
    transition: max-height 0.3s ease-in, padding 0.3s ease-in;
  }
  .membership .input {
    max-width: 40rem;
    margin: 0 auto;
  }
  
  /* Footer -------------------------------------------- */
  
  .footer {
    padding: 3rem;
  }
  .footer-container {
    display: grid;
    max-width: 50rem;
    gap: 1.6rem;
    color: gray;
  }
  .footer-black {
    background-color: black;
  }
  .links {
    display: flex;
    line-height: 1.7;
    justify-content: space-between;
    gap: 2rem;
  }
  
  /* Language Option ----------------------------------- */
  
  .language {
    position: relative;
  }
  .language-select {
    appearance: none;
    cursor: pointer;
    height: 2.4rem;
    max-width: 12rem;
    border-radius: 0.2rem;
    padding-inline: 2.4rem;
    outline: none;
    color: gray;
    background-color: transparent;
  }
  .language-icon {
    position: absolute;
    height: 100%;
    top: 0;
    font-size: 0.9rem;
    display: flex;
    align-items: center;
  }
  .globe {
    position: absolute;
    left: 1rem;
  }
  .chevron {
    position: absolute;
    left: 10rem;
  }
  
  .top {
    height: 2.2rem;
    padding-inline: 0.6rem;
    width: 3.6rem;
    color: white;
    font-weight: 600;
    border: 1.8px solid white;
  }
  .top-icon {
    color: white;
  }
  .chevron-top {
    position: absolute;
    left: 2.4rem;
    font-size: 0.6rem;
    font-weight: 600;
  }
  
  /* Media Query --------------------------------------- */
  
  /* Nav Media Query */
  
  @media (320px <= width <= 640px) {
    .nav {
      padding-inline: 1rem;
    }
    .logo {
      width: 6rem;
    }
  }
  
  /* Body Media Query */
  
  @media (768px <= width <= 940px) {
    .header {
      min-height: 72vh;
    }
  }
  @media (320px <= width <= 940px) {
    .features {
      grid-template-columns: 1fr;
      text-align: center;
    }
    .grid-reversed {
      order: 0;
    }
    .img-area .devices {
      width: 86%;
    }
    .video-2 {
      height: 80%;
      width: 53.3%;
      left: 50%;
      transform: translateX(-50%);
    }
    .download {
      width: 50%;
    }
    .faq-content p {
      margin: 1rem;
    }
  }
  @media (450px <= width <= 640px) {
    .download {
      width: 70%;
    }
  }
  @media (350px <= width <= 520px) {
    .header {
      min-height: 93vh;
    }
    .down {
      display: block;
    }
    .download {
      width: 80%;
    }
  }
  @media (320px <= width <= 350px) {
    .header {
      min-height: 80vh;
    }
    .down {
      display: block;
    }
    .download {
      width: 86%;
      padding: 0.2rem;
    }
  }
  
  /* Footer Media Query */
  
  @media (320px <= width <= 640px) {
    .footer {
      padding-inline: 2rem;
      border-top: 2px solid gray;
    }
    .links {
      display: grid;
      grid-template-columns: 1fr 1fr;
    }
  }
  @media (320px <= width <= 450px) {
    .links {
      display: block;
      line-height: 2;
    }
  }
  
  @media (min-width: 2048px) {
    .header-container,
    .nav, section, footer {
      zoom: 2;
    }
  }
  
</style>

  <title>Creating a Netflix Landing Page that's Impossible to Ignore: HTML, CSS, Flexbox, and Grid Mastery</title>
</head>

<body>
  <nav class="nav nav-4">
    <a href="">
      <img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Logonetflix.png/1600px-Logonetflix.png" alt="" />
    </a>

    <div class="right">
      <div class="language">
        <select class="language-select top" onchange="location=this.value;">
          <option value="" selected>EN</option>
          <option value="">ID</option>
        </select>
        <div class="language-icon top-icon">
          <i class="fas fa-chevron-down chevron chevron-top"></i>
        </div>
      </div>
      <a href="https://cdpn.io/pen/debug/ExpmRNy?authentication_hash=YvkgOLZyKVpk" class="btn btn-signin">Sign In</a>
    </div>
  </nav>

  <header class="header">
    <div class="header-container margin-inline margin-top-1">
      <p class="text-white text-xl margin-bottom-1 text-center">Unlimited <span class="text-xl down">movies, TV shows, and more.</span></p>
      <p class="text-white text-md text-center">Watch anywhere. Cancel anytime.</p>
      <p class="text-white text-sm margin-top text-center">Ready to watch? Enter your email to create or restart your membership.</p>
      <form action="" class="input margin-top-1">
        <input class="input-field" type="email" id="email" placeholder="email" pattern="[A-Za-z0-9._-]+@[A-Za-z]+\.[a-z]{2,}$" autocomplete="off" required />

        <label for="email" class="input-label label-size">Email address</label>

        <p class="text-error">Please enter a valid email address</p>

        <button type="submit" class="btn-primary margin-top-1">
          Get Started
          <i class="fas fa-chevron-right margin-left"></i>
        </button>
      </form>
    </div>
  </header>

  <section class="text-white border-gray">
    <div class="features margin-inline">
      <div class="text-area">
        <p class="text-lg">Enjoy on your TV.</p>
        <p class="text-md-1">Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.</p>
      </div>
      <div class="img-area">
        <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/tv.png" alt="" />
        <video class="video-1" autoplay playsinline loop>
          <source src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-tv-0819.m4v" type="video/mp4" />
        </video>
      </div>
    </div>
  </section>

  <section class="text-white border-gray">
    <div class="features margin-inline">
      <div class="text-area grid-reversed">
        <p class="text-lg">Download your shows to watch offline.</p>
        <p class="text-md-1">Save your favorites easily and always have something to watch.</p>
      </div>
      <div class="img-area">
        <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/mobile-0819.jpg" alt="" />
        <div class="download">
          <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/boxshot.png" alt="" />
          <div class="download-text">
            <span class="text-white-1">Stranger Things</span>
            <span class="text-blue">Downloading...</span>
          </div>
          <img src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/download-icon.gif" alt="" />
        </div>
      </div>
    </div>
  </section>

  <section class="text-white border-gray">
    <div class="features margin-inline">
      <div class="text-area">
        <p class="text-lg">Watch everywhere.</p>
        <p class="text-md-1">Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.</p>
      </div>
      <div class="img-area">
        <img class="devices" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/device-pile-id.png" alt="" />
        <video class="video-2" autoplay playsinline loop>
          <source src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-devices-id.m4v" type="video/mp4" />
        </video>
      </div>
    </div>
  </section>

  <section class="text-white border-gray">
    <div class="features margin-inline">
      <div class="text-area grid-reversed">
        <p class="text-lg">Create profiles for kids.</p>
        <p class="text-md-1">Send kids on adventures with their favorite characters in a space made just for them—free with your membership.</p>
      </div>
      <div class="img-area">
        <img src="https://occ-0-6707-64.1.nflxso.net/dnm/api/v6/19OhWN2dO19C9txTON9tvTFtefw/AAAABfpnX3dbgjZ-Je8Ax3xn0kXehZm_5L6-xe6YSTq_ucht9TI5jwDMqusWZKNYT8DfGudD0_wWVVTFLiN2_kaQJumz2iivUWbIbAtF.png?r=11f" alt="" />
      </div>
    </div>
  </section>

  <section class="faq text-white border-gray">
    <p class="text-lg text-center">Frequently Asked Question</p>
    <ul class="faq-accordion margin-inline text-md">
      <li>
        <input class="faq-input" type="radio" name="faq" id="faq-1" />
        <label class="faq-label" for="faq-1">What is Netflix?<i class="fa fa-add"></i> </label>
        <div class="faq-content">
          <p>
            Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries, and more on thousands of internet-connected devices. <br />
            <br />
            You can watch as much as you want, whenever you want without a single commercial – all for one low monthly price. There's always something new to discover and new TV shows and movies are added every week!
          </p>
        </div>
      </li>

      <li>
        <input class="faq-input" type="radio" name="faq" id="faq-2" />
        <label class="faq-label" for="faq-2">How much does Netflix cost?<i class="fa fa-add"></i></label>
        <div class="faq-content">
          <p>Watch Netflix on your smartphone, tablet, Smart TV, laptop, or streaming device, all for one fixed monthly fee. Plans range from IDR54,000 to IDR186,000 a month. No extra costs, no contracts.</p>
        </div>
      </li>

      <li>
        <input class="faq-input" type="radio" name="faq" id="faq-3" />
        <label class="faq-label" for="faq-3">Where can I watch?<i class="fa fa-add"></i></label>
        <div class="faq-content">
          <p>
            Watch anywhere, anytime. Sign in with your Netflix account to watch instantly on the web at netflix.com from your personal computer or on any internet-connected device that offers the Netflix app, including smart TVs,
            smartphones, tablets, streaming media players and game consoles. <br />
            <br />
            You can also download your favorite shows with the iOS, Android, or Windows 10 app. Use downloads to watch while you're on the go and without an internet connection. Take Netflix with you anywhere.
          </p>
        </div>
      </li>

      <li>
        <input class="faq-input" type="radio" name="faq" id="faq-4" />
        <label class="faq-label" for="faq-4">How do I cancel?<i class="fa fa-add"></i></label>
        <div class="faq-content">
          <p>Netflix is flexible. There are no pesky contracts and no commitments. You can easily cancel your account online in two clicks. There are no cancellation fees – start or stop your account anytime.</p>
        </div>
      </li>

      <li>
        <input class="faq-input" type="radio" name="faq" id="faq-5" />
        <label class="faq-label" for="faq-5">What can I watch on Netflix?<i class="fa fa-add"></i></label>
        <div class="faq-content">
          <p>Netflix has an extensive library of feature films, documentaries, TV shows, anime, award-winning Netflix originals, and more. Watch as much as you want, anytime you want.</p>
        </div>
      </li>

      <li>
        <input class="faq-input" type="radio" name="faq" id="faq-6" />
        <label class="faq-label" for="faq-6">Is Netflix good for kids?<i class="fa fa-add"></i></label>
        <div class="faq-content">
          <p>
            The Netflix Kids experience is included in your membership to give parents control while kids enjoy family-friendly TV shows and movies in their own space. <br />
            <br />
            Kids profiles come with PIN-protected parental controls that let you restrict the maturity rating of content kids can watch and block specific titles you don’t want kids to see.
          </p>
        </div>
      </li>
    </ul>

    <div class="membership">
      <p class="text-md text-center margin-bottom-1 margin-top">Ready to watch? Enter your email to create or restart your membership.</p>
      <form action="" class="input">
        <input class="input-field" type="email" id="email" placeholder="email" pattern="[A-Za-z0-9._-]+@[A-Za-z]+\.[a-z]{2,}$" autocomplete="off" required />

        <label for="email" class="input-label label-size">Email address</label>

        <p class="text-error">Please enter a valid email or phone number.</p>

        <button type="submit" class="btn-primary margin-top-1">
          Get Started
          <i class="fas fa-chevron-right margin-left"></i>
        </button>
      </form>
    </div>
  </section>

  <footer class="footer footer-black">
    <div class="footer-container margin-inline">
      <p>
        Questions? <br />
        Call 007-803-321-2130
      </p>
      <div class="links">
        <ul class="">
          <li><a class="text-terms text-underline" href="">FAQ</a></li>
          <li><a class="text-terms text-underline" href="">Cookie Preferences</a></li>
        </ul>

        <ul>
          <li><a class="text-terms text-underline" href="">Help Center</a></li>
          <li><a class="text-terms text-underline" href="">Corporate Information</a></li>
        </ul>

        <a class="text-terms text-underline" href="">Terms of Use</a>

        <a class="text-terms text-underline" href="">Privacy</a>
      </div>

      <div class="language">
        <select class="language-select" onchange="location=this.value;">
          <option value="" selected>English</option>
          <option value="">Bahasa Indonesia</option>
        </select>
        <div class="language-icon">
          <i class="fas fa-globe globe"></i>
          <i class="fas fa-chevron-down chevron"></i>
        </div>
      </div>
    </div>
  </footer>
</body>

</html>
