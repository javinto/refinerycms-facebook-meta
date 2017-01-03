# RefinerycmsFacebookMeta

__A RefineryCMS 3.x extension to add Facebook Open Graph meta tags__

## Requirements

* refinerycms >= 3.0.0

## Features

* Add Facebooks og:title, og:description, og:image, og:type, og:url, fb:app_id, og:locale tags to pages and extension objects
* Load Facebook API Javascript code with custom APP ID

## Install

Add this line to your application's `Gemfile`

```ruby
gem 'refinerycms-facebook-meta', github: "javinto/refinerycms-facebook-meta", branch: "master"
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

To add Facebook mega tags - or any other default SEO meta tags - to custom extension objects, just use the #is_seo_meta declaration in your model. Do not forget to add the meta properties :og_title, :og_description, :og_image_id, :og_type to your permitted_parameters in the extension controller.

FacebookMeta will use the @canonical path to build the og:url. Do not forget to set this variable in your custom extensions.

To show them in every page of your website when available just include the following line in the refinery/_head.html view. 
```erb
<%= render 'facebook_meta_tags' %>
```

To include the Facebook Javascript API code on every page include the following line in your layouts/application.html layout, just beneath your opening BODY tag. You must provide a Facebook App ID to use it. See config/initializers/facebook_meta.rb
```erb
<%= render 'facebook_meta_js' %>
```

## License

Refinery is released under the MIT license.