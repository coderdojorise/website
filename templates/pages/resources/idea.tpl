{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}

<div class="page-banner resources">
  <h1>iDEA</h1>
</div>

<div class="container">
  <p>iDEA is a national project that helps you badge your brilliance. Through our series of online challenges and events, you can win career-enhancing badges, unlock new opportunities and, ultimately, gain nationally recognised awards that help you stand out from the crowd.</p>

  <p>Discover skills you never knew you had and hone the ones you've already got by taking our online challenges. The challenges are split into four main categories, each with its own series of badges to be won - citizen, worker, maker and entrepreneur. As well as being fun, these badges will help you show off what you've learned and could, when the time comes, help you land the job you want.</p>

  <p>This is a fantastic initiative by The Duke of York to help young people in the UK and ROI to learn more about the world of coding and CoderDojo. Badges have been recently created by members of the CoderDojo community for the iDEA Inspiring Digital Enterprise Awards!</p>

  <div class="row">
    <a href="https://idea.org.uk/badge/random-coding" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Get "Random" Badge
    </a>
    <a href="https://idea.org.uk/badge/python" target="_blank" class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-1 resource-button">
      Get "Python" Badge
    </a>
  </div>

  <h3>Getting Started</h3>
  <div class="row">
    <div class="col-md-5 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <img src="/assets/imgs/idea-badges.png" class="img-responsive" alt="Getting Started Image"/>
    </div>
    <div class="col-md-7 col-md-offset-0 col-xs-10 col-xs-offset-1">
      <p>When you've taken enough badges in each of the categories, you can gain iDEA Bronze Award - a recognised symbol of your hard work, determination and skill. You'll then be able to take new challenges and badges that will unlock a Silver Award and then, the ultimate prize, the iDEA Gold Award</p>
    </div>
  </div>

  <div class="row">
    <div class="col-xs-12">
      <h3>Coding Cards</h3>
    </div>
    <div class="col-xs-12">
      {include file="partials/resources_table.tpl" type="idea"}
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

  <div class="row">
    <div class="col-xs-12">
      <h3>Supporters who can assist you with iDEA</h3>
      <div class="row partners">
        <div class="col-md-12 partner text-center">
          <img src="https://idea.org.uk/img/logos/iDEA-auth0.png" style="margin: 15px auto;" class="img-responsive" alt="iDEA Awards"/>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
$(function () {
$('[data-toggle="popover"]').popover()
})
</script>

{/block}
