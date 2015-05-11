{*
** @author PrestaShop SA <contact@prestashop.com>
** @copyright  2007-2015 PrestaShop SA
** @version  Release: $Revision: 1.2.0 $
**
** International Registered Trademark & Property of PrestaShop SA
**
** Description: PayPal addon's Back-office template - Order details page
**
** This template is displayed in the Back-office, when you are looking the details of an order placed with PayPal
** It allows you no only to review the transaction details but also to perform a full or partial refund if the order was placed less than 60 days ago
**
*}
<div class="row">
	<div class="col-md-6">
		<div class="well">
		    <legend><img src="{$module_dir}logo.gif" alt="" /> {l s='PayPal transaction details' mod='paypalmx'}</legend>

			<table cellpadding="0" cellspacing="0" class="table">
				<tr>
					<td>{l s='Method' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.source|escape:'htmlall':'UTF-8'}</td>
				</tr>
				<tr>
					<td>{l s='Transaction ID' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.id_transaction|escape:'htmlall':'UTF-8'}</td>
				</tr>
				<tr>
					<td>{l s='Amount charged' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.amount|escape:'htmlall':'UTF-8'} {$paypal_mx_transaction_details.currency|escape:'htmlall':'UTF-8'}</td>
				</tr>
				<tr>
					<td>{l s='Mode' mod='paypalmx'}</td>
					<td>{if $paypal_mx_transaction_details.mode == 'test'}<span class="warn">{l s='Sandbox (Test)' mod='paypalmx'}</span>{else}{l s='Live' mod='paypalmx'}{/if}</td>
				</tr>
				<tr>
					<td>{l s='Date' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.date_add|escape:'htmlall':'UTF-8'}</td>
				</tr>
				{if isset($paypal_mx_transaction_details.cc_type) && $paypal_mx_transaction_details.cc_type != ''}
				<tr>
					<td>{l s='Credit card type' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.cc_type|escape:'htmlall':'UTF-8'}</td>
				</tr>
				{/if}
				{if isset($paypal_mx_transaction_details.cc_exp) && $paypal_mx_transaction_details.cc_exp != ''}
				<tr>
					<td>{l s='Credit expiration date' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.cc_exp|escape:'htmlall':'UTF-8'}</td>
				</tr>
				{/if}
				{if isset($paypal_mx_transaction_details.cc_last_digits) && $paypal_mx_transaction_details.cc_last_digits != ''}
				<tr>
					<td>{l s='Credit card last 4 digits' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.cc_last_digits|escape:'htmlall':'UTF-8'}</td>
				</tr>
				{/if}
				{if isset($paypal_mx_transaction_details.cvc_check) && $paypal_mx_transaction_details.cvc_check != ''}
				<tr>
					<td>{l s='CVC Check' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.cvc_check|escape:'htmlall':'UTF-8'}</td>
				</tr>
				{/if}
				{if isset($paypal_mx_transaction_details.fee) && $paypal_mx_transaction_details.fee != '0.00'}
				<tr>
					<td>{l s='PayPal fees' mod='paypalmx'}</td>
					<td>{$paypal_mx_transaction_details.fee|escape:'htmlall':'UTF-8'} {$paypal_mx_transaction_details.currency|escape:'htmlall':'UTF-8'}</td>
				</tr>
				{/if}
			</table>
		</div>
	</div>

	<div class="col-md-6">
		<div class="well">
			<legend>
				<img src="{$module_dir}logo.gif" alt="" />
				{l s='Proceed to a full or partial refund via PayPal' mod='paypalmx'}
			</legend>
			{if isset($paypal_mx_refund) && $paypal_mx_refund}
				<div class="alert alert-success">{l s='Refund successfully performed' mod='paypalmx'}</div>
			{else}
				{if isset($paypal_mx_refund) && !$paypal_mx_refund}
					<div class="alert alert-danger">{l s='An error occured during this refund' mod='paypalmx'}{if isset($paypal_mx_refund_error) && $paypal_mx_refund_error} - {$paypal_mx_refund_error|escape:'htmlall':'UTF-8'}{/if}</div>
				{/if}
			{/if}
			{if $paypal_mx_more60d}
				<div class="alert alert-info">
					{l s='This order has been placed more than 60 days ago or no transaction details are available. Therefore, it cannot be refunded anymore.' mod='paypalmx'}
				</div>
			{/if}
			<table class="table" cellpadding="0" cellspacing="0">
				<tr>
					<th>{l s='Date' mod='paypalmx'}</th>
					<th>{l s='Amount refunded' mod='paypalmx'}</th>
				</tr>
				{assign var=total_refund value=0}
				{foreach from=$paypal_mx_refund_details item=refund_transaction}
				<tr>
					<td>{$refund_transaction.date_add|escape:'htmlall':'UTF-8'} </td>
					<td>{$refund_transaction.amount|escape:'htmlall':'UTF-8'} {$refund_transaction.currency|escape:'htmlall':'UTF-8'} </td>
				</tr>
				{assign var=total_refund value = $total_refund + $refund_transaction.amount}
				{/foreach}
				<tr>
					<td>{l s='Total refunded:' mod='paypalmx'}</td>
					<td>{$total_refund|escape:'htmlall':'UTF-8'} {$refund_transaction.currency|escape:'htmlall':'UTF-8'} </td>
				</tr>
			</table>
			<br />
			{if $paypal_mx_transaction_details.amount == $total_refund && $total_refund}
				{l s='This order has been fully refunded.' mod='paypalmx'}
			{else}
				<form method="post" action="" name="refund" class="form-inline">
					<input type="hidden" name="id_transaction" value="{$paypal_mx_transaction_details.id_transaction|escape:'htmlall':'UTF-8'}" />
					<div class="form-group">
						<label class="control">
							{l s='Refund:' mod='paypalmx'} 
						</label>
						<input type="text" class="" name="refund_amount" value="{($paypal_mx_transaction_details.amount-$total_refund)|floatval}" />
					</div>
					<div class="form-group">
						<input type="submit" name="process_refund" value ="{l s='Process Refund' mod='paypalmx'}" class="btn btn-primary" />
					</div>
				</form>
			{/if}
		</div>
	</div>
</div>
