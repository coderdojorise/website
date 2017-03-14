{extends file="include/master.tpl"}

{block name=head}
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css" />
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
{/block}

{block name=body}

<div class="heading-banner-container heading-red">
	<div class="heading-banner">
		<h1>Scratch</h1>
	</div>
</div>

<div class="container">
	<p>With Scratch, you can program your own interactive stories, games, and animations - and share your creations with others in the online community.</p>

	<p>Scratch helps young people learn to think creatively, reason systematically, and work collaboratively - essential skills for life in the 21st century.</p>

	<p>Scratch is a project of the Lifelong Kindergarten Group at the MIT Media Lab and is provided free of charge.</p>

	<hr />
	<div class="row">
		<div class="col-sm-6">
			<a href="https://scratch.mit.edu/" target="_blank" class="resource-button">
				Get Scratch Online
			</a>
		</div>
		<div class="col-sm-6">
			<a href="https://scratch.mit.edu/scratch2download/" target="_blank" class="resource-button">
				Get Scratch 2 Offline Editor
			</a>
		</div>
	</div>

	<hr />
	<h3>Getting Started</h3>
	<div class="row">
		<div class="col-sm-5 hidden-xs">
			<img src="/assets/imgs/getting-started/scratch-getting-started.png" class="img-responsive" alt="Getting Started Image"/>
		</div>
		<div class="col-sm-7 col-xs-12">
			<p>The Beetle Game is a great game for first time ninjas that have never used Scratch before or those that need to refresh their skills.</p>
			<p>You can find the Beetle game and many other coding cards in the table below.</p>
			<p>Have fun!</p>
		</div>
	</div>

	<hr />
	<div class="coding-cards-container">
		<h3>Coding Cards</h3>
		{include file="partials/resources_table.tpl" type="scratch"}
	</div>

	<hr />
	<div class="row">
		<div class="col-xs-12">
			<h3>Supporters who can assist you with Scratch</h3>
			<div class="row partners">
				<div class="col-xs-4"></div>
				<div class="col-xs-4 resource">
					<img src="/assets/imgs/logos/kano.png" class="resource-logo" alt="Kano" />
					<a class="resource-overlay" href="/supporters/kano" title="Kano - Build it yourself computer.">
						<h2 class="resource-title">Kano</h2>
					</a>
				</div>
				<div class="col-xs-4"></div>
			</div>
		</div>
	</div>

</div>
{/block}