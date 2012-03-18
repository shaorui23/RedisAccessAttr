# AttrAccessRedis

Let redis attrbitues being rails attr_accessible attrbiutes, which can be use to connect to simple form

## Installation

Add this line to your application's Gemfile:

    gem 'attr_access_redis'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install attr_access_redis

## Usage

Add the following code to your model:
	
		class News < ActiveRecord::Base
				include AttrAccessRedis:Redis:AttrAccess
				attr_access_redis :attribute, :default => 1
		end

Use it in simpler form 
		
		redis_attribute     #return value
		redis_attribute=		#assign value

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
