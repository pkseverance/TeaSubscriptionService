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
