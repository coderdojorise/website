{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}
    <div class="heading-banner-container heading-green">
        <div class="heading-banner">
            <h1>Attend a Dojo</h1>
        </div>
    </div>
    <div class="container attend">

        {$events_tbl}
        {include file="partials/newsletter_form.tpl" list="main" text="Sign up to receive an email for upcoming London Dojos"}

        <h2 title="Frequently Asked Questions about CoderDojo">FAQs</h2>

        <div class="row">
            <div class="col-sm-9">
                <h3 class="faq-title">What is my child going to learn?</h3>
                <p>What does your child want to learn? The philosophy of CoderDojo is peer learning and self-taught.
                    Almost every Dojo uses Scratch, though there will also be other languages to explore. If there's a
                    language your child wants to learn more about, just let us know and we'll make it happen.</p>
                <p>We do not follow the National curriculum, nor do we provide homework. Everyone seems to learn best
                    when they can play and have fun.</p>
            </div>
            <div class="col-sm-3 hidden-xs">
                <div class="icon-container green-icon"><i class="fa fa-info"></i></div>
            </div>
        </div>

        <hr/>
        <div class="row">
            <div class="col-sm-3 hidden-xs">
                <div class="icon-container green-icon"><i class="fa fa-laptop"></i></div>
            </div>
            <div class="col-sm-9 text-right">
                <h3 class="faq-title">What does my child need to bring?</h3>
                <p>Laptop is a requirement for most Dojos. Not an iPad or a tablet. Some Dojo's will have special Dojos
                    where they'll provide all the required equipment, though most of the time your child will code on
                    their own laptop. Please do contact if you'd like to discuss this point.</p>
            </div>
        </div>

        <hr/>
        <div class="row">
            <div class="col-sm-9">
                <h3 class="faq-title">Do I need to register?</h3>
                <p>Registrations are a must! A parent and child ticket must be booked to attend.</p>
                <p>We will never ask for your child's name on the booking form, we just need to know how many children
                    you will be bringing.</p>
                <p>Most registrations will be via Eventbrite.</p>
            </div>
            <div class="col-sm-3 hidden-xs">
                <div class="icon-container green-icon"><i class="fa fa-ticket"></i></div>
            </div>
        </div>

        <hr/>
        <div class="row">
            <div class="col-sm-3 hidden-xs">
                <div class="icon-container green-icon"><i class="fa fa-times-circle"></i></div>
            </div>
            <div class="col-sm-9 text-right">
                <h3 class="faq-title">What if I have registered but cannot make it after all?</h3>
                <p>Places are limited, so if you register and do not show up, that is a real pity for someone else who
                    wanted to come but didn't have a spot.</p>
                <p>If you have to cancel please let us know in time by emailing your local Dojo or, better yet, by
                    canceling your ordered ticket directly in Eventbrite. That way, someone on the waiting list might
                    still be able to join.</p>
            </div>
        </div>

        <hr/>
        <div class="row">
            <div class="col-sm-9">
                <h3 class="faq-title">Do parents need to stay during the Dojo?</h3>
                <p>Yes, if your child's age is below 14. Even if your child is older, we always promote parents being
                    around to be involved.</p>
            </div>
            <div class="col-sm-3 hidden-xs">
                <div class="icon-container green-icon"><i class="fa fa-users"></i></div>
            </div>
        </div>

        <hr/>
        <div class="row">
            <div class="col-sm-3 hidden-xs">
                <div class="icon-container green-icon">
				<span class="fa-stack fa-lg">
					<i class="fa fa-money fa-stack-2x"></i>
					<i class="fa fa-times fa-stack-1x" style="color:#EA4737;opacity:0.8"></i>
				</span>
                </div>
            </div>
            <div class="col-sm-9 text-right">
                <h3 class="faq-title">Does it cost anything?</h3>
                <p>100% free and always will be. The dojo is run by committed, fun-loving volunteers and supported by corporate
                    partners. Want to help? <a href="volunteer">Click here</a>.</p>
            </div>
        </div>

    </div>
{/block}
