using Stripe;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;


namespace StripeDemo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Global Configuration
            StripeConfiguration.ApiKey = ConfigurationManager.AppSettings["API_KEY"];

            StripeConfiguration.MaxNetworkRetries = 2;
        }

        protected void PlaceOrder_Click(object sender, EventArgs e)
        {
            var totalPrice = int.Parse(hdnTotalPrice.Value) * 100;

            #region Create a Payment Method
            var paymentMethodCreateOptions = new PaymentMethodCreateOptions
            {
                Type = "card",
                Card = new PaymentMethodCardOptions
                {
                    Number = cardnumber.Value,
                    ExpMonth = long.Parse(expiryMonth.Value),
                    ExpYear = long.Parse(expiryYear.Value),
                    Cvc = cvvCode.Value,
                },
            };
            var paymentMethodService = new PaymentMethodService();
            PaymentMethod paymentMethodResult = null;
            try
            {
                paymentMethodResult = paymentMethodService.Create(paymentMethodCreateOptions);
            }
            catch (StripeException ex)
            {
                switch (ex.StripeError.Type)
                {
                    case "card_error":
                        // Log Error details to your application Database
                        // ex.StripeError.Code, ex.StripeError.Message, ex.StripeError.DocUrl, ex.StripeError.DeclineCode

                        // Show a friendly message to the end user
                        errorMessage.Text = "We are sorry, but we are unable to charge your credit card. Please ensure that " +
                            "your credit card details are right and you have enough funds in it and try again.";
                        break;
                    case "api_connection_error":
                        errorMessage.Text = "We are sorry but we couldn't charge your card. Please try again.";
                        break;
                    case "validation_error":
                        errorMessage.Text = "We are sorry, but we are unable to charge your credit card. Please ensure that " +
                            "your credit card details are right and you have enough funds in it and try again.";
                        break;
                    case "api_error": // 500 errors, very rare
                    case "authentication_error":
                    case "invalid_request_error":
                    case "rate_limit_error":
                    default:
                        // Unknown Error Type
                        errorMessage.Text = "We are sorry but we couldn't charge your card due to an issue on our end." +
                            "Our engineers have been notified. Please wait for 24 hours and retry again. If the issue " +
                            "isn't resovled still, then please call us on our customer care center at 1 800 123 1234.";
                        break;
                }
                errorMessage.Visible = true;
                return;
            }
            #endregion

            #region Create & Confirm PaymentIntent OR Charge the card
            var paymentIntentCreateOptions = new PaymentIntentCreateOptions
            {
                Amount = totalPrice,
                Currency = "sgd",
                PaymentMethodTypes = new List<string> { "card" },
                Confirm = true,
                PaymentMethod = paymentMethodResult.Id
            };
            var paymentIntentService = new PaymentIntentService();
            PaymentIntent paymentIntentResult;
            try
            {
                paymentIntentResult = paymentIntentService.Create(paymentIntentCreateOptions);
            }
            catch (StripeException ex)
            {
                switch (ex.StripeError.Type)
                {
                    case "card_error":
                        // Log Error details to your application Database
                        // ex.StripeError.Code, ex.StripeError.Message, ex.StripeError.DocUrl, ex.StripeError.DeclineCode

                        // Show a friendly message to the end user
                        errorMessage.Text = "We are sorry, but we are unable to charge your credit card. Please ensure that " +
                            "your credit card details are right and you have enough funds in it and try again.";
                        break;
                    case "api_connection_error":
                        errorMessage.Text = "We are sorry but we couldn't charge your card. Please try again.";
                        break;
                    case "validation_error":
                        errorMessage.Text = "We are sorry, but we are unable to charge your credit card. Please ensure that " +
                            "your credit card details are right and you have enough funds in it and try again.";
                        break;
                    case "api_error": // 500 errors, very rare
                    case "authentication_error":
                    case "invalid_request_error":
                    case "rate_limit_error":
                    default:
                        // Unknown Error Type
                        errorMessage.Text = "We are sorry but we couldn't charge your card due to an issue on our end." +
                            "Our engineers have been notified. Please wait for 24 hours and retry again. If the issue " +
                            "isn't resovled still, then please call us on our customer care center at 1 800 123 1234.";
                        break;
                }
                errorMessage.Visible = true;
                return;
            }
            #endregion

            #region Show success Message
            successMessage.Text = string.Format("<h4>Congratulations! We have successfully received your order.</h4>" +
                "<br/>Please save the Payment Intent ID {1} and the Charge ID {2} safely in case of a dispute.", 
                int.Parse(hdnTotalPrice.Value), paymentIntentResult.Id, paymentIntentResult.Charges.FirstOrDefault().Id);
            successMessage.Visible = true;
            #endregion
        }
    }
}