class Publish < Thor
  include Thor::Actions

  desc "example", "an example task"
  def example
    puts "I'm a thor task!"
  end

  desc "fix_titles", "fix the titles of the railsapp.github.com pages"
  def fix_titles
    puts "Fixing titles"
    path = '/Users/danielkehoe/code/railsapps/railsapps.github.com/'
    gsub_file path+'best-recommended-learning-rails-books-resources.html', /<title>best recommended learning rails books resources/, "<title>Best Resources for Learning Rails"
    gsub_file path+'index.html', /<title>Home &#183; RailsApps/, "<title>The RailsApps Project"
    gsub_file path+'installing-rails.html', /<title>installing rails/, "<title>Installing Rails"
    gsub_file path+'install-ruby.html', /<title>install ruby/, "<title>Install Ruby"
    gsub_file path+'managing-rails-versions-gems.html', /<title>managing rails versions gems/, "<title>Managing Rails Versions and Gems"
    gsub_file path+'openssl-certificate-verify-failed.html', /<title>openssl certificate verify failed/, "<title>OpenSSL Errors and Rails – Certificate Verify Failed"
    gsub_file path+'rails-3-2-example-gemfile.html', /<title>rails 3 2 example gemfile/, "<title>Example Gemfiles for Rails 3.2"
    gsub_file path+'rails-application-templates.html', /<title>rails application templates/, "<title>Rails Application Templates"
    gsub_file path+'rails-applications-from-examples.html', /<title>rails applications from examples/, "<title>Rails Applications Powered by the RailsApps Project"
    gsub_file path+'rails-checklist.html', /<title>rails checklist/, "<title>Checklist for a New Rails Application"
    gsub_file path+'rails-cleanup.html', /<title>rails cleanup/, "<title>Rails Cleanup: Remove Unneeded Files"
    gsub_file path+'rails-default-application-layout.html', /<title>rails default application layout/, "<title>Rails Application Layout for HTML5"
    gsub_file path+'rails-environment-variables.html', /<title>rails environment variables/, "<title>Configuring Rails Environment Variables"
    gsub_file path+'rails-error-you-have-already-activated.html', /<title>rails error you have already activated/, "<title>Rails Error: You have already activated"
    gsub_file path+'rails-examples-tutorials.html', /<title>rails examples tutorials/, "<title>Rails Tutorials, Examples, and Starter Apps"
    gsub_file path+'rails-git.html', /<title>rails git/, "<title>Rails with Git and GitHub"
    gsub_file path+'rails-google-analytics.html', /<title>rails google analytics/, "<title>Analytics for Rails: Google Analytics and Beyond"
    gsub_file path+'rails-haml.html', /<title>rails haml/, "<title>Haml and Rails"
    gsub_file path+'rails-heroku-tutorial.html', /<title>rails heroku tutorial/, "<title>Rails Heroku Tutorial"
    gsub_file path+'rails-html5-boilerplate.html', /<title>rails html5 boilerplate/, "<title>Guide to HTML5 Boilerplate for Rails Developers"
    gsub_file path+'rails-javascript-include-external.html', /<title>rails javascript include external/, "<title>Unholy Rails: Adding JavaScript to Rails"
    gsub_file path+'rails-product-planning.html', /<title>rails product planning/, "<title>Product Planning"
    gsub_file path+'rails-project-management.html', /<title>rails project management/, "<title>Project Management"
    gsub_file path+'rails-release-history.html', /<title>rails release history/, "<title>Ruby on Rails Release History"
    gsub_file path+'rails-send-email.html', /<title>rails send email/, "<title>Send Email with Rails"
    gsub_file path+'rails-tutorial.html', /<title>rails tutorial/, "<title>Rails Tutorial"
    gsub_file path+'rails.html', /<title>rails/, "<title>Recommended Rails Resources"
    gsub_file path+'ruby-and-rails.html', /<title>ruby and rails &#183; RailsApps/, "<title>Ruby and Rails"
    gsub_file path+'tutorial-rails-apps-composer.html', /<title>tutorial rails apps composer/, "<title>Guide to the Rails Apps Composer Gem"
    gsub_file path+'tutorial-rails-bootstrap-devise-cancan.html', /<title>tutorial rails bootstrap devise cancan/, "<title>Rails Tutorial &#183; Devise with CanCan and Twitter Bootstrap"
    gsub_file path+'tutorial-rails-devise-rspec-cucumber.html', /<title>tutorial rails devise rspec cucumber/, "<title>Rails Tutorial &#183; Devise with RSpec and Cucumber"
    gsub_file path+'tutorial-rails-recurly-subscription-saas.html', /<title>tutorial rails recurly subscription saas/, "<title>Rails Tutorial &#183; Membership Subscription or SaaS Site with Recurly"
    gsub_file path+'tutorial-rails-stripe-membership-saas.html', /<title>tutorial rails stripe membership saas/, "<title>Rails Tutorial &#183; Membership Subscription or SaaS Site with Stripe"
    gsub_file path+'tutorial-rails-mongoid-devise.html', /<title>tutorial rails mongoid devise/, "<title>Rails Tutorial &#183; Devise with MongoDB and Mongoid"
    gsub_file path+'tutorial-rails-mongoid-omniauth.html', /<title>tutorial rails mongoid omniauth/, "<title>Rails Tutorial &#183; OmniAuth"
    gsub_file path+'tutorial-rails-prelaunch-signup.html', /<title>tutorial rails prelaunch signup/, "<title>Rails Tutorial &#183; Startup Prelaunch Signup Site"
    gsub_file path+'tutorial-rails-subdomains.html', /<title>tutorial rails subdomains/, "<title>Rails Tutorial &#183; Subdomains with Devise"
    gsub_file path+'twitter-bootstrap-rails.html', /<title>twitter bootstrap rails/, "<title>Twitter Bootstrap and Rails"
    gsub_file path+'updating-rails.html', /<title>updating rails/, "<title>Updating Rails"
    gsub_file path+'what-is-ruby-rails.html', /<title>what is ruby rails/, "<title>What is Ruby on Rails?"
  end

  desc "update_old_articles", "replace old articles with new versions"
  def update_old_articles
    puts "Replacing old articles with new versions"
    path = '/Users/danielkehoe/code/railsapps/railsapps.github.com/'
  end

  desc "move_tutorials", "move the tutorials and replace with landing pages"
  def move_tutorials
    puts "Setting tutorial landing pages"
    path = '/Users/danielkehoe/code/railsapps/railsapps.github.com/'
    redirect_page = path+'landing-redirect.html'
    FileUtils.copy redirect_page, path+'tutorials-rails-bootstrap-devise-cancan.html'
    gsub_file path+'tutorials-rails-bootstrap-devise-cancan.html', /tutorials.railsapps.org\//, "tutorials.railsapps.org/rails3-bootstrap-devise-cancan"
    FileUtils.copy redirect_page, path+'tutorial-rails-bootstrap-devise-cancan.html'
    gsub_file path+'tutorial-rails-bootstrap-devise-cancan.html', /tutorials.railsapps.org\//, "tutorials.railsapps.org/rails3-bootstrap-devise-cancan"
    FileUtils.copy redirect_page, path+'tutorial-rails-stripe-membership-saas.html'
    gsub_file path+'tutorial-rails-stripe-membership-saas.html', /tutorials.railsapps.org\//, "tutorials.railsapps.org/rails-stripe-membership-saas"
    FileUtils.copy redirect_page, path+'tutorial-rails-recurly-subscription-saas.html'
    gsub_file path+'tutorial-rails-recurly-subscription-saas.html', /tutorials.railsapps.org\//, "tutorials.railsapps.org/rails-recurly-subscription-saas"
  end

end

