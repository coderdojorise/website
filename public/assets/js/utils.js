var COOKIE_MANAGER = {};
COOKIE_MANAGER.put = function(key, value, seconds)
{
	if (typeof seconds === 'undefined')
	{
		seconds = 1;
	}
	var expiry = seconds * 1000;
	var date = new Date();
	date.setTime(date.getTime() + expiry);
	var expires = '; expires=' + date.toGMTString();
	document.cookie = key + '=' + value + expires + '; path=/';
};
COOKIE_MANAGER.get = function(key)
{
	var getValue = key + '=';
	var cookies = document.cookie.split(';');
	for (var i = 0; i < cookies.length; i++)
	{
		var curCookie = cookies[i];
		while (curCookie.charAt(0) == ' ')
		{
			curCookie = curCookie.substring(1, curCookie.length);
		}
		if (curCookie.indexOf(getValue) == 0)
		{
			return curCookie.substring(getValue.length, curCookie.length);
		}
	}
	return null;
};
COOKIE_MANAGER.delete = function(key)
{
	COOKIE_MANAGER.put(key, '', -1);
};