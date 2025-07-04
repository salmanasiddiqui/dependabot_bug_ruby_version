# frozen_string_literal: true

require_relative "lib/dependabot_bug_ruby_version/version"

Gem::Specification.new do |spec|
  spec.name = "dependabot_bug_ruby_version"
  spec.version = DependabotBugRubyVersion::VERSION
  spec.authors = ["Salman"]
  spec.email = ["dummy@example.com"]

  spec.summary = ""
  spec.description = ""
  spec.homepage = "https://github.com/salmanasiddiqui/dependabot_bug_ruby_version"
  spec.license = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/salmanasiddiqui/dependabot_bug_ruby_version"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 3.0"
  spec.add_dependency "google-protobuf", ">= 3", "< 5"
  spec.add_dependency "i18n", "~> 1.0"
  spec.add_dependency "zeitwerk", "~> 2.6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
