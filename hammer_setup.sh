cd ~

git clone https://github.com/Katello/hammer-cli-katello.git
git clone https://github.com/theforeman/hammer-cli.git
git clone https://github.com/theforeman/hammer-cli-foreman.git
git clone https://github.com/theforeman/hammer-cli-foreman-tasks.git

rvm install 1.9.3

cd ~/config_settings
mkdir -p ~/.hammer/cli.modules.d
sudo mkdir /var/log/hammer/
sudo touch /var/log/hammer/hammer.log
sudo chmod 666 /var/log/hammer/hammer.log
cp Gemfile_copy.local ~/hammer-katello-cli/Gemfile.local
cp foreman_copy.yml ~/.hammer/cli.modules.d/foreman.yml
cp katello_copy.yml ~/.hammer/cli.modules.d/katello.yml

cd ~/hammer-cli-katello
echo "1.9.3" > .ruby-version
echo "hammer" > .ruby-gemset
cd ..; cd -

gem install bundler
bundle install

echo "Remeber to bundle exec hammer -vh when the rails server is on!"
