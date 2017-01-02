# RefinerycmsFacebookMeta

__An RefineryCMS 3.x extension to add Facebook Open Graph meta tags__

## Requirements

* refinerycms >= 3.0.0

## Features

* Add Facebooks og_title, og_description and og_image tags to pages and extension objects
* Load Facebook API Javascript code with custom APP ID

## Install

Add this line to your application's `Gemfile`

```ruby
gem 'refinerycms-facebook-meta', '~> 0.0.1', github: "refinery/refinerycms-facebook-meta", branch: "master"
```

Next run

```bash
bundle install
rails generate refinery:facebook-meta
rake db:migrate
```

## Configuration

See config/initializers/refinery/facebook-meta.rb

## Usage

The FacebookMeta tags are an extension to the SeoMeta tags that exists by default on Refinery pages.

To add Facebook mega tags - or any other default SEO meta tags - to custom extension objects, just use the #is_seo_meta declaration in your model. Do not forget to add the meta properties :og_title, :og_description, :og_image_id to you permitted_parameters in the extension controller.

To show them in every page of your website when available just include the following line in the refinery/_head.html view. 
```erb
<%= render 'facebook_meta_tags' %>
```

To include the Facebook Javascript API code on every page include the following line in your layouts/application.html layout.
```erb
<%= render 'facebook_meta_js' if @meta.present? && Refinery::FacebookMeta.config.fb_app_id.present? %>
```


## License

Refinery is released under the MIT license. See the [license.md file](license.md#readme) for details.