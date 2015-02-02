---
author_id: 1
title: Gems that Rock
description: Some of the gems Add Jam love when creating new Rails Projects. They form the core of the Jam Jar rails template.
---

Over the past year we've started many new rails projects. Each time we would experiment with different testing frameworks or  gems to improve our development workflow, eventually settling on a core set that we use 90% of the time.

We recently decided to build on this by creating a Rails template tailored to our needs (cleverly named the 'Jam Jar'). Using this template means that new rails projects will start tailored to our workflow.

![Jam Jar](/images/blog/jamjar.png "Jam Jar Logo")

The Jam Jar is still very much a work in progress and we'll be talking about it more in a future post. Below are some of the gems we love the most. I skipped out the more obvious ones like `rspec` or `factory_girls` but you can have a look at the full list on [Github](https://github.com/AddJam/jamjar). It would be really interesting to hear which gems you think we missed or disagree with, we're [@add_jam](https://twitter.com/add_jam) on Twitter.

##Annotate

####**TL;DR** Adds a comment to the top of your models showing each of the columns.
####[Github](https://github.com/ctran/annotate_models)

Annotate has become a must in all of our Rails projects. Running `annotate` in your rails project will add a summary of the schema at the top of the file. It can also be used to annotate routes, factory_girl factories, fixtures and a bunch more.

The example below from the github readme demonstrates it's usefulness.

``` ruby
# == Schema Info
#
# Table name: line_items
#
#  id                  :integer(11)    not null, primary key
#  quantity            :integer(11)    not null
#  product_id          :integer(11)    not null
#  unit_price          :float
#  order_id            :integer(11)
#

class LineItem < ActiveRecord::Base
```

##Quiet Assets

####**TL;DR** No more pipeline log messages.
####[Github](https://github.com/evrone/quiet_assets)

Another nice gem for development, `quiet_assets` mutes all of the log messages produced by the Rails asset pipeline so that you can see the ones that matter most.

##Byebug
####**TL;DR** breakpoints!
####[Github](https://github.com/deivid-rodriguez/byebug)

This one is indispensable! Just put `byebug` anywhere in your code and you'll get access to the REPL when execution reaches that line. Byebug is super easy to start using and supports all of the commands you'd expect like stepping over lines and into functions.

##Forgery
####**TL;DR** More than just lorem ipsum
####[Github](https://github.com/sevenwire/forgery)

I only came across this gem recently but it's definitely one that should be useful to most projects. Forgery allows you to generate anything from placeholder lorem ipsum text to addresses information, locations and personal information. We've been combining it with `factory_girls` to generate test models and for seeding our development database with reasonable values.

##Timecop
####**TL;DR** Time travel in your tests
####[Github](https://github.com/travisjeffery/timecop)

This gem is great for easily testing areas of your code that are dependent on the time or date. Timecop allows you to move through time, accelerate time or freeze time by overriding the responses from `Date`, `Time`, and `DateTime`.

##Active Model Serializers
####**TL;DR** Consisely specify how your models should be serialized
####[Github](https://github.com/rails-api/active_model_serializers)

This is probably the most well known gem on the list but it's worth pointing out anyway. AMS allows you to create serializers that specify which attributes and relations will be serialized. Say we have a model `Person(name: string, email:string, age:integer)` and the person has many `Comments`, our serializer could look like this:

``` ruby
class PersonSerializer < ActiveModel::Serializer
  attributes :name, :age
  has_many :comments
end
```

Then in our controller when we do

``` ruby
render json: @person
```

The returned json would only have the specified fields, skipping others like `created_at`, `updated_at`, and `email`.

This is the simplest solution we've come across for serialization. It's especially great if you're working with Ember, which has built in support for the json output of AMS through the `ActiveModelAdapter`.

##What else should we use?

What gems do you love that aren't in the Jam Jar? Drop me [an email](mailto:chris@addjam.com), [tweet me](http://twitter.com/chrisasaur) or better yet make a pull request for the [Jam Jar](https://github.com/AddJam/jamjar).
