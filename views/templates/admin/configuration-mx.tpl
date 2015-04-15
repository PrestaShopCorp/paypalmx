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
<img src="{$paypal_mx_tracking|escape:'htmlall':'UTF-8'}" alt="" class="hiddenElement" />
<div class="paypal_mx-module-wrapper ">
	<div class="paypal_mx-module-header">
		<a rel="external" href="https://www.paypal.com/us/cgi-bin/webscr?cmd=_registration-run&from=prestashop" target="_blank"><img class="paypal_mx-logo" alt="" src="{$module_dir}/img/logo.png" /></a>
		<span class="paypal_mx-module-intro">{l s='PayPal is the #1 solution to start accepting payments on the web today' mod='paypalmx'}.<br />
		<span class="paypal_mx-module-singup-text">{l s='If you don\'t have a PayPal account' mod='paypalmx'}.</span>
		<a class="paypal_mx-module-create-btn" rel="external" href="https://www.paypal.com/mx/webapps/mpp/referral/paypal-business-account2?partner_id=XYAYGKRUJMJTG" target="_blank"><span>{l s='Sign up for a PayPal account here' mod='paypalmx'}</span></a></span>
	</div>
	<div class="paypal_mx-module-wrap">
		<div class="col-md-6">
			<h3>{l s='Credit and Debit Cards' mod='paypalmx'}</h3>
			<p>{l s='With PayPal you can accept payments with all major credit and debit cards in 25 currencies from 190 countries.' mod='paypalmx'}</p>
			
		</div>
		<div class="col-md-6">
			<h3>{l s='Monthly Payments Feature' mod='paypalmx'}</h3>
			<p>{l s='Offer to your clients the possibility to make monthly payments using the following credit cards: Bancomer, Banamex, HSBC, Santander y Banorte.' mod='paypalmx'}</p>
			<img class="paypal_mx-cc" alt="" src="{$module_dir}/img/accpmark_tarjdeb_mx.png" />
		</div>
	</div>

	{if $paypal_mx_validation}
		<div class="alert alert-success">
			{foreach from=$paypal_mx_validation item=validation}
				{$validation|escape:'htmlall':'UTF-8'}<br />
			{/foreach}
		</div>
	{/if}
	{if $paypal_mx_error}
		<div class="alert alert-danger">
			{foreach from=$paypal_mx_error item=error}
				{$error|escape:'htmlall':'UTF-8'}<br />
			{/foreach}
		</div>
	{/if}
	<form action="{$paypal_mx_form_link|escape:'htmlall':'UTF-8'}" method="post" class="form-horizontal">
		<input type="hidden" name="paypal_mx_express_checkout" value="1" />
		<fieldset>
			<legend>
					<img src="{$module_dir}img/settings.gif" alt="" />
					<span>{l s='PayPal PayPal Express Checkout API Settings' mod='paypalmx'}</span>
			</legend>

			<div class="form-group">
				<label for="paypal_mx_sandbox_on" class="col-sm-3 control-label">
					{l s='Mode' mod='paypalmx'}
				</label>
				<div class="col-sm-4">
					<input type="radio" name="paypal_mx_sandbox" id="paypal_mx_sandbox_on" value="0"{if $paypal_mx_configuration.PAYPAL_MX_SANDBOX == 0} checked="checked"{/if} /> <label for="paypal_mx_sandbox_on" class="resetLabel">{l s='Live' mod='paypalmx'}</label>
					<input type="radio" name="paypal_mx_sandbox" id="paypal_mx_sandbox_off" value="1"{if $paypal_mx_configuration.PAYPAL_MX_SANDBOX == 1} checked="checked"{/if} /> <label for="paypal_mx_sandbox_off" class="resetLabel">{l s='Test (Sandbox)' mod='paypalmx'}</label>
					<p>{l s='Use the links below to retreive your PayPal API credentials:' mod='paypalmx'}<br />
					<a onclick="window.open(this.href, '1369346829804', 'width=415,height=530,toolbar=0,menubar=0,location=0,status=0,scrollbars=0,resizable=0,left=0,top=0');
						return false;" href="https://www.paypal.com/us/cgibin/webscr?cmd=_get-api-signature&generic-flow=true" class="paypal_mx-module-btn">{l s='Live Mode API' mod='paypalmx'}</a>&nbsp;&nbsp;&nbsp;//&nbsp;&nbsp;&nbsp;<a onclick="window.open(this.href, '1369346829804', 'width=415,height=530,toolbar=0,menubar=0,location=0,status=0,scrollbars=0,resizable=0,left=0,top=0');
						return false;" href="https://www.sandbox.paypal.com/us/cgi-bin/webscr?cmd=_get-api-signature&generic-flow=true" class="paypal_mx-module-btn">{l s='Sandbox Mode API' mod='paypalmx'}</a></p>
				</div>
			</div>

			<div class="form-group required">
				<label for="paypal_mx_account" class="col-sm-3 control-label">
						{l s='PayPal Business Account:' mod='paypalmx'}
				</label>
				<div class="col-sm-4">
					<input type="text" name="paypal_mx_account" value="{if $paypal_mx_configuration.PAYPAL_MX_ACCOUNT}{$paypal_mx_configuration.PAYPAL_MX_ACCOUNT|escape:'htmlall':'UTF-8'}{/if}" class="form-control" />
				</div>
			</div>

			<div class="form-group required">
				<label for="paypal_mx_api_username" class="col-sm-3 control-label">
					{l s='PayPal API Username:' mod='paypalmx'}
				</label>
				<div class="col-sm-4">
					<input type="text" name="paypal_mx_api_username" value="{if $paypal_mx_configuration.PAYPAL_MX_API_USERNAME}{$paypal_mx_configuration.PAYPAL_MX_API_USERNAME|escape:'htmlall':'UTF-8'}{/if}" class="form-control"/>
				</div>
			</div>

			<div class="form-group required">
				<label for="paypal_mx_api_password" class="col-sm-3 control-label">
					{l s='PayPal API Password:' mod='paypalmx'}
				</label>
				<div class="col-sm-4">
					<input type="password" name="paypal_mx_api_password" value="{if $paypal_mx_configuration.PAYPAL_MX_API_PASSWORD}{$paypal_mx_configuration.PAYPAL_MX_API_PASSWORD|escape:'htmlall':'UTF-8'}{/if}" class="form-control"/>
				</div>
			</div>

			<div class="form-group required">
				<label for="paypal_mx_api_signature" class="col-sm-3 control-label">
					{l s='PayPal API Signature:' mod='paypalmx'}
				</label>
				<div class="col-sm-4">
					<input type="password" name="paypal_mx_api_signature" value="{if $paypal_mx_configuration.PAYPAL_MX_API_SIGNATURE}{$paypal_mx_configuration.PAYPAL_MX_API_SIGNATURE|escape:'htmlall':'UTF-8'}{/if}" class="form-control"/>
				</div>
			</div>
		</fieldset>
		<fieldset>
			<h4 class="sep-title">{l s='PayPal Express Checkout button settings:' mod='paypalmx'}</h4>

			<div class="form-group">

				<label for="paypal_mx_checkbox_product" class="col-sm-3 control-label">
					{l s='Display button on' mod='paypalmx'}
				</label>
				<div class="col-sm-4 PT2">
					<input type="checkbox" name="paypal_mx_checkbox_product"{if $paypal_mx_configuration.PAYPAL_MX_EXP_CHK_PRODUCT} checked="checked"{/if} /> 
					<label for="paypal_mx_checkbox_product" class="resetLabel">{l s='Product page' mod='paypalmx'}</label> 
					
					<input type="checkbox" name="paypal_mx_checkbox_shopping_cart"{if $paypal_mx_configuration.PAYPAL_MX_EXP_CHK_SHOPPING_CART} checked="checked"{/if} />
					<label for="paypal_mx_checkbox_shopping_cart}" class="resetLabel">{l s='Shopping Cart' mod='paypalmx'}</label>
				</div>
			</div>

			<div class="form-group">
				<label for="paypal_mx_checkbox_border_color" class="col-sm-3 control-label">
					{l s='Button border color' mod='paypalmx'}
				</label>
				<div class="col-sm-4">
					<input class="colorSelector form-control" type="text" id="paypal_mx_checkbox_border_color" name="paypal_mx_checkbox_border_color" value="{$paypal_mx_configuration.PAYPAL_MX_EXP_CHK_BORDER_COLOR|escape:'htmlall':'UTF-8'}" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label"></label>
				<div class="col-sm-4 col-sm-offset-3">
					<span class="small"><sup class="warn">*</sup> {l s='Required fields' mod='paypalmx'}</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label"></label>
				<div class="col-sm-4 ">
					<input type="submit" name="SubmitBasicSettings" class="btn btn-primary" value="{l s='Save settings' mod='paypalmx'}" />
				</div>
			</div>
		</fieldset>
	</form>
</div>
</div>
<script type="text/javascript">
	{literal}
		$(document).ready(function() {
			$('#content table.table tbody tr th span').html('paypalmx');
		});
	{/literal}
</script>