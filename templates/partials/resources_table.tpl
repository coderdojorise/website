<div class="resources-table-container" data-type="{$type}">
	<span id="loading-data"><i class="fa fa-spin fa-spinner"></i> Loading, please wait...</span>
	<table id="resources-data" class="table table-striped table-condensed" cellspacing="0" width="100%"></table>
</div>
{literal}
<script type="text/javascript">
	var MIN_HEIGHT = 0;
	$(document).ready(function()
	{
		var tableContainer = $('div.resources-table-container');
		var fetchType = tableContainer.data('type');
		var ajaxUrl = '/api/get.php?method=res&type=' + fetchType;

		$.getJSON(ajaxUrl, function(response)
		{
			if (response.status === 'success')
			{
				var dataSet = [];
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

					var curData = [];
					curData.push(curResult.title);
					curData.push(level);
					curData.push(curResult.description);
					curData.push(curResult.type);
					curData.push(verifiedIcon);
					curData.push('<a href="' + curResult.link + '" class="btn" target="_blank">Get</a>');

					dataSet.push(curData);
				}
				var dataTablesOptions = {
					data: dataSet,
					columns: [
					{
						title: 'Title',
						className: 'col-title'
					}, {
						title: 'Level',
						className: 'col-level'
					}, {
						title: 'Description',
						className: 'col-description'
					}, {
						title: 'Type',
						className: 'col-type'
					}, {
						title: 'Verified',
						className: 'col-verified',
						searchable: false
					}, {
						title: '',
						className: 'col-getbtn',
						orderable: false,
						searchable: false
					}
					],
					drawCallback: function()
					{
						if (MIN_HEIGHT === 0)
						{
							setTimeout(function()
							{
								MIN_HEIGHT = $('div.resources-table-container').height();
								$('div.resources-table-container').css('min-height', MIN_HEIGHT);
							}, 1000);
						}
					}
				};
				$('#loading-data').fadeOut();
				$('#resources-data').DataTable(dataTablesOptions);
			}
		});
	});
</script>
{/literal}
