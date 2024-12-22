# frozen_string_literal: true

require_relative "lib/icono_rails/version"

Gem::Specification.new do |spec|
  spec.name = "icono_rails"
  spec.version = IconoRails::VERSION
  spec.authors = ["Aristóteles"]
  spec.email = ["aristotelesbr@gmail.com"]

  spec.summary = "Simple and effective icon management for Rails applications."
  spec.description = "The simple way to manage icons in yout Rails application."
  spec.homepage = "https://rubygems.org/gems/icono_rails"
  spec.license = "MIT"

  spec.metadata = {
    "allowed_push_host" => "https://rubygems.org",
    "changelog_uri" => "https://github.com/aristotelesbr/icono_Rails/blob/master/changelog.md",
    "homepage_uri" => "https://rubygems.org/gems/icono_rails",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/aristotelesbr/icono_rails"
  }

  spec.required_ruby_version = ">= 3.0.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
