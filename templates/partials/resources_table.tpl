<div class="resources-table-container" data-type="{$type}">
	Loading...
</div>
{literal}
<script type="text/javascript">
	$(document).ready(function()
	{
		var tableContainer = $('div.resources-table-container');
		var fetchType = tableContainer.data('type');
		var ajaxUrl = '/api/get.php?method=res&type=' + fetchType;

		$.getJSON(ajaxUrl, function(response)
		{
			if (response.status === 'success')
			{
				// Build the table
				var tableHTML = '<table class="table table-striped table-condensed">';
				// Headings
				tableHTML += '<thead><tr>';
				tableHTML += '<th>Title</th>';
				tableHTML += '<th>Level</th>';
				tableHTML += '<th>Description</th>';
				tableHTML += '<th>Type</th>';
				tableHTML += '<th>Verified</th>';
				tableHTML += '<th></th>';
				tableHTML += '</tr></thead>';
				// Response
				tableHTML += '<tbody>';
				for (var i = 0; i < response.results.length; i++)
				{
					var curResult = response.results[i];
					var verifiedIcon = curResult.verified ? '<i class="fa fa-check"></i>' : '';
					var level = 'Starting Out';
					switch (curResult.level)
					{
						case 1:
							level = 'Some Experience';
							break;
						case 2:
							level = 'Very Experienced';
							break;
					}
					tableHTML += '<tr>';
					tableHTML += '<td>' + curResult.title + '</td>';
					tableHTML += '<td>' + level + '</td>';
					tableHTML += '<td>' + curResult.description + '</td>';
					tableHTML += '<td>' + curResult.type + '</td>';
					tableHTML += '<td>' + verifiedIcon + '</td>';
					tableHTML += '<td><a href="' + curResult.link + '" class="btn" target="_blank">Get</a></td>';
					tableHTML += '</tr>';
				}
				tableHTML += '</tbody>';
				tableHTML += '</table>';
				tableContainer.html(tableHTML);
			}
		});
	});
</script>
{/literal}
