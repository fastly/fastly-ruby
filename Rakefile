require "bundler/gem_tasks"

# Override Bundler's default `release` task to avoid pushing git tags.
#
# Our release workflow is triggered by a tag push in GitHub Actions and
# publishes the gem using `rubygems/release-gem` (trusted publishing).
# The default Bundler task would also try to create and push a git tag,
# which conflicts with our workflow.
#
# Pattern adapted from:
# https://github.com/line/line-bot-sdk-ruby/pull/339

Rake::Task["release"].clear

desc "Build and push gem to RubyGems without pushing to source control"
task "release" => %w[build release:guard_clean release:rubygem_push] do
  puts "Built and pushed gem to RubyGems without pushing to source control."
end
