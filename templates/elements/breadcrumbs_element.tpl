<div class="container breadcrumbs-element">
	<ol class="breadcrumb">
		{foreach $crumbs as $crumb}
		<li class="{$crumb['css_class']}">
			<a href="{$crumb['link']}" title="{$crumb['text']}">
				{$crumb['text']}
			</a>
		</li>
		{/foreach}
	</ol>
</div>