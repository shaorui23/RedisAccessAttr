# -*- encoding: utf-8 -*-
require File.expand_path('../lib/attr_access_redis/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["ShaoRui"]
  gem.email         = ["shaorui23@gmail.com"]
  gem.description   = %q{ Let redis attrbitues being rails attr_accessible attrbiutes, which can be use to connect to simple form }
  gem.summary       = %q{a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "attr_access_redis"
  gem.require_paths = ["lib"]
  gem.version       = AttrAccessRedis::VERSION
end
