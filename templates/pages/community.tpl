{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}
    <div class="heading-banner-container banner-inverse heading-black">
        <div class="heading-banner">
            <h1>Community</h1>
        </div>
    </div>
    <div class="container community">
        <h2><i class="fa fa-whatsapp"></i> WhatsApp Groups</h2>
        <div class="well">
            <p style="font-size:1.3em">We are working on creating some awesome Community Events for the wider CoderDojo
                network - though in the interim please join our WhatsApp groups to ensure we keep you immediately
                updated!</p>
        </div>
        <div class="row text-center">
            <div class="col-sm-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">For Mentors</h3>
                    </div>
                    <div class="panel-body">
                        <a href="https://bit.ly/CoderDojoMentor" target="_blank">
                            <img src="/assets/imgs/whatsapp_group_mentor.png" alt="WhatsApp Group for Mentors"
                                 class="img-responsive img-circle" style="margin: 0 auto"/>
                            <br/>
                            <span style="font-size:1.4em">https://bit.ly/CoderDojoMentor</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">For Parents</h3>
                    </div>
                    <div class="panel-body">
                        <a href="https://bit.ly/CoderDojoParent" target="_blank">
                            <img src="/assets/imgs/whatsapp_group_parent.png" alt="WhatsApp Group for Parents"
                                 class="img-responsive img-circle" style="margin: 0 auto"/>
                            <br/>
                            <span style="font-size:1.4em">https://bit.ly/CoderDojoParent</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <hr/>
        {include file="partials/newsletter_form.tpl" list="mentors" text="Sign up to the community newsletters"}
        <hr/>
        <h4 class="text-center">More coming Soon...</h4>
    </div>
{/block}