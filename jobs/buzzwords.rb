buzzwords = ['App suggestions', 'Inquiries', 'Contracts', 'Releases', 'New widgets', 'New features', 'Added to pipeline', 'Cutsheets', 'Approved'] 
buzzword_counts = Hash.new({ value: 0 })

SCHEDULER.every '20s' do
  random_buzzword = buzzwords.sample
  buzzword_counts[random_buzzword] = { label: random_buzzword, value: (buzzword_counts[random_buzzword][:value] + 1) % 30 }
  
  send_event('buzzwords', { items: buzzword_counts.values })
end