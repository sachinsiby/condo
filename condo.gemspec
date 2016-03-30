Gem::Specification.new do |s|
  s.name    = 'condominium'
  s.version = '0.0.0'
  s.date    = '2016-03-29'
  s.summary = 'Shared Database/ Shared Schema Multi Tenancy'
  s.authors = ['Sachin Siby']
  s.email   = 'sachinsiby@gmail.com'
  s.files   = Dir['{lib}/**/*.rb']
  s.license = 'MIT'

  s.add_dependency 'activerecord', '~> 4.0'
  s.add_dependency 'request_store', '~> 1.1'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rake'
end
