
{* $Id: include_list_sections.tpl 48374 2013-11-08 19:50:17Z lphuberdeau $ *}
{*
 * If you want to change this page, check http://tiki.org/AdministrationDev
 * there you"ll find attached a gimp image containing this page with icons in separated layers
 *}

{remarksbox type="tip" title="{tr}Tip{/tr}"}
	{tr}Enable/disable Tiki features in {/tr}<a class="alert-link" href="tiki-admin.php?page=features">{tr}Admin{/tr}&nbsp;{$prefs.site_crumb_seper}&nbsp;{tr}Features{/tr}</a>{tr}, but configure them elsewhere{/tr}
{/remarksbox}

<div class="clearfix cbox-data" style="padding-left: 10px;">
	{assign var=i value=0}
	{foreach from=$icons key=page item=info name=adm_loop}
		{assign var=i value=$i+1}
		{if $info.position}
			{if $info.disabled}
				{assign var=class value="btn btn-admin btn-lg btn-primary text-center disabled"}
			{else}
				{assign var=class value="btn btn-admin btn-lg btn-primary text-center"}
			{/if}
			<div class="col-md-2">
			{self_link page=$page _class=$class _style="" _title=$info.title}
				<!--<img src="img/trans.png" alt="{$info.title|escape}" title="{$info.title|escape}{if $info.disabled} ({tr}Disabled{/tr}){/if}">-->
				<span class="{$info.icon_class} icon"></span><br>
				<p>{$info.title|escape}</p>
			{/self_link}
			</div>
			{if $i % 6 == 0}
				<div class="clearfix"></div><br>
			{/if}
		{/if}
	{/foreach}
</div>
