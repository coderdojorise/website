{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}
    <div class="heading-banner-container banner-inverse heading-black">
        <div class="heading-banner">
            <h1>Community</h1>
        </div>
    </div>
    <div class="container community">
        <h2>Community Events</h2>
        <div class="well">
            <p style="font-size:1.3em">We are working on creating some awesome Community Events for the wider CoderDojo
                network!</p>
        </div>
        <hr/>
        {include file="partials/newsletter_form.tpl" list="mentors" text="Sign up to the community newsletters"}
        <hr/>
        <h4 class="text-center">More coming Soon...</h4>
    </div>
{/block}
