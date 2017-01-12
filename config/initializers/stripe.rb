Rails.configuration.stripe = {
  :publishable_key => 'pk_test_XRFvjOZnxJhQE332NeQxzCdB',
  :secret_key      => 'sk_test_OohgRzH7jtiYc2MTa644LayB'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]