> Connect to project

    - Get or create a project ( rails new unicorn )

    - Add to routes.rb: gem 'blorgh', path: 'engines/blorgh'

    - run: bundle

    -Mount in unicor project Routes: mount Blorgh::Engine, at: "/blog"

> Setup engine in project

    - It will copy migrations: bin/rails blorgh:install:migrations
    or
    copy all migrations ** : bin/rails railties:install:migrations

    bin/rails db:migrate
    -  f you would like to run migrations only from one engine, you can do it by specifying SCOPE:
        bin/rails db:migrate SCOPE=blorgh
    
    bin/rails server    

Notes:

> Errors:

    - Sprockets::Rails::Helper::AssetNotPrecompiled in Blorgh::Articles#index, solution:
        config/initializers/assets.rb
        Rails.application.config.assets.precompile += %w( blorgh/application.css )

<!-- Next part : Using a Class Provided by the Application-->

> Using a Class Provided by the Application

    - Create a model:
        bin/rails generate model user name:string
        bin/rails db:migrate

> This migration will need to be run on the application(add_author_id_to_blorgh_articles). To do that, it must first be copied using this command:

    bin/rails blorgh:install:migrations