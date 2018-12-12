
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rick_and_morty_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "rick_and_morty_cli"
  spec.version       = RickAndMortyCli::VERSION
  spec.authors       = ["'Linda Chang'"]
  spec.email         = ["'lindachang186@gmail.com'"]

  spec.summary       = %q{CLI for displaying info about the characters in the show Rick and Morty}
  spec.description   = %q{Scrapes a Rick and Morty API: https://rickandmortyapi.com/. User can search through a list of all characters that appear in all episodes of Rick and Morty.
  Character information will be available such as name and which episodes they appeared in.}
  spec.homepage      = "https://github.com/Lindachang186/rick_and_morty_cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #
  #   spec.metadata["homepage_uri"] = spec.homepage
  #   spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #   spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["rick_and_morty.rb"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "gem-release"
  spec.add_development_dependency "nokogiri"
end
