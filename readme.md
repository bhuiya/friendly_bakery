# Friendly Bakery

## Goal
To create a fullstack bakery website that displays information on cookies, cakes and muffins offered for sale as well as enables someone to receive a catalog of items sold via email.

### Heroku Deployment
<https://https://badrubakery.herokuapp.com//>


## Built With:
* Ruby Sinatra
* External API
* HTML5
* Sass
* Bootstrap
* Deploying to Heroku

## Features
* Responsive design
* Utilizes ERB (Embedded Ruby) to generate a layout and templates
* Utilizes Mailgun API to send email to user
* Sends an eye-chatching, stylized email to users who sign up


### Learning Objectives:  

Upon successful completion of this project, the student will demonstrate their understanding of how to use API Wrappers in Ruby as well how to create a website using the Sinatra microframework.

### Instructions:

Your friend is a baker who recently had a grand opening of their store. Unfortunately, the turnout was less than ideal and your friend suggested creating a website. The goal is to improve the store’s online presence and hopefully increase foot traffic to the store. Naturally, your friend turns to you for help and hands you some starting suggestions in a google document.

### Client Suggestions:

* I want it to look and feel like a bakery website
* The front page should
  * provide information about the bakery
  * have links to pages where you can see
    * all cookies
    * all cakes
    * all muffins
* Each item sold should have
  * a description
  * a price
* There should be a way for a person on the site to receive an email with a catalog of all items sold

### Challenge:

In programming, in order to not repeat yourself, sometimes we have to store our data in a universal format that can be utilized in multiple areas. This is similar to how you would write recipe instructions down so in the future you can just use that as a template.

That all being said, try the following:

1. Create one class per generic category of item sold in the bakery

* Cookie class
* Cake class
* Muffin class
* Use these classes to create 1 object per item being sold (e.g if you have 3 cookies for sale you would create 3 Cookie objects based on one Cookie class)
* Each item should have the following attributes
* Description
* Price

These objects represent digital versions of cookies, so now use these objects as data that you can utilize when displaying information about your cookies, cakes and muffins.

Try using these objects to

* display information on price and description on the subcategory pages
* generate the catalog email to send to the requesting user

### Completion Requirements:

The completed assignment should:

* fulfill the design needs of the user
  * it must look and feel like a bakery website
* have a front page that links out to subcategory pages
* have a page listing all cookies sold
* have a page listing all muffins sold
* have a page listing all cakes sold
* use the Sendgrid API to send an email to the user’s email with a catalog of all items sold
  * API key should be stored in an environment variable
