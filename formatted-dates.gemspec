# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{formatted-dates}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Campbell"]
  s.date = %q{2011-02-07}
  s.description = %q{A Rails plugin that provides _formatted methods for date fields.}
  s.email = %q{paul@rslw.com}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "CHANGELOG",
    "MIT-LICENSE",
    "README.textile",
    "Rakefile",
    "VERSION",
    "formatted-dates.gemspec",
    "init.rb",
    "lib/formatted-dates.rb",
    "lib/formatted_date.rb",
    "spec/formatted_date_spec.rb"
  ]
  s.homepage = %q{http://github.com/paulca/formatted-dates}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{A simple acts_as style plugin for easily formatting of dates within Rails models}
  s.test_files = [
    "spec/formatted_date_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

