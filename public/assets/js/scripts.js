$(document).ready(function()
{
	var displayCookieMessage = (COOKIE_MANAGER.get('hide_cookie_law') === null);
	if (displayCookieMessage)
	{
		$('#cookie-law-container').show();
		$('#cookie-law-alert').on('close.bs.alert', function ()
		{
			var month = 2592000;
			COOKIE_MANAGER.put('hide_cookie_law', 'yes', month);
		});
	}
});