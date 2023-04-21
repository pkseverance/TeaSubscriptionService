# Tea Subscription API

This is a REST API for a hypothetical tea based e-commerce website, written in Ruby On Rails. The application allows users to sign up for a mail-order subscription service conisting of either monthly or yearly deliveries of different teas.

# Database Schema

![image](https://user-images.githubusercontent.com/78667757/233504518-3c40d8ae-0de7-4cee-83df-3423bb01b074.png)

# Getting Started

1. Clone the repository:
   ```
   git clone https://github.com/pkseverance/TeaSubscriptionService.git
   ```
2. Install the necessary gems:
   ```
   bundle install
   ```

3. Set up the database:
   ```
   rails db:{create,migrate,seed}
   ```  
   
4. Run the test suite (optional):
   ```
   bundle exec rspec
   ```

5. Start the server:
   ```
   rails server
   ```
   
# Endpoints

| Endpoint | Method | Description |
| -------- | ------ | ----------- |
| `/api/v1/customer_subscriptions` | POST | Sign up a customer for a subscription. A json body consisting of both the `customer_id` and `subscription_id` must be passed in this request. The customer subscription `status` will be set to `true` by default. |
| `/api/v1/customer_subscriptions/:id` | PATCH | Update the `status` of an existing customer description with either `true` or `false`. A json body conisting of `customer_id`, `subscription_id`, and `status`, must be passed in this response. |
| `/api/v1/customers/:customer_id/subscriptions` | GET | Get all of a customer's subscriptions, both active and cancelled.                |
