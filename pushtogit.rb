#!/usr/bin/env ruby
class Pushtogit
  def gitAdd
    `git add --all :/`
    # puts('please put id:eg APOWER-1234 ')
    # gitid=gets.chomp
    gitid=`date`
    puts('please put content:')
    gitcontent=gets.chomp
    `git commit -m \"[#{gitid}]fixed\n  Content:#{gitcontent}.\"`
    if system 'git branch -r'
      puts('input branch :')
      branch=gets.chomp
      `git push -u origin HEAD:refs/for/#{branch}`

    end
  end

  if __FILE__ == $0
    su=Pushtogit.new
    su.gitAdd
  end
end