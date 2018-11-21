# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'breakers'
  spec.version       = '1.0.0'
  spec.authors       = ['Aubrey Holland']
  spec.email         = ['aubrey@adhocteam.us']

  spec.summary       = 'Handle outages to backend systems with a Faraday middleware'
  spec.description   = 'This is a Faraday middleware that detects backend outages and reacts to them'
  spec.homepage      = 'https://github.com/department-of-veterans-affairs/breakers'
  spec.license       = 'CC0-1.0'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', ['>= 0.7.4', '< 0.12']
  spec.add_dependency 'multi_json', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_development_dependency 'byebug', '~> 9.0'
  spec.add_development_dependency 'fakeredis', '~> 0.6.0'
  spec.add_development_dependency 'rake', ['>= 11.0', '< 13.0']
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', ['>= 0.43.0', '< 0.53']
  spec.add_development_dependency 'simplecov', ['>= 0.12.0', '< 0.16']
  spec.add_development_dependency 'timecop', '~> 0.8.0'
  spec.add_development_dependency 'webmock', ['>= 2.1', '< 3.2.0']
end
