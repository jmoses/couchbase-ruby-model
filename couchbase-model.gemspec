# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'couchbase/model/version'

Gem::Specification.new do |s|
  s.name        = 'jmoses-couchbase-model'
  s.version     = Couchbase::Model::VERSION
  s.author      = ['Couchbase', 'Jon Moses']
  s.email       = ['support@couchbase.com', 'jon@burningbush.us']
  s.homepage    = 'https://github.com/couchbase/couchbase-ruby-model'
  s.summary     = %q{Declarative interface to Couchbase. (Fork for connection-pool 2.0)}
  s.description = %q{ORM-like interface allows you to persist your models to Couchbase. This fork requires my forked couchbase client, which uses connection-pool 2.0 instead of 1.0}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'jmoses-couchbase', '~> 1.3.0'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'activesupport'
end
