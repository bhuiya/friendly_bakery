require 'sinatra'
require './class'
require 'mailgun'

    get ('/') do
      erb :index
    end
    get ('/home') do
      erb :index
    end

    get ('/muffin') do
          @banana_muffin= Muffin.new('Banana Muffins', 'Banana, Raisin and Bran Muffins. The bananas and raisins team up to add extra flavour and moistness to these hearty muffins', '$2.99')
          @chocolate_muffin= Muffin.new('Dark Chocolate Muffins', 'This crowd-pleasing recipe is chocolately but not too sweet making these muffins perfect for breakfast or any other time of day', '$3,99')
          @strawberry_muffin= Muffin.new('Strawberry Shortcake Muffins','All the flavor and richness of strawberry shortcake in muffin form', '$2,99' )

          erb :muffin
    end
    get ('/cakes') do
        @strawberry_cake= Cakes.new('Strawberry Cake', 'Description: 1 kg cake is made with a moist vanilla sponge that has been filled with vanilla cream and fresh strawberries', '$150,00')
        @vanilla_cake= Cakes.new('Vanilla Cake', 'This cake is something special, living up to its ethereal name, with a serious punch of vanilla flavor', '$200,00')
        @chocolate_cake= Cakes.new('Chocolate Cake','All the flavor and richness of strawberry shortcake in muffin form', '$100,00' )
        erb :cakes
     end

     get ('/cookies') do

        @peanut_butter= Cookies.new('Peanut Butter Cookies', ' These soft and chewy peanut buttery cookies are the best!', '$6,99')
        @oatmeal_raisin= Cookies.new('Oatmeal Raisin Cookies', 'These are the best oatmeal cookies. The secret is in the soaking of the raisins', '$4,99')
        @chocolate_brownies= Cookies.new('Chocolate Brownies','This brownie recipe strikes a perfect balance between fudge-style and cakey brownies, and also produces a wonderful crust', '$4,99' )
        erb :cookies

      end

      get ('/sign_up') do
            erb :sign
      end
      post ('/email')do
          mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'], 'api.mailgun.net','v3',false,false)
          message_params =  { from: 'badruduja.bhuiya@gmail.com',
                    to:   'bhuiya.badruduja@gmail.com',
                    subject: 'friendly bakery',
                    text:    "list of prices \n"+
                              "Name: Banana Muffins Price: $2.99 \n"+
                              "Name: Dark Chocolate Muffins Price: $3,99 \n" +
                              "Name: Strawberry Shortcake Muffins Price: $2,99 \n \n" +
                              "Name:Strawberry Cake price: $150,00 \n" +
                              "Vanilla Cake price: $200,00 \n"+
                              "Chocolate Cake price: $100,00 \n \n" +
                              "Peanut Butter Cookies price: $6,99 \n  "


                  }

        mg_client.send_message(ENV['MAILGUN_API_DOMAIN'], message_params)
        redirect '/'
end
