<!DOCTYPE html>
<html lang="en">
<head>
	<title>{$page_title|default:'CoderDojo RISE'} | CoderDojo RISE</title>

	<link rel="icon" type="image/png" href="/favicon.png" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/paper/bootstrap.min.css" />
	<link rel="stylesheet" href="/assets/css/main-style.min.css?v={date('ms')}" />

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	{literal}
	<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-66840107-3', 'auto');
		ga('send', 'pageview');
	</script>
	{/literal}
	{block name=head}{/block}
</head>
<body>
	{include file="include/header.tpl"}
	{block name=body}{/block}
	{include file="include/footer.tpl"}
	{include file="partials/eu-cookie-message.tpl"}
	<script type="text/javascript" src="/assets/js/utils.js?v={date('ms')}"></script>
	<script type="text/javascript" src="/assets/js/scripts.js?v={date('ms')}"></script>
</body>
</html>
