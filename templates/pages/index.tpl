{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}

<div class="jumbotron-home-container">
	<div class="jumbotron-home">
		<h1><span class="orange">Be Cool</span> and get involved</h1>
		<h2>CoderDojo is a volunteer led movement that aims to assist everyone in improving their coding abilities from early as 4 years old all the way up to 400 years old - you can make a difference.</h2>
	</div>
</div>

<div class="container homepage">

	<div class="home-icons-container">

		<div class="home-icons-section" onclick="window.location='/about-us'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/about-us.png" alt="About Us" />
			</div>
			<h2 class="cd-orange">About Us</h2>
			<p>Find out how we assist young adults discover the magic!</p>
			<a href="/about-us" class="home-button orange">Find out More</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/attend-a-dojo'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/attend-dojo.png" alt="Attend a Dojo in London" />
			</div>
			<h2 class="cd-green">Attend a Dojo</h2>
			<p>Be part of the magic and discover when the next London Dojo is happening.</p>
			<a href="/attend-a-dojo" class="home-button green">Find out More</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/volunteer'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/volunteer.png" alt="Volunteer with CoderDojo in London" />
			</div>
			<h2 class="cd-blue">Volunteering Experience</h2>
			<p>Get involved and Volunteer. Can't code? No problem, no experience necessary.</p>
			<a href="/volunteer" class="home-button blue">Join Us</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/resources'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/resources.png" alt="Free Resources by CoderDojo London" />
			</div>
			<h2 class="cd-red">FREE Resources</h2>
			<p>Discover and explore our awesome resource database and then create anything you can imagine!</p>
			<a href="/resources" class="home-button red">Learn With Us</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/supporters/idea'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/supporters.png" alt="CoderDojo London Supporters" />
			</div>
			<h2 class="cd-purple">Supporters</h2>
			<p>Amazing Supporters that have generously provided pro-bono services or discounts on their own products to us and to the wider CoderDojo community.</p>
			<a href="/supporters" class="home-button purple">Check Them Out</a>
		</div>

	</div>

	<hr />

	<div class="home-full-container">
		<div class="home-full-image" style="background-image: url('/assets/imgs/idea_homepage_banner.png')"></div>
		<div class="home-full-content purple" onclick="window.location='/supporters/idea'">
			<div class="home-icons-section">
				<div class="icon">
					<img src="/assets/imgs/homepage-icons/sponsored-trophy.png" />
				</div>
				<h2>Duke of York iDEA Competition</h2>
				<p>HRH The Duke of York, KG will be rewarding our ninja's in our recent Spring Competition. Discover more about this great initiative.</p>
				<a href="/supporters/idea" class="home-button orange">Find Out More</a>
			</div>
		</div>
	</div>

	<div class="home-full-container">
		<div class="home-full-content white">
			<div class="home-icons-section" style="cursor: default">
				<div class="icon">
					<img src="/assets/imgs/homepage-icons/chat.png" />
				</div>
				<h2>Hey There!</h2>
				<p>Please take in mind we are still in the process of polishing and making this the best website and community ever! We're always listening and learning - so please send us your feedback at <strong>feedback@coderdojorise.com</strong>.
					<br /><br />Thanks for visiting!</p>
					<a href="mailto:dev@coderdojorise.com" class="home-button blue">Get in Touch</a>
				</div>
			</div>
			<div class="home-full-image" style="background-image: url('/assets/imgs/herythere_homepage.png')"></div>
		</div>

		<hr />

		<div class="home-newsletter-signup">
			{include file="partials/newsletter_form.tpl" list="main" text="Sign up to be on the CoderDojo London List to ensure you're alerted for the next Dojo near you."}
		</div>

	</div>

	{/block}