# Contributing

## Fork and Clone

The first step of contributing on this project is to fork the repository.
Now you can clone the repository to your local machine with code below

```
git clone git@githuh.com:YOUR_USERNAME/kanji-master
```

## Create a Branch

Now, you can make changes to repository by create new branch

```
git checkout -b YOUR_WORKING_BRANCH
```

## Install Required Gem

```
bundle install
```

## Test Your Code

If you made changes on code, please write the spec code in `/spec/`.
You can rspec with `bundle exec rspec`, also you can specific run with filename and line number.

```
bundle exec rspec spec/kanji_master/reader_spec.rb:8
```

## Send Pull Request

Once test are passed, you can create a pull request on GitHub.

First, push you cahnges

```
git push origin YOUR_WORKING_BRANCH
```

Now you can create pull request from [top page of this repository](https://github.com/ToUMenu/kanji-master)

That's all:)
:wq
