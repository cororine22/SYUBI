<p align="center">
<img alt="logo" src="https://github.com/cororine22/SYUBI/blob/garage/garage/logo.png?raw=true">
</p>

<H4 align="center">
Progress management that allows intuitive grasp of task progress<br>
It is an application that can manage the progress of the double structure using Rails
</H4>

<p align="center">
<img alt="Ruby" src="http://img.shields.io/badge/language-Ruby2.5.3-orange.svg?style=flat">
<img alt="license" src="http://img.shields.io/badge/license-MIT-blue.svg?style=flat">
</p>

## Feature
- You can immediately see the progress rate of the entire task from the bar on the list screen
- Task progress can be set for each step and can be checked from the progress list screen
- The steps to be taken are clear because the steps before starting, in progress, and completed are displayed separately

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


