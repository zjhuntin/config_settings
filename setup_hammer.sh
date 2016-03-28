cd ~

git clone https://github.com/Katello/hammer-cli-katello.git
git clone https://github.com/theforeman/hammer-cli.git
git clone https://github.com/theforeman/hammer-cli-foreman.git
git clone https://github.com/theforeman/hammer-cli-foreman-tasks.git

rvm install 1.9.3

cd hammer-cli-katello
echo "1.9.3" > .ruby-version
echo "hammer" > .ruby-gemset
cd ..; cd -

cd ~/config_settings

cp Gemfile_hammer_katello.local ~/hammer-katello-cli/Gemfile.local

gem install bundler
bundle install

mkdir -p ~/.hammer/cli.modules.d

cp foreman_copy.yml ~/.hammer/cli.modules.d/foreman.yml

cp katello_copy.yml ~/.hammer/cli.modules.d/katello.yml

bundle exec hammer vh
