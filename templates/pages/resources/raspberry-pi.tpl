{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}

<div class="heading-banner-container heading-red">
  <div class="heading-banner">
    <h1>Raspberry Pi</h1>
  </div>
</div>

<div class="container">
  <p>The Raspberry Pi is a tiny and affordable computer that you can use to learn programming through fun, practical projects.</p>
  <p>Beginners should start with NOOBS - New Out Of the Box Software. </p>
  <p>NOOBS is an easy operating system installer which contains Raspbian. It also provides a selection of alternative operating systems which are then downloaded from the internet and installed.</p>
  <p>Raspbian comes pre-installed with plenty of software for education, programming and general use. It has Python, Scratch, Sonic Pi, Java, Mathematica and more.</p>

  <div class="row">
    <div class="col-sm-6">
      <a href="https://downloads.raspberrypi.org/NOOBS_latest" target="_blank" class="resource-button">Download NOOBS</a>
    </div>
    <div class="col-sm-6">
      <a href="https://downloads.raspberrypi.org/raspbian_latest" target="_blank" class="resource-button">Download Raspbian</a>
    </div>
  </div>

  <hr />
  <h3>Getting Started</h3>
  <div class="row">
    <div class="col-md-5 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <img src="/assets/imgs/getting-started/raspberry-pi-getting-started.png" class="img-responsive" alt="Getting Started Image"/>
    </div>
    <div class="col-md-7 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <p>In this resource you will make a cat meme generator. Using an image of your cat, you can create your own cat meme to show off to your friends. By creating a cat meme generator you will learn:</p>

      <p>How to write functions in JavaScript</p>

      <p>How to use JavaScript to manipulate data input by a user</p>

      <p>How to use oninput and onchange to make things happen live on a web page in response to user actions</p>

    </div>
  </div>

  <hr />
  <div class="row">
    <div class="col-xs-12">
      <h3>Coding Cards</h3>
    </div>
    <div class="col-xs-12">
      {include file="partials/resources_table.tpl" type="raspberrypi"}
    </div>
  </div>
</div>
{/block}