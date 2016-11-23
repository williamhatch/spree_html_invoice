Spree-Html-Invoice
=======

This extension provides a "Print Invoice" button on the Admin Orders view screen which opens a printable html page with the order details.

INSTALLATION
============

If you have improvements, please send pull though.

1. To install you need to add the following lines to your Gemfile (no external dependencies)
    ```ruby
    gem 'spree_html_invoice' , github: 'vinsol-spree-contrib/spree-html-invoice', branch: '3-1-stable'
    ```

2. Run bundler
    ```ruby
    bundle install
    ```

3. Configure your logo and footer text or more. It's easy as it's html.

4. Enjoy!


Configuration
==============

1. Set the logo path preference to include your store / company logo.
    ```ruby
    Spree::HtmlInvoice::Config.set(html_invoice_logo_path: <"company-logo.png">)
    ```
    Somewhere in your asset path

2. Override any of the partial templates. they are address, footer, totals, header, thanks , and the line_items. The whole tanks is wrapped in a thanks hook, so replace or add at will.

3. Set `Spree::HtmlInvoice::Config.set(:suppress_anonymous_address)` option to get blank addresses for anonymous email addresses (as created by my spree_last_address extension for empty/unknown user info)

4. Enable packaging slips, by setting
  ```ruby
  Spree::HtmlInvoice::Config.set(:print_buttons => "invoice,packaging_slip")  #comma separated list
  ```

  Use above feature for your own template if you want. For each button_name, define a subsection with header, print, and thanks, in your locale.

Contributions welcome

Testing
=======

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

Contributing
=========

1. Fork the repo.
2. Clone your repo.
3. Run `bundle install`.
4. Run `bundle exec rake test_app` to create the test application in `spec/test_app`.
5. Make your changes.
6. Ensure specs pass by running `bundle exec rspec spec`.
7. Submit your pull request.
