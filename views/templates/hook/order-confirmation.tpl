{*
** @author PrestaShop SA <contact@prestashop.com>
** @copyright  2007-2014 PrestaShop SA
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
	{l s='Felicidades! Su pago está en proceso de verificación, y su orden ha sido guardada con el número' mod='paypalmx'}{if isset($paypal_mx_order.reference)} {l s='de referencia' mod='paypalmx'} <b>{$paypal_mx_order.reference|escape:html:'UTF-8'}</b>{else} {l s='the ID' mod='paypalmx'} <b>{$paypal_mx_order.id|escape:html:'UTF-8'}</b>{/if}.
</div>
{else}
<div class="error">
	{l s='Desafortunadamente ha ocurrido un error durante la transacción .' mod='paypalmx'}<br /><br />
	{l s='Por favor verifique nuevamente los datos de su tarfeta de crédito.' mod='paypalmx'}<br /><br />
{if isset($paypal_mx_order.reference)}
	({l s='Your Order\'s Reference:' mod='paypalmx'} <b>{$paypal_mx_order.reference|escape:html:'UTF-8'}</b>)
{else}
	({l s='ID de su orden:' mod='paypalmx'} <b>{$paypal_mx_order.id|escape:html:'UTF-8'}</b>)
{/if}
</div>
{/if}