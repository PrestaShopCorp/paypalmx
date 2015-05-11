{*
** @author PrestaShop SA <contact@prestashop.com>
** @copyright  2007-2015 PrestaShop SA
**
** International Registered Trademark & Property of PrestaShop SA
**
** Description: PayPal order confirmation page
**
** This template is displayed to the customer upon order creation
** Products concerned: PayPal Payments Advanced, PayPal Express Checkout
** PayPal Payments Standard is not using this template and is redirecting the customer to their "Order History" page ("My account" section)
**
*}
{if $paypal_mx_order.valid == 1}
<div class="conf confirmation">
	{l s='Congratulations! Your payment is pending verification, and your order has been saved under' mod='paypalmx'}{if isset($paypal_mx_order.reference)} {l s='the reference' mod='paypalmx'} <b>{$paypal_mx_order.reference|escape:html:'UTF-8'}</b>{else} {l s='the ID' mod='paypalmx'} <b>{$paypal_mx_order.id|escape:html:'UTF-8'}</b>{/if}.
</div>
{else}
<div class="error">
	{l s='Unfortunately, an error occurred during the transaction.' mod='paypalmx'}<br /><br />
	{l s='Please double-check your credit card details and try again. If you need further assistance, feel free to contact us anytime.' mod='paypalmx'}<br /><br />
{if isset($paypal_mx_order.reference)}
	({l s='Your Order\'s Reference:' mod='paypalmx'} <b>{$paypal_mx_order.reference|escape:html:'UTF-8'}</b>)
{else}
	({l s='Your Order\'s ID:' mod='paypalmx'} <b>{$paypal_mx_order.id|escape:html:'UTF-8'}</b>)
{/if}
</div>
{/if}