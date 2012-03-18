require "attr_access_redis/version"
require 'active_support/concern'
require 'redis'
require 'redis/objects'

module AttrAccessRedis
	module Redis
		module AttrAccess
			extend ActiveSupport::Concern
			include do
				include ::Redis::Objects
				after_create :initilize_attributes
			end

			module ClassMethods
				@@redis_attr = {}

				def attr_access_redis(attr, options = {})
					@@redis_attr[attr] = options.has_key?(:default) ? options[:default] : ""

					attr_accessible "redis_#{attr}"

					define_method "redis_#{attr}" do
						self.send(attr)#.value
					end

					define_method "redis_#{attr}=" do |value|
						#if attr.instance_of? Redis::List or attr.instance_of? Redis::Set
							self.send("#{attr}<<", value)
					  #end
					end
				end
				
				def get_redis_attributes
					@@redis_attr
				end
			end #ClassMethods

			module InstanceMethods
				
				protected

				def initilize_attributes
					self.class.get_redis_attributes.each do |attr, value|
						self.send("#{attr}<<", value)
					end
				end
			end #InstanceMethod
		end #AttrAccess
	end #Redis
end
