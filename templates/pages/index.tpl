{extends file="include/master.tpl"}

{block name=head}{/block}

{block name=body}

<div class="jumbotron-home-container">
	<div class="jumbotron-home">
		<h1><span class="orange">Be Cool</span> and get involved</h1>
		<h2>CoderDojo is a volunteer led movement that aims to help everyone in improving their coding abilities from early as 4 years old all the way up to 400 years old - you can help.</h2>
	</div>
</div>

<div class="container homepage">

	<p class="home-intro">[WHAT TO PUT HERE?] lorem ipsum dolor sit amet....</p>

	<div class="home-icons-container">

		<div class="home-icons-section" onclick="window.location='/about-us'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/about-us.png" alt="About Us" />
			</div>
			<h2>About Us</h2>
			<p>Find out how we help young people learn to code</p>
			<a href="/about-us" class="home-button orange">Find out More</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/attend-a-dojo'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/attend-dojo.png" alt="Attend a Dojo in London" />
			</div>
			<h2>Attend a Dojo</h2>
			<p>Join 10,000 ninjas and mentors in London and come along to one of our dojos!</p>
			<a href="/attend-a-dojo" class="home-button green">Find out More</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/volunteer'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/volunteer.png" alt="Volunteer with CoderDojo in London" />
			</div>
			<h2>Volunteering Experience</h2>
			<p>Are you passionate about teaching or want to teach others how to code like you?</p>
			<a href="/volunteer" class="home-button blue">Join Us</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/resources'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/resources.png" alt="Free Resources by CoderDojo London" />
			</div>
			<h2>FREE Resources</h2>
			<p>Learn from our awesome resources database and create anything that comes to mind!</p>
			<a href="/resources" class="home-button red">Learn With Us</a>
		</div>

		<div class="home-icons-section" onclick="window.location='/supporters/idea'">
			<div class="icon">
				<img src="/assets/imgs/homepage-icons/castle.png" alt="CoderDojo London Supporters" />
			</div>
			<h2>iDEA Competition</h2>
			<p>Through a series of online challenges and events, unlock new opportunities and win career-enhancing badges.</p>
			<a href="/supporters/idea" class="home-button black">Start Collecting</a>
		</div>

	</div>

	<hr />

	<div class="home-full-container">
		<div class="home-full-image" style="background-image: url('/assets/imgs/photo-about-us.jpg')"></div>
		<div class="home-full-content purple" onclick="window.location='/supporters/idea'">
			<div class="home-icons-section">
				<div class="icon">
					<img src="/assets/imgs/homepage-icons/sponsored-trophy.png" />
				</div>
				<h2>Duke of York iDEA Competition</h2>
				<p>Be awarded by HRH The Duke of York, KG. Have the opportunity to be officially invited to the Palace. Show off your award to everyone!</p>
				<a href="/supporters/idea" class="home-button orange">Enter</a>
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
				<p>Please take in mind we are still in the process of polishing and making this the best website ever! You can send us your feedback by emailing <strong>dev@coderdojo.london</strong>.<br /><br />Thanks for visiting!</p>
				<a href="mailto:dev@coderdojo.london" class="home-button blue">Get in Touch</a>
			</div>
		</div>
		<div class="home-full-image" style="background-image: url('/assets/imgs/photo-about-us.jpg')"></div>
	</div>

	<hr />

	<div class="home-newsletter-signup">
		{include file="partials/newsletter_form.tpl" list="main" text="Sign up for our Newsletter"}
	</div>

</div>

{/block}