<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Debit Card Payment</title>
    
    <!-- Include Stripe.js -->
    <script src="https://js.stripe.com/v3/"></script> 
    
    <!-- Embedded CSS styles -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .payment-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        #card-element {
            background-color: #f8f8f8;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        #card-errors {
            color: #fa755a;
            margin-top: 10px;
            text-align: center;
        }

        #submit-button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }

        #submit-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="payment-container">
        <h2>Debit Card Payment</h2>
        <form id="payment-form">
            <div id="card-element"><!-- Stripe will inject the Card Element here --></div>
            <div id="card-errors" role="alert"></div>
            <button type="submit" id="submit-button">Pay</button>
        </form>
    </div>

    <script>
        // Your Stripe public key
        var stripe = Stripe('YOUR_STRIPE_PUBLIC_KEY');

        // Set up Stripe.js and Elements to use in checkout form
        var elements = stripe.elements();
        var card = elements.create('card', {
            style: {
                base: {
                    color: '#32325d',
                    fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
                    fontSmoothing: 'antialiased',
                    fontSize: '16px',
                    '::placeholder': {
                        color: '#aab7c4'
                    }
                },
                invalid: {
                    color: '#fa755a',
                    iconColor: '#fa755a'
                }
            }
        });

        // Add an instance of the card Element into the `card-element` <div>
        card.mount('#card-element');

        // Handle form submission
        var form = document.getElementById('payment-form');
        form.addEventListener('submit', function(event) {
            event.preventDefault();

            stripe.createToken(card).then(function(result) {
                if (result.error) {
                    // Show error in #card-errors
                    var errorElement = document.getElementById('card-errors');
                    errorElement.textContent = result.error.message;
                } else {
                    // Send the token to your server
                    stripeTokenHandler(result.token);
                }
            });
        });

        // Submit the token and other form data to your server
        function stripeTokenHandler(token) {
            var form = document.getElementById('payment-form');

            // Insert the token ID into the form so it gets submitted to the server
            var hiddenInput = document.createElement('input');
            hiddenInput.setAttribute('type', 'hidden');
            hiddenInput.setAttribute('name', 'stripeToken');
            hiddenInput.setAttribute('value', token.id);
            form.appendChild(hiddenInput);

            // Submit the form
            form.submit();
        }
    </script>
</body>
</html>

