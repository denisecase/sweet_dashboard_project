# coding: utf-8

require "twitter"

def search(target)
  result = []
  (1..100).each do |i|
    result << Twitter.search(target, :page => i, :rpp => 100) rescue break
  end
  iemon(result.flatten.uniq.sort_by(&:created_at).map(&:attrs))
end

def iemon(h)
  [].tap do |result|
    h.each do |t|
      t["text"].sub!(/^RT @.+?: /, '')  if t["text"] =~ /^RT @.+?: /
      if f=result.select{|r|r[:text] == t["text"]}[0]
        f[:rt] += 1
      else
        r = {:rt => 0, :text => t["text"], :created_at => t["created_at"], :url => "https://twitter.com/#!/#{t["from_user"]}/status/#{t["id"]}" }
        result << r
      end
    end
  end
end