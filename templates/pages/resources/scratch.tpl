{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}

<div class="page-banner resources">
  <h1>Scratch</h1>
</div>

<div class="container">
  <p>With Scratch, you can program your own interactive stories, games, and animations — and share your creations with others in the online community.</p>

  <p>Scratch helps young people learn to think creatively, reason systematically, and work collaboratively — essential skills for life in the 21st century.</p>

  <p>Scratch is a project of the Lifelong Kindergarten Group at the MIT Media Lab. It is provided free of charge.</p>

  <div class="row">
    <a href="http://scratch.mit.edu/" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Get Scratch Online
    </a>
    <a href="https://scratch.mit.edu/scratch2download/" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Get Scratch 2 Offline Editor
    </a>
  </div>

  <h3>Getting Started</h3>

  <div class="row">
    <div class="col-md-5 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <img src="/assets/imgs/getting-started/scratch-getting-started.png" class="img-responsive" alt="Getting Started Image"/>
    </div>
    <div class="col-md-7 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <p>The Beetle Game is a great game for first time ninjas that have never used Scratch before or those that we to refresh their skills</p>
    </div>
  </div>
  <div class="row">
    <div class="col-xs-12">
      <h3>Coding Cards</h3>
    </div>
    <div class="col-xs-10 col-xs-offset-1">
      {include file="partials/resources_table.tpl" type="scratch"}
    </div>
  </div>
  <!-- <div class="row">
    <div class="col-xs-12">
      <h3>Mentor/s that are great at this</h3>
      <div class="row resource-mentors">
        <div class="col-xs-6 col-md-3 mentor">
          <img src="http://placehold.it/350x350" class="img-responsive img-circle" data-toggle="popover" title="Matt Hart" data-content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum dictum nisi, vel dictum lacus efficitur nec. Cras sit amet sem lacus. Phasellus sed porta mi." data-placement="right" />
          <h4>Jane Doe</h4>
        </div>
      </div>
    </div>
  </div> -->
  <!-- <div class="row">
    <div class="col-xs-12">
      <h3>Partner/s who can support you with Scratch</h3>
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

<script type="text/javascript">
  $(function ()
  {
    $('[data-toggle="popover"]').popover()
  });
</script>
{/block}