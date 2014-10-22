{*
** @author PrestaShop SA <contact@prestashop.com>
** @copyright  2007-2014 PrestaShop SA
** @version  Release: $Revision: 1.2.0 $
**
** International Registered Trademark & Property of PrestaShop SA
**
** Description: PayPal addon's configuration page
**
** This template is displayed in the Back-office section of your store when you are configuring the PayPal's addon
** It allows you to enable PayPal on your store and to configure your credentials and preferences
**
*}

{if $paypal_mx_ps_14}
<script type="text/javascript">
		{literal}
		$(document).ready(function() {
			var scripts = [{/literal}{$paypal_mx_js_files}{literal}];
			for(var i = 0; i < scripts.length; i++) {
				$.getScript(scripts[i], function() {paypal_mx_init()});
			}
		});
		{/literal}
</script>
{/if}
<div class="paypal_mx-module-wrapper">
	<div class="paypal_mx-module-header">
		<img src="{$paypal_mx_tracking|escape:'htmlall':'UTF-8'}" alt="" style="display: none;" />
		<a rel="external" href="https://www.paypal.com/us/cgi-bin/webscr?cmd=_registration-run&from=prestashop" target="_blank"><img class="paypal_mx-logo" alt="" src="{$module_dir}/img/logo.png" /></a>
		<span class="paypal_mx-module-intro">{l s='PayPal is the #1 solution to start accepting payments on the web today' mod='paypalmx'}.<br />
		<a class="paypal_mx-module-create-btn L" rel="external" href="https://www.paypal.com/us/cgi-bin/webscr?cmd=_registration-run&partner_id=XYAYGKRUJMJTG" target="_blank"><span>{l s='Sign Up' mod='paypalmx'}</span></a></span>
	</div>
	<div class="paypal_mx-module-wrap">
		<div class="paypal_mx-module-col2">
			<div class="paypal_mx-module-col1inner" style="width: {$paypal_mx_b1width|escape:'htmlall':'UTF-8'}px;">
				<h3>{l s='Benefits of using PayPal' mod='paypalmx'}</h3>
				<ul>
					<li><b>{l s='It\'s Fast and Easy:' mod='paypalmx'}</b> {l s='PayPal is pre-integrated with Prestashop, so you can configure it with a few clicks.' mod='paypalmx'}</li>
					<li><b>{l s='It\'s Global:' mod='paypalmx'}</b> {l s='Accept payments in 21 currencies from 190 markets around the globe.' mod='paypalmx'}</li>
					<li><b>{l s='It\'s Trusted:' mod='paypalmx'}</b> {l s='Industry-leading fraud and buyer protections keep you and your customers safe.' mod='paypalmx'}</li>
					<li><b>{l s='It\'s Cost-Effective:' mod='paypalmx'}</b> {l s='There are no setup fees or long-term contracts. You only pay a low transaction fee.' mod='paypalmx'}</li>
				</ul>
			</div>
			<div class="paypal_mx-module-col1inner" style="width: 220px; margin-left: 40px;">
				<h3>{l s='PayPal Pricing' mod='paypalmx'}</h3>
				<p><b>{l s='PayPal Payments Standard' mod='paypalmx'}</b><br />
					{l s='No monthly fee' mod='paypalmx'}</p>
				<br />
				<p><b>{l s='PayPal Express Checkout' mod='paypalmx'}</b><br />
					{l s='No monthly fee' mod='paypalmx'}</p>
				<br />
				<p><b>{l s='PayPal Payments Advanced' mod='paypalmx'}</b><br />
					{l s='$5 per month' mod='paypalmx'}<br /></p>
				<br />
				<p><a href="https://www.paypal.com/webapps/mpp/merchant-fees?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='(Detailed pricing available at PayPal.com)' mod='paypalmx'}</a></p>
			</div>
			<div class="paypal_mx-module-col1inner" style="width: 307px; margin-left: 30px;">
				<h3>{l s='Unique Features' mod='paypalmx'}</h3>
				<ul>
					<li>{l s='Accept all major' mod='paypalmx'} <b>{l s='credit cards' mod='paypalmx'}</b>, <b>{l s='PayPal' mod='paypalmx'}</b>{l s=', and' mod='paypalmx'} <b>{l s='Bill Me Later®' mod='paypalmx'}</b></li>
					<li>{l s='Tap into millions of active' mod='paypalmx'} <b>{l s='PayPal buyers' mod='paypalmx'}</b> {l s='around the globe' mod='paypalmx'}</li>
					<li>{l s='Get paid within minutes of making a sale' mod='paypalmx'}</li>
					<li>{l s='Process' mod='paypalmx'} <b>{l s='full or partial refunds' mod='paypalmx'}</b></li>
					<li>{l s='Get easy-to-understand reporting' mod='paypalmx'}</li>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="paypal_mx-module-col2inner">
				<h3>{l s='Accept Credit Card Payments Today!' mod='paypalmx'}</h3>
				<img class="paypal_mx-cc" alt="" src="{$module_dir}/img/credit_card.png" style="float: left;" />
				<div style="line-height: 9px; width: 255px; float: left;">
					<a class="paypal_mx-module-btn" style="margin-bottom: 2px; margin-top: 0" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-payments-standard?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up for PayPal Payments Standard' mod='paypalmx'}</a><br />
					<a class="paypal_mx-module-btn" style="margin-bottom: 2px;" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-payments-advanced?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up for PayPal Payments Advanced' mod='paypalmx'}</a><br />
					<a class="paypal_mx-module-btn" style="margin-bottom: 2px;" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-payflow-link?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up for PayPal Payflow Link' mod='paypalmx'}</a><br />
					<a class="paypal_mx-module-btn" style="margin-bottom: 2px;" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-express-checkout?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up for PayPal Express Checkout' mod='paypalmx'}</a>
				</div>
				{if $paypal_mx_merchant_country_is_mx}
					<div style="line-height: 9px; width: 194px; float: left;">
						<img src="{$module_dir}/img/logo-slogan.gif" />
					</div>
					<div style="float: left; line-height: 16px; margin: -2px 0; padding: 0; width: 204px;">
						{l s='Boost your online sales by promoting 6 months financing on your website.  Add free PayPal hosted banner ads in minutes.' mod='paypalmx'}  <a href="https://financing.paypal.com/ppfinportal" target="_blank"><b>{l s='Learn more' mod='paypalmx'}</b></a>.
					</div>
				{/if}
			</div>
		</div>
	</div>
	{if $paypal_mx_validation}
		<div class="conf">
			{foreach from=$paypal_mx_validation item=validation}
				{$validation|escape:'htmlall':'UTF-8'}<br />
			{/foreach}
		</div>
	{/if}
	{if $paypal_mx_error}
		<div class="error">
			{foreach from=$paypal_mx_error item=error}
				{$error|escape:'htmlall':'UTF-8'}<br />
			{/foreach}
		</div>
	{/if}
	{if $paypal_mx_warning}
		<div class="info">
			{foreach from=$paypal_mx_warning item=warning}
				{$warning|escape:'htmlall':'UTF-8'}<br />
			{/foreach}
		</div>
	{/if}
	{if isset($paypal_mx_advanced_only_us) && $paypal_mx_advanced_only_us}
		<div class="warn">{l s='You enabled PayPal Payments Advanced however this product only works in the MX' mod='paypalmx'}</div>
	{/if}
	<form action="{$paypal_mx_form_link|escape:'htmlall':'UTF-8'}" method="post">
		<fieldset>
			<legend><img src="{$module_dir}logo.gif" alt="" />{l s='PayPal Products' mod='paypalmx'}</legend>
			<a href="https://www.paypal.com/webapps/mpp/compare-business-products" class="paypal_mx-module-btn right resetMargin" target="_blank">{l s='Compare all PayPal products' mod='paypalmx'}</a>
			<h4>{l s='Which PayPal Product(s) would you like to enable?' mod='paypalmx'}</h4>
			<div class="paypal-mx-threecol">
				<div class="paypal-mx-product first fixCol{if $paypal_mx_configuration.PAYPAL_MX_PAYMENT_STANDARD} paypal-mx-product-active{/if}">
					<h4>{l s='PayPal Payments Standard' mod='paypalmx'}</h4>
					<a class="paypal_mx-module-btn" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-payments-standard?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up' mod='paypalmx'}</a><br />
					<p>{l s='Accept credit cards wherever you do business. Your customers don\'t even need a PayPal account. Easy setup, no programming skills required. No setup or monthly charges.' mod='paypalmx'}</p>
					<center><input type="radio" name="paypal_mx_products" id="paypal_mx_payment_standard" value="1" {if $paypal_mx_configuration.PAYPAL_MX_PAYMENT_STANDARD} checked="checked"{/if} /> <label for="paypal_mx_payment_standard"> {l s='Enabled' mod='paypalmx'}</label></center>
					<span class="paypal-mx-or">{l s='OR' mod='paypalmx'}</span>
				</div>
				<div class="paypal-mx-product fixCol{if $paypal_mx_configuration.PAYPAL_MX_PAYMENT_ADVANCED} paypal-mx-product-active{/if}">
					<h4>{l s='PayPal Payments Advanced' mod='paypalmx'}</h4>
					<a class="paypal_mx-module-btn" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-payments-advanced?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up' mod='paypalmx'}</a><br />
					<p>{l s='Offer a seamless checkout experience. Get the extra advantage of allowing your customers to check out directly on your site. Simplify PCI compliance. Only $5 per month (See Pricing)' mod='paypalmx'}</p>
					<center><input type="radio" name="paypal_mx_products" id="paypal_mx_payment_advanced" value="2" {if $paypal_mx_configuration.PAYPAL_MX_PAYMENT_ADVANCED} checked="checked"{/if} /> <label for="paypal_mx_payment_advanced"> {l s='Enabled' mod='paypalmx'}</label></center>
					<span class="paypal-mx-or">{l s='OR' mod='paypalmx'}</span>
				</div>
				<div class="paypal-mx-product last fixCol{if $paypal_mx_configuration.PAYPAL_MX_PAYFLOW_LINK} paypal-mx-product-active{/if}">
					<h4>{l s='PayPal Payflow Link' mod='paypalmx'}</h4>
					<a class="paypal_mx-module-btn" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-payflow-link?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up' mod='paypalmx'}</a><br />
					<p>{l s='Offer a seamless checkout experience. Get the extra advantage of allowing your customers to check out directly on your site. Simplify PCI compliance. Only $5 per month (See Pricing)' mod='paypalmx'}</p>
					<center><input type="radio" name="paypal_mx_products" id="paypal_mx_payflow_link" value="3"{if $paypal_mx_configuration.PAYPAL_MX_PAYFLOW_LINK} checked="checked"{/if} /> <label for="paypal_mx_payflow_link"> {l s='Enabled' mod='paypalmx'}</label></center>
				</div>
			</div>
			<div class="paypal-mx-onecol">
				<div class="paypal-mx-product_eco fixCol{if $paypal_mx_configuration.PAYPAL_MX_EXPRESS_CHECKOUT} paypal-mx-product-active{/if}">
					<h4>{l s='PayPal Express Checkout' mod='paypalmx'}</h4>
					<a class="paypal_mx-module-btn" href="https://www.paypal.com/us/webapps/mpp/referral/paypal-express-checkout?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Sign Up' mod='paypalmx'}</a><br />
					<p>{l s='If you accept credit cards online, you can also accept PayPal payments by adding an Express Checkout button. It\'s a proven way to grow your business. No setup or monthly charges.' mod='paypalmx'}</p>
					<center><input type="checkbox" id="paypal_mx_express_checkout" name="paypal_mx_express_checkout" {if $paypal_mx_configuration.PAYPAL_MX_EXPRESS_CHECKOUT} checked="checked"{/if} /> <label for="paypal_mx_express_checkout"> {l s='Enabled' mod='paypalmx'}</label></center>
				</div>
			</div>
			<div class="clear centerText">
				<input type="submit" name="SubmitPayPalProducts" class="button MB15" value="{l s='Enable selected product(s)' mod='paypalmx'}" />
			</div>
			<h4 class="sep-title">{l s='PayPal Express Checkout is optional and can be added to any other PayPal product or alone' mod='paypalmx'} <input type="button" value="{l s='Enable PayPal Express Checkout only' mod='paypalmx'}" class="button right" /></h4>
		</fieldset>
	</form>
	<br />
	<form action="{$paypal_mx_form_link|escape:'htmlall':'UTF-8'}" method="post" id="paypal_mx_paypal_api_settings" class="half-form L">
		<fieldset>
			<legend><img src="{$module_dir}img/settings.gif" alt="" /><span>{l s='PayPal API Settings' mod='paypalmx'}</span></legend>
			<div id="paypal-mx-basic-settings-table">
				<label for="paypal_mx_sandbox_on">{l s='Mode' mod='paypalmx'}</label>
				<div class="margin-form PT4">
					<input type="radio" name="paypal_mx_sandbox" id="paypal_mx_sandbox_on" value="0"{if $paypal_mx_configuration.PAYPAL_MX_SANDBOX == 0} checked="checked"{/if} /> <label for="paypal_mx_sandbox_on" class="resetLabel">{l s='Live' mod='paypalmx'}</label>
					<input type="radio" name="paypal_mx_sandbox" id="paypal_mx_sandbox_off" value="1"{if $paypal_mx_configuration.PAYPAL_MX_SANDBOX == 1} checked="checked"{/if} /> <label for="paypal_mx_sandbox_off" class="resetLabel">{l s='Test (Sandbox)' mod='paypalmx'}</label>
					<p>{l s='Use the links below to retreive your PayPal API credentials:' mod='paypalmx'}<br />
						<a onclick="window.open(this.href, '1369346829804', 'width=415,height=530,toolbar=0,menubar=0,location=0,status=0,scrollbars=0,resizable=0,left=0,top=0');
								return false;" href="https://www.paypal.com/us/cgibin/webscr?cmd=_get-api-signature&generic-flow=true" class="paypal_mx-module-btn">{l s='Live Mode API' mod='paypalmx'}</a>&nbsp;&nbsp;&nbsp;//&nbsp;&nbsp;&nbsp;<a onclick="window.open(this.href, '1369346829804', 'width=415,height=530,toolbar=0,menubar=0,location=0,status=0,scrollbars=0,resizable=0,left=0,top=0');
								return false;" href="https://www.sandbox.paypal.com/us/cgi-bin/webscr?cmd=_get-api-signature&generic-flow=true" class="paypal_mx-module-btn">{l s='Sandbox Mode API' mod='paypalmx'}</a></p>
				</div>
				<label for="paypal_mx_account">{l s='PayPal Business Account:' mod='paypalmx'}</label></td>
				<div class="margin-form">
					<input type="text" name="paypal_mx_account" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_ACCOUNT}{$paypal_mx_configuration.PAYPAL_MX_ACCOUNT|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup>
				</div>
				<label for="paypal_mx_api_username">{l s='PayPal API Username:' mod='paypalmx'}</label></td>
				<div class="margin-form">
					<input type="text" name="paypal_mx_api_username" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_API_USERNAME}{$paypal_mx_configuration.PAYPAL_MX_API_USERNAME|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup>
				</div>
				<label for="paypal_mx_api_password">{l s='PayPal API Password:' mod='paypalmx'}</label></td>
				<div class="margin-form">
					<input type="password" name="paypal_mx_api_password" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_API_PASSWORD}{$paypal_mx_configuration.PAYPAL_MX_API_PASSWORD|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup>
				</div>
				<label for="paypal_mx_api_signature">{l s='PayPal API Signature:' mod='paypalmx'}</label></td>
				<div class="margin-form">
					<input type="password" name="paypal_mx_api_signature" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_API_SIGNATURE}{$paypal_mx_configuration.PAYPAL_MX_API_SIGNATURE|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup>
				</div>
			</div>
			<div id="paypal_mx_express_checkout_config" {if !$paypal_mx_configuration.PAYPAL_MX_EXPRESS_CHECKOUT}style="display:none;"{/if}>
				<h4 class="sep-title">{l s='PayPal Express Checkout settings:' mod='paypalmx'}</h4>
				<label for="paypal_mx_checkbox_product">{l s='Show Express Checkout on' mod='paypalmx'}</label>
				<div class="margin-form PT3">
					<input type="checkbox" name="paypal_mx_checkbox_product"{if $paypal_mx_configuration.PAYPAL_MX_EXP_CHK_PRODUCT} checked="checked"{/if} /> <label for="paypal_mx_checkbox_product" class="resetLabel">{l s='Product page' mod='paypalmx'}</label> 
					<input type="checkbox" name="paypal_mx_checkbox_shopping_cart"{if $paypal_mx_configuration.PAYPAL_MX_EXP_CHK_SHOPPING_CART} checked="checked"{/if} /> <label for="paypal_mx_checkbox_shopping_cart}" class="resetLabel">{l s='Shopping Cart' mod='paypalmx'}</label>
				</div>
				<label for="paypal_mx_checkbox_border_color">{l s='Express Checkout border color' mod='paypalmx'}</label></td>
				<div class="margin-form">
					<input class="colorSelector" type="text" id="paypal_mx_checkbox_border_color" name="paypal_mx_checkbox_border_color" value="{$paypal_mx_configuration.PAYPAL_MX_EXP_CHK_BORDER_COLOR|escape:'htmlall':'UTF-8'}" />
				</div>
			</div>
			<div class="margin-form">
				<input type="submit" name="SubmitBasicSettings" class="button" value="{l s='Save settings' mod='paypalmx'}" />
			</div>
			<span class="small"><sup style="color: red;">*</sup> {l s='Required fields' mod='paypalmx'}</span>
		</fieldset>
	</form>
	<form action="{$paypal_mx_form_link|escape:'htmlall':'UTF-8'}" method="post" {if !$paypal_mx_configuration.PAYPAL_MX_PAYMENT_ADVANCED && !$paypal_mx_configuration.PAYPAL_MX_PAYFLOW_LINK} style="display: none;"{else} class="half-form R"{/if}>
		<fieldset id="paypal-mx-advanced-settings">
			<legend><img src="{$module_dir}img/settings.gif" alt="" />{l s='Advanced Settings' mod='paypalmx'}</legend>
			<h4>{l s='These settings are required to use PayPal Advanced' mod='paypalmx'}</h4>
			<a onclick="$('#paypal_payments_advanced_help').lightbox_me({literal}{centered: true}{/literal});" href="javascript:void(0);" class="paypal_mx-module-btn learn_more">{l s='Learn how to configure PayPal Payments Advanced' mod='paypalmx'}</a><br />
			<label for="paypal_mx_sandbox_advanced_on">{l s='Mode' mod='paypalmx'}</label>
			<div class="margin-form PT4">
				<input type="radio" name="paypal_mx_sandbox_advanced" id="paypal_mx_sandbox_advanced_on" value="0"{if $paypal_mx_configuration.PAYPAL_MX_SANDBOX_ADVANCED == 0} checked="checked"{/if} /> <label for="paypal_mx_sandbox_advanced_on" class="resetLabel">{l s='Live' mod='paypalmx'}</label>
				<input type="radio" name="paypal_mx_sandbox_advanced" id="paypal_mx_sandbox_advanced_off" value="1"{if $paypal_mx_configuration.PAYPAL_MX_SANDBOX_ADVANCED == 1} checked="checked"{/if} /> <label for="paypal_mx_sandbox_advanced_off" class="resetLabel">{l s='Test (Sandbox)' mod='paypalmx'}</label>
			</div>
			<label for="paypal_mx_manager_partner">{l s='PayPal Manager Partner' mod='paypalmx'}</label>
			<div class="margin-form">
				<input type="text" name="paypal_mx_manager_partner" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_MANAGER_PARTNER}{$paypal_mx_configuration.PAYPAL_MX_MANAGER_PARTNER|escape:'htmlall':'UTF-8'}{else}paypal{/if}" /> <sup>*</sup>
			</div>
			<label for="paypal_mx_manager_login">{l s='PayPal Manager Merchant Login' mod='paypalmx'}</label>
			<div class="margin-form">
				<input type="text" name="paypal_mx_manager_login" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_MANAGER_LOGIN}{$paypal_mx_configuration.PAYPAL_MX_MANAGER_LOGIN|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup>
			</div>
			<label for="paypal_mx_manager_partner">{l s='PayPal Manager User' mod='paypalmx'}</label></td>
			<div class="margin-form">
				<input type="text" name="paypal_mx_manager_user" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_MANAGER_USER}{$paypal_mx_configuration.PAYPAL_MX_MANAGER_USER|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup>
			</div>
			<label for="paypal_mx_manager_password">{l s='PayPal Manager Password' mod='paypalmx'}</label>
			<div class="margin-form">
				<input type="password" name="paypal_mx_manager_password" class="input-text" value="{if $paypal_mx_configuration.PAYPAL_MX_MANAGER_PASSWORD}{$paypal_mx_configuration.PAYPAL_MX_MANAGER_PASSWORD|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup>
			</div>
			<div class="margin-form">
				<input type="submit" name="SubmitAdvancedSettings" class="button" value="{l s='Save Settings' mod='paypalmx'}" />
			</div>
			<span class="small"><sup style="color: red;">*</sup> {l s='Required fields' mod='paypalmx'}</span>
		</fieldset>
	</form>
	<div id="paypal_payments_advanced_help" class="paypal_help_box paypal_mx-module-wrap" style="display: none; width: 400px; height: 330px;">
		<p>{l s='For PayPal Payments Advanced to work properly on your store, please adjust your PayPal settings by following these steps:' mod='paypalmx'}</p>
		<ul style="list-style: decimal; margin: 5px 0 0 25px">
			<li>{l s='Log-in to' mod='paypalmx'} <a href="https://manager.paypal.com?partner_id=XYAYGKRUJMJTG" target="_blank">{l s='Paypal Manager' mod='paypalmx'}</a></li>
			<li>{l s='Select Hosted Checkout Pages, then select "Setup"' mod='paypalmx'}</li>
			<li>{l s='Under Security Options, set the "Enable Secure Token" to "Yes". This change is required in order for your checkout to work, and it is required to be set by you personally for security reasons. Please do not change any other values on this page or on the Customize page, as PrestaShop will pass these values on your behalf for ease of configuration.' mod='paypalmx'}</li>
		</ul>
		<input type="button" value="{l s='close' mod='paypalmx'}" class="close" />
	</div>
	<div id="paypal_link_help" class="paypal_help_box paypal_mx-module-wrap" style="display: none;">
		{l s='Help about PayPal Express Checkout will be here.' mod='paypalmx'}<br />
		<input type="button" value="{l s='Close' mod='paypalmx'}" class="button close" />
	</div>
</div>
{if $paypal_mx_merchant_country_is_mx}
	<script type="text/javascript">
		{literal}
		$(document).ready(function() {
			$('#content table.table tbody tr th span').html('paypalmx');
		});
		{/literal}
	</script>
{/if}