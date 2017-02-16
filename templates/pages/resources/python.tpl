{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}

<div class="page-banner resources">
  <h1>Python</h1>
</div>

<div class="container">
  <p>Python is a high level programming language created by Guido van Rossum. It has a very simple and easy to learn syntax, which gives it high readability. This is accomplished by its lack of semicolons and curly braces that other languages use, such as C++ and Java.</p>

  <p>Python supports modules and packages which makes it very easy for code to be reused. It also makes it simple for others to improve the language by providing their own modules for others to use. There are thousands of modules on the <a href="https://pypi.python.org/pypi" target="_blank">Python Package Index</a> for you to use.</p>

  <p>Many things can be accomplished with Python such as making websites, creating your own games, creating your own web crawler and much much more.</p>

  <div class="row">
    <a href="https://www.python.org/downloads/" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Get Python 3
    </a>

    <a href="https://trinket.io/" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Explore on Trinket
    </a>
  </div>

  <h3>Getting Started</h3>

  <div class="row">
    <div class="col-md-5 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <img src="/assets/imgs/getting-started/python-getting-started.png" class="img-responsive" alt="Getting Started Image"/>
    </div>
    <div class="col-md-7 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <h4>Maybe have a play around on Trinket</h4>
      <h6>Or</h6>
      <h4>Install Python and try this</h4>
      <p>Lets do some very basic Python and get Python to copy us.</p>
      <p>Step 1: After installing Python, look for and open IDLE</p>
      <p>Step 2: Write the following code below:</p>
      <p class="code">print("Hello, World")</p>
      <p>The program should've copied what you said in the brackets.</p>
      <p>Try getting Python to copy more phrases!</p>

    </div>
  </div>
  <div class="row">
    <div class="col-xs-12">
      <h3>Coding Cards</h3>
    </div>
    <div class="col-xs-10 col-xs-offset-1">
      {include file="partials/resources_table.tpl" type="python"}
    </div>
  </div>
  <!-- <div class="row">
    <div class="col-xs-12">
      <h3>Mentor/s that are great at this</h3>
      <div class="row resource-mentors">
        <div class="col-xs-6 col-md-3 mentor">
          <img src="https://media.licdn.com/media/AAEAAQAAAAAAAATIAAAAJDZhNGIxMDZjLTM2NTMtNDgxYS04NGEyLWRiZWE2YmRiNTM3Mw.jpg" class="img-responsive img-circle" data-toggle="popover" title="Matt Hart" data-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum dictum nisi, vel dictum lacus efficitur nec. Cras sit amet sem lacus. Phasellus sed porta mi." data-placement="right" />
          <h4>Matthew Hart</h4>
        </div>
      </div>
    </div>
  </div> -->
  <!-- <div class="row">
    <div class="col-xs-12">
      <h3>Partner/s who can support you with Python</h3>
      <div class="row partners">
        <div class="col-md-5 col-md-offset-0 col-xs-10 col-xs-offset-1 partner">
          <img src="http://placehold.it/700x300" class="img-responsive" alt="Getting Started Image"/>
        </div>
        <div class="col-md-7 col-md-offset-0 col-xs-10 col-xs-offset-1">
          <p>Trinket</p>
        </div>
      </div>
    </div>
  </div> -->
</div>
<script>
$(function () {
$('[data-toggle="popover"]').popover()
})
</script>

{/block}
