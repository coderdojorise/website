<div class="newsletter-form-container">
	<div class="row form-area">
		<div class="col-sm-6">
			<h4>{$text}</h4>
		</div>
		<div class="col-sm-6 text-right">
			<form class="form-inline" id="subscribe-form" data-list="{$list}">
				<div class="form-group">
					<label class="sr-only">Your email address</label>
					<div class="input-group">
						<input type="email" class="form-control success" id="newsletter-email-input"
							placeholder="Your email address..." required="required" />
					</div>
				</div>
				<button type="submit" class="btn btn-success">
					<i class="fa fa-envelope"></i> Sign Up
				</button>
			</form>
		</div>
	</div>
	<div class="response-success">
		<h3>Thank you! You are on our list. Watch out for our emails <i class="fa fa-smile-o"></i></h3>
	</div>
</div>

{literal}
<script type="text/javascript">
	var AJAX_PENDING = false;

	$(document).ready(function()
	{
		var form = $('#subscribe-form');
		var list = form.data('list');
		form.submit(function(e)
		{
			// Prevent from submitting page
			e.preventDefault();
			var email = $('#newsletter-email-input').val();
			var ajaxUrl = '/api/get.php?method=sub&list=' + list + '&email=' + email;
			$.getJSON(ajaxUrl, function(response)
			{
				if (response.status === 'success')
				{
					var code = response.code;
					switch (code)
					{
						case 201:
						case 202:
							handleNewsletterSuccess(response);
							break;
						case 501:
						case 503:
							handleNewsletterFailure(response);
							break;
					}
				}
				else
				{
					console.warn('Failed: ', response);
				}
			});
		});
	});

	function handleNewsletterSuccess(response)
	{
		switch (response.code)
		{
			case 201:
			case 202:
				$('div.form-area').hide();
				$('div.response-success').show();
				break;
		}
	}
	function handleNewsletterFailure(response)
	{
		switch (response.code)
		{
			case 501:
			case 502:
			case 503:
				$('#newsletter-email-input').css({'color': 'red', 'background': '#FDD'});
				break;
		}
	}
</script>
{/literal}