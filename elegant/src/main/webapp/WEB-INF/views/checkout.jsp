<link rel="icon" href="resources/images/logo2.ico">

<form name="checkoutForm" stripe-form="stripeCallback" ng-submit="onSubmit()" data-abide>

	<div ng-if="processing" us-spinner></div>

	<fieldset>
		<legend>Shipping Information</legend>

		<div class="row">

			<label class="large-12 columns">Name
				<input ng-model="name" type="text" placeholder="Name">
			</label>

			<label class="large-12 columns">Address
				<input ng-model="address" type="text" placeholder="Address">
			</label>
		</div>
	</fieldset>

	<fieldset>
		<legend>Payment Information</legend>

		<div class="row">
			<div class="large-6 columns" ng-class="{error: checkoutForm.number.$invalid}">
				<label>Card Information
					<input ng-model="number" name="number" payments-format="card" payments-validate="card"
					       placeholder="Card Number" type="text"/>
				</label>
				<small class="error">Invalid card number</small>
			</div>
			<div class="large-3 columns" ng-class="{error: checkoutForm.expiry.$invalid}">
				<label>Expiry
					<input ng-model="expiry" name="expiry" payments-format="expiry" payments-validate="expiry"
					       placeholder="Expiry" type="text"/>
				</label>
				<small class="error">Invalid date.</small>
			</div>
			<div class="large-3 columns" ng-class="{error: checkoutForm.cvc.$invalid}">
				<label>CVC
					<input ng-model="cvc" name="cvc" payments-format="cvc" payments-validate="cvc"
					       placeholder="CVC" type="text"/>
				</label>
				<small class="error">Invalid CVC.</small>
			</div>

			<div class="large-12 columns">
				<strong>
					Amount to pay: {{totalAmount}}$
				</strong>
			</div>
		</div>
	</fieldset>

	<alert ng-if="stripeError" type="'alert'" close="hideAlerts()">
		Stripe returned an error: {{stripeError}}
	</alert>

	<alert ng-if="stripeToken" close="hideAlerts()">
		Stripe successfully acquired! Token: {{stripeToken}}
	</alert>

	<div class="clearfix">
		<div class="right">
			<button class="cancel" ng-click="$dismiss();">Cancel</button>
			<button type="submit" ng-disabled="checkoutForm.$invalid">Place Order</button>
		</div>
	</div>

</form>
