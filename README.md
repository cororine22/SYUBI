<p align="center">
<img alt="logo" src="https://github.com/cororine22/SYUBI/blob/garage/garage/logo.png?raw=true">
</p>

<H4 align="center">
Progress management that allows intuitive grasp of task progress<br>
It is an application that can manage the progress of the double structure using Rails
</H4>

<p align="center">
<img alt="ruby" src="http://img.shields.io/badge/language-Ruby2.5.3-orange.svg?style=flat">
<img alt="gem" src="http://img.shields.io/badge/gem-2.0.2-orange.svg?style=flat">
<img alt="platform" src="http://img.shields.io/badge/platform-web-green.svg?style=flat">
<img alt="release" src="http://img.shields.io/badge/release-v0.0.1-green.svg?style=flat">
<img alt="license" src="http://img.shields.io/badge/license-MIT-blue.svg?style=flat">
</p>

## Introduction
<p align="center">
 <img alt="demo" src="https://github.com/cororine22/SYUBI/blob/garage/garage/demo.gif?raw=true">
</p>

- You can immediately see the progress rate of the entire task from the bar on the list screen
- Task progress can be set for each step and can be checked from the progress list screen
- The steps to be taken are clear because the steps before starting, in progress, and completed are displayed separately

## Feature

### Each Task shows Progress bar
<div align="center">
 <img alt="main" src="https://github.com/cororine22/SYUBI/blob/garage/garage/main.png?raw=true">
</div>

`view/tasks/index.html.erb`
```
<！-- Progress bar with Bootstrap -->
<td style="width: 30%">
  <% task_count = task.steps.count %>
  <% done_count = task.steps.select { |i| i.status == "完了"}.count %>
  <% progress = (done_count.to_f / task_count.to_f * 100).to_i rescue 0 %>
  <span class="progress">
    <span class="progress-bar progress-bar-animated progress-bar-striped" style="width: <%= progress %>%">
      <%= done_count %> / <%= task_count %>
    </span>
  </span>
</td>
```

### Nested Collection Task >> Steps**
<div align="center">
 <img alt="steps" src="https://github.com/cororine22/SYUBI/blob/garage/garage/steps.png?raw=true">
</div>

- Nested Model

`model/task.rb`
```
class Task < ApplicationRecord
    has_many :steps
    ...
```

`model/step.rb`
```
class Step < ApplicationRecord
    belongs_to :task
    ...
```


- Nested routing

```
$ rails routes

         root GET    /                                   tasks#index
   task_steps GET    /tasks/:task_id/steps(.:format)     steps#index
              POST   /tasks/:task_id/steps(.:format)     steps#create
new_task_step GET    /tasks/:task_id/steps/new(.:format) steps#new
    edit_step GET    /steps/:id/edit(.:format)           steps#edit
              PATCH  /steps/:id(.:format)                steps#update
              PUT    /steps/:id(.:format)                steps#update
              DELETE /steps/:id(.:format)                steps#destroy
        tasks GET    /tasks(.:format)                    tasks#index
              POST   /tasks(.:format)                    tasks#create
     new_task GET    /tasks/new(.:format)                tasks#new
    edit_task GET    /tasks/:id/edit(.:format)           tasks#edit
              PATCH  /tasks/:id(.:format)                tasks#update
              PUT    /tasks/:id(.:format)                tasks#update
              DELETE /tasks/:id(.:format)                tasks#destroy
```


- Shallowing

`routes.rb`
```
Rails.application.routes.draw do
  ...
  resources :tasks do
    resources :steps, shallow: true
  end
end
```

### View & Model Input Validation
<div align="center">
 <img alt="validation" src="https://github.com/cororine22/SYUBI/blob/garage/garage/validation.png?raw=true">
</div>

Input Validation with Form Components

`view/step/new.html.erb`
```
<！-- FormValidation -->
<%= form_for @step, :html => {:class => "is-validated"}, :url => {:action => :create} do |f| %>
    <div class="form-group">
        <label><%= f.label :title %></label>
        <div><%= f.text_field :title, class: "form-control", required:true, maxlength:20, placeholder:"Title" %></div>
    </div>
  
    <div class="form-group">
        <label><%= f.label :detail %></label>
        <div><%= f.text_field :detail, class: "form-control", maxlength:140, placeholder:"Detail" %></div>
    </div>
```

Model Validation

`model/step.rb`
```
class Step < ApplicationRecord
    ...
    validates :title, presence: true
    validates :title, length: { in: 1..20}
    validates :detail, length: { maximum: 140}
    ...
```


## Installation
To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```


