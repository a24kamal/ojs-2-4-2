{**
 * templates/admin/settings.tpl
 *
 * Copyright (c) 2003-2013 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Site settings form.
 *
 *}
{strip}
{assign var="pageTitle" value="admin.siteSettings"}
{include file="common/header.tpl"}
{/strip}

<form id="settings" method="post" action="{url op="saveSettings"}" enctype="multipart/form-data">
{include file="common/formErrors.tpl"}

<table class="data_alt" width="100%">
{if count($formLocales) > 1}
	<tr valign="top">
		<td width="20%" class="label">{fieldLabel name="formLocale" key="form.formLanguage"}</td>
		<td colspan="2" width="80%" class="value">
			{url|assign:"settingsUrl" op="settings" escape=false}
			{form_language_chooser form="settings" url=$settingsUrl}
			<span class="instruct">{translate key="form.formLanguage.description"}</span>
		</td>
	</tr>
{/if}
	<tr valign="top">
		<td {if $pageHeaderTitleType[$formLocale] && $pageHeaderTitleImage[$formLocale]}rowspan="4"{else}rowspan="3"{/if} width="20%" class="label">{fieldLabel name="title" key="admin.settings.siteTitle" required="true"}</td>
		<td width="15%" class="value">
			<input type="radio" name="pageHeaderTitleType[{$formLocale|escape}]" id="pageHeaderTitleType-0" value="0"{if not $pageHeaderTitleType[$formLocale]} checked="checked"{/if} /> {fieldLabel name="pageHeaderTitleType-0" key="manager.setup.useTextTitle"}
		</td>
		<td width="65%" class="value">
			<input type="text" id="title" name="title[{$formLocale|escape}]" value="{$title[$formLocale]|escape}" size="40" maxlength="120" class="textField" />
		</td>
	</tr>
	<tr valign="top">
		<td class="label" width="20%"><input type="radio" name="pageHeaderTitleType[{$formLocale|escape}]" id="pageHeaderTitleType-1" value="1"{if $pageHeaderTitleType[$formLocale]} checked="checked"{/if} /> {fieldLabel name="pageHeaderTitleType-1" key="manager.setup.useImageTitle"}</td>
		<td colspan="2" width="80%" class="value"><input type="file" name="pageHeaderTitleImage" class="uploadField" /> <input type="submit" name="uploadPageHeaderTitleImage" value="{translate key="common.upload"}" class="button" /></td>
	</tr>
	<tr valign="top">
		<td colspan="2">
			{if $pageHeaderTitleType[$formLocale] && $pageHeaderTitleImage[$formLocale]}
				{translate key="common.fileName"}: {$pageHeaderTitleImage[$formLocale].originalFilename|escape} {$pageHeaderTitleImage[$formLocale].dateUploaded|date_format:$datetimeFormatShort} <input type="submit" name="deletePageHeaderTitleImage" value="{translate key="common.delete"}" class="button" />
				<br />
				<img src="{$publicFilesDir}/{$pageHeaderTitleImage[$formLocale].uploadName|escape:"url"}" width="{$pageHeaderTitleImage[$formLocale].width|escape}" height="{$pageHeaderTitleImage[$formLocale].height|escape}" style="border: 0;" alt="{translate key="admin.settings.homeHeaderImage.altText"}" />
			{/if}
		</td>
	</tr>
	{if $pageHeaderTitleType[$formLocale] && $pageHeaderTitleImage[$formLocale]}
		<tr valign="top">
			<td class="label">{fieldLabel name="pageHeaderTitleImageAltText" key="common.altText"}</td>
			<td colspan="2" width="80%" class="value">
				<input type="text" id="pageHeaderTitleImageAltText" name="pageHeaderTitleImageAltText[{$formLocale|escape}]" value="{$pageHeaderTitleImage[$formLocale].altText|escape}" size="40" maxlength="255" class="textField" />
			</td>
		</tr>
		<tr valign="top">
			<td>&nbsp;</td>
			<td colspan="2" class="value"><span class="instruct">{translate key="common.altTextInstructions"}</span></td>
		</tr>
	{/if}
	<tr valign="top">
		<td class="label">{fieldLabel name="intro" key="admin.settings.introduction"}</td>
		<td colspan="2" class="value"><textarea name="intro[{$formLocale|escape}]" id="intro" cols="40" rows="10" class="textArea">{$intro[$formLocale]|escape}</textarea></td>
	</tr>
	<tr valign="top">
		<td class="label">{fieldLabel name="redirect" key="admin.settings.journalRedirect"}</td>
		<td colspan="2" class="value">
			<select name="redirect" id="redirect" size="1" class="selectMenu">
				<option value="">{translate key="admin.settings.noJournalRedirect"}</option>
				{html_options options=$redirectOptions selected=$redirect}
			</select>
		</td>
	</tr>
	<tr valign="top">
		<td>&nbsp;</td>
		<td colspan="2" class="value"><span class="instruct">{translate key="admin.settings.journalRedirectInstructions"}</span></td>
	</tr>
	<tr valign="top">
		<td class="label">{fieldLabel name="aboutField" key="admin.settings.aboutDescription"}</td>
		<td colspan="2" class="value"><textarea name="about[{$formLocale|escape}]" id="aboutField" cols="40" rows="10" class="textArea">{$about[$formLocale]|escape}</textarea></td>
	</tr>
	<tr valign="top">
		<td class="label">{fieldLabel name="contactName" key="admin.settings.contactName" required="true"}</td>
		<td colspan="2" class="value"><input type="text" id="contactName" name="contactName[{$formLocale|escape}]" value="{$contactName[$formLocale]|escape}" size="40" maxlength="90" class="textField" /></td>
	</tr>
	<tr valign="top">
		<td class="label">{fieldLabel name="contactEmail" key="admin.settings.contactEmail" required="true"}</td>
		<td colspan="2" class="value"><input type="text" id="contactEmail" name="contactEmail[{$formLocale|escape}]" value="{$contactEmail[$formLocale]|escape}" size="40" maxlength="90" class="textField" /></td>
	</tr>
	<tr valign="top">
		<td class="label">{fieldLabel name="minPasswordLength" key="admin.settings.minPasswordLength" required="true"}</td>
		<td colspan="2" class="value"><input type="text" id="minPasswordLength" name="minPasswordLength" value="{$minPasswordLength|escape}" size="4" maxlength="2" class="textField" /> {translate key="admin.settings.passwordCharacters"}</td>
	</tr>
	<tr>
		<td class="label"><label for="journalTheme">{translate key="admin.settings.siteTheme"}</label></td>
		<td colspan="2" class="value">
			<select name="siteTheme" class="selectMenu" id="theme"{if empty($themes)} disabled="disabled"{/if}>
				<option value="">{translate key="common.none"}</option>
				{foreach from=$themes key=path item=themePlugin}
					<option value="{$path|escape}"{if $path == $siteTheme} selected="selected"{/if}>{$themePlugin->getDisplayName()|escape}</option>
				{/foreach}
			</select>
		</td>
	</tr>
	<tr valign="top">
		<td class="label">{translate key="admin.settings.siteStyleSheet"}</td>
		<td colspan="2" width="80%" class="value">
			<input type="file" name="siteStyleSheet" class="uploadField" /> <input type="submit" name="uploadSiteStyleSheet" value="{translate key="common.upload"}" class="button" />
			{if $siteStyleFileExists}
				<br />
				{translate key="common.fileName"}: <a href="{$publicFilesDir}/{$styleFilename}" class="file">{$originalStyleFilename|escape}</a> {$dateStyleFileUploaded|date_format:$datetimeFormatShort} <input type="submit" name="deleteSiteStyleSheet" value="{translate key="common.delete"}" class="button" />
			{/if}
		</td>
	</tr>
	<tr valign="top">
		<td rowspan="2" class="label">{translate key="admin.settings.options"}</td>
		<td class="value" colspan="2">
			<label class="checkbox"><input type="checkbox" id="useAlphalist" name="useAlphalist" {if $useAlphalist}checked="checked" {/if}/>
			{fieldLabel name="useAlphalist" key="admin.settings.useAlphalist"}</label>
	</tr>
	<tr valign="top">
		<td class="value" colspan="2">
			<label class="checkbox"><input type="checkbox" id="usePaging" name="usePaging" {if $usePaging}checked="checked" {/if}/>
			{fieldLabel name="usePaging" key="admin.settings.usePaging"}</label>
		</td>
	</tr>
    <tr valign="top">
    	<td class="label">{translate key="admin.settings.journalsList"}</td>
		<td colspan="2" class="value">
			{translate key="admin.settings.journalsList.description"}<br />
			<label class="checkbox"><input type="checkbox" name="showThumbnail" id="showThumbnail" value="1"{if $showThumbnail} checked="checked"{/if} />
			{fieldLabel name="showThumbnail" key="admin.settings.journalsList.showThumbnail"}</label><br />
			<label class="checkbox"><input type="checkbox" name="showTitle" id="showTitle" value="1"{if $showTitle} checked="checked"{/if} />
			{fieldLabel name="showTitle" key="admin.settings.journalsList.showTitle"}</label><br />
			<label class="checkbox"><input type="checkbox" name="showDescription" id="showDescription" value="1"{if $showDescription} checked="checked"{/if} />
			{fieldLabel name="showDescription" key="admin.settings.journalsList.showDescription"}</label><br />
		</td>
	</tr>
</table>

<br />
<div id="oaiRegistration">
<h4>{translate key="admin.settings.oaiRegistration"}</h4>

{url|assign:"oaiUrl" page="oai"}
{url|assign:"siteUrl" page="index"}
<p>{translate key="admin.settings.oaiRegistrationDescription" siteUrl=$siteUrl oaiUrl=$oaiUrl}</p>
</div>

<p><input type="button" value="{translate key="common.cancel"}" class="btn btn-danger btn-small" onclick="document.location.href='{url page="admin" escape=false}'" /> <input type="submit" value="{translate key="common.save"}" class="btn btn-small" /></p>

</form>

<p><span class="formRequired">{translate key="common.requiredField"}</span></p>

{include file="common/footer.tpl"}
{* MODIFICADO OJS V.2.4.2 / 04-2013*}
