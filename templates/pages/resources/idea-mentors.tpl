{extends file="include/master.tpl"}

{block name=head}
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css" />
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
{/block}

{block name=body}

<div class="heading-banner-container heading-red">
	<div class="heading-banner">
		<h1>iDEA Mentors</h1>
	</div>
</div>

<div class="container">
	<p>These are resources provided by iDEA to assist the development of the badges for understanding.</p>

	<p>Fabulous resources have been provided by iDEA to assist in the development and promotion of the iDEA Badges. At times, there will be print runs of some of the resources, at which stage we'll communicate and ask for a request from interested Dojos. If this is of interest to your Dojo - plesae let us know by emailing the team at <a href="mailto:ideabadges@coderdojo.london">iDEABadges@coderdojo.london</a>.</p>

	<p>All resources below have been designed to either be printed off from a personal, work or professional printer.</p>

	<p>As the iDEA Badges is a continual learning and development process; any feedback, suggestions and insights are always welcome - please just let us know - we're always listening.</p>

	<div class="row">
		<div class="col-xs-12">
			<h3>Resources</h3>
		</div>
		<div class="col-xs-12">
			{include file="partials/resources_table.tpl" type="idea-mentors"}
		</div>
	</div>

</div>

{/block}
