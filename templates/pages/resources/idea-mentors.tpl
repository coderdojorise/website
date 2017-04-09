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
