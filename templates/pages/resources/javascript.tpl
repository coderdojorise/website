{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}

<div class="page-banner resources">
  <h1>Javascript</h1>
</div>

<div class="container">
  <p>Javascript is a cross-platform, object-oriented scripting language. It is the core language used in web browsers to provide additional functionality for web pages</p>

  <p>Javascript is what allows you to manipulate the HTML on a person page or respond to the users events such as mouse clicks, form input and page navigation.</p>
  <div class="row">
    <a href="https://jsbin.com" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Work on JS Bin
    </a>

    <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Javascript Documentation
    </a>
  </div>

  <h3>Getting Started</h3>

  <div class="row">
    <div class="col-md-5 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <!-- <img src="/assets/imgs/python-getting-started.png" class="img-responsive" alt="Getting Started Image"/> -->
      <p>See what happens when you press A or D?</p>
      <div id="play-area">
        <div id="circle-sprite"></div>
      </div>

    </div>
    <div class="col-md-7 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <h4>Lets do some loggin</h4>
      <p>Open up JS Bin</p>
      <p>Step 1: Make sure the Javascript and console tabs are open</p>
      <p>Step 2: Write the following code below:</p>
      <p class="code">console.log("Hello, World");</p>
      <p>The program should've copied what you said in the brackets.</p>
      <p>We can get Javascript to do some math and show the answer</p>
      <p class="code">console.log(4+5);</p>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-12">
      <h3>Coding Cards</h3>
    </div>
    <div class="col-xs-10 col-xs-offset-1">
      {include file="partials/resources_table.tpl" type="javascript"}
    </div>
  </div>
  <!-- <div class="row">
    <div class="col-xs-12">
      <h3>Mentor/s that are great at this</h3>
      <div class="row resource-mentors">
        <div class="col-xs-6 col-md-3 mentor">
          <img src="" class="img-responsive img-circle" data-toggle="popover" title="" data-content="" data-placement="right" />
          <h4>Person here</h4>
        </div>
      </div>
    </div>
  </div> -->
  <!-- <div class="row">
    <div class="col-xs-12">
      <h3>Partner/s who can support you with Javascript</h3>
      <div class="row partners">
        <div class="col-md-5 col-md-offset-0 col-xs-10 col-xs-offset-1 partner">
          <img src="http://placehold.it/700x300" class="img-responsive" alt="Getting Started Image"/>
        </div>
        <div class="col-md-7 col-md-offset-0 col-xs-10 col-xs-offset-1">
          <p>Mozilla Developer Network</p>
        </div>
      </div>
    </div>
  </div> -->
</div>

{literal}
<script type="text/javascript">
  $(function ()
  {
    $('[data-toggle="popover"]').popover()
  });

  $(document).keydown(function(e)
  {
    position = $('#circle-sprite').position();
    switch (e.which)
    {
      case 65:
        if (position.left > -50)
        {
          $('#circle-sprite').stop().animate({ left: '-=25' }); // left arrow key
        }
        break;
      case 68:
      if (position.left < 300)
      {
        $('#circle-sprite').stop().animate({ left: '+=25' }); // right arrow key
      }
      break;
    }
  });
</script>
{/literal}

{/block}