5.times do |i|
    i += 1
    Step.create(
        task_id: 7,
        detail: "seedでの例文"
    )
  end
  
  Step.create(title: '1')
  Step.create(title: '2')
  Step.create(title: '3')
  Step.create(title: '4')
  Step.create(title: '5')