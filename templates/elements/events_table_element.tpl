<div class="events-table-element">
	<h3>Next Events</h3>
	<div class="events-table-next-events">
		{foreach $next_events as $event}
		<div class="row event-row">
			<div class="col-sm-8">
				<h3 class="event-title">{$event['timestamp']|date_format: "%A, %e %B @ %l%P"}: {$event['name']}</h3>
			</div>
			<div class="col-sm-4 text-right">
				<!-- <a href="{$event['details_link']}" class="btn" target="_blank">More Details</a> -->
				<a href="{$event['tickets_link']}" class="btn event-btn" target="_blank">Book Tickets</a>
			</div>
		</div>
		{/foreach}
	</div>
	<h3>All events</h3>
	<table class="table table-striped table-condensed">
		<thead>
			<tr>
				<th class="col-date"><span class="hidden-xs">Day &amp; </span>Date</th>
				<th class="col-time">Time</th>
				<th class="col-minidate">When</th>
				<th>Dojo<span class="hidden-xs"> Name</span></th>
				<th>Location</th>
				<th class="hidden-xs">Type</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			{foreach $events as $event}
			<tr>
				<td class="col-date">{$event['timestamp']|date_format: "%A %e %B"}</td>
				<td class="col-time">{$event['timestamp']|date_format: "%l%P"}</td>
				<td class="col-minidate">{$event['timestamp']|date_format: "%d-%b %R"}</td>
				<td>{$event['name']}</td>
				<td>{$event['location']}</td>
				<td class="hidden-xs">{$event['type']}</td>
				<td><a href="{$event['tickets_link']}" class="btn" target="_blank"><span class="hidden-xs">Book </span>Tickets</a></td>
			</tr>
			{/foreach}
		</tbody>
	</table>
</div>