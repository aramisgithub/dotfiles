require 'rubygems'
require 'rake'

desc "Install the dotfiles as symlinks in $HOME directory"
task :install => 'dotfiles:install'
task :default => 'dotfiles:install'

namespace :dotfiles do
  task :install do
    replace_all = false
    Dir['*'].each do |file|
      next if %w[Rakefile Brewfile Pipfile Gemfile tex install README.md iterm2 vale].include? file

      if File.exist?(File.join(ENV['HOME'], ".#{file}"))
        if replace_all
          replace_file(file)
        else
          print "Overwrite ~/.#{file}? [ynaq] "
          case $stdin.gets.chomp
          when 'a'
            replace_all = true
            replace_file(file)
          when 'y'
            replace_file(file)
          when 'q'
            exit
          else
            puts "Skipping ~/.#{file}"
          end
        end
      else
        link_file(file)
      end
    end
  end
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "Linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

