## Background & Objectives

Welcome to the Debugging Dojo!

Imagine you're working with a coworker on a project where they need to implement a few different methods. But, they're having some trouble with the syntax and logic. Your task is to help them debug their code and get it working properly.

Of course, there are many different ways to implement these methods, but your coworker has already gotten started and you don't want to insult them by rewriting everything from scratch. Instead, you'll be working with the code they provided and making small adjustments to get it working as intended.

## Specs

Open the file `lib/debugging_dojo.rb` and fix the code so that all the tests in the `rake` pass. You can run the tests with the command:

```bash
rake
```

And, if you want to try running any of the code, we've already prepared a `lib/your_scratchpad.rb` file for you. This file is not tested, so you can use it to try out any code you want. You can run it with the command:

```bash
ruby lib/your_scratchpad.rb
```

Feel free to add any code you want to this file. You can also use `puts` statements to print out the values of variables and see what's happening at each step.

## How to Debug

1. **Read the error messages**: The error messages will give you a clue about what is going wrong. Look for the line number and the type of error. Sometimes you might see a `NoMethodError`, which means that you're trying to call a method that doesn't exist. Other times you might see a `NameError`, which means that you're trying to use a variable that hasn't been defined yet. And sometimes you might see a `SyntaxError`, which means that there's a problem with the syntax of your code. Always read the error message carefully and try to understand what it's telling you. And, if it gives you a line number, go to that line and look at the code.
2. **Check the syntax**: Make sure that the syntax of your code is correct. Look for missing commas, parentheses, or other syntax errors.
3. **Check the logic**: Make sure that the logic of your code is correct. If it doesn't make sense, try to figure out what the code is supposed to do and how it should work.
4. **Use `puts` statements**: If you're still having trouble, add `puts` statements to your code to print out the values of variables at different points in the code. This can help you see where things are going wrong.
5. **Google it**: If you're still stuck, try Googling the error message or the problem you're having. You may want to check StackOverflow to see if someone else has had the same problem.

## Going Further

If you're really getting stuck, you can try `pry-byebug`, which is a debugging tool that allows you to step through your code line by line and see what's happening at each step. You should already have installed it on the setup day.

To use it, put this line at the top of your file:

```ruby
require "pry-byebug"
```

You can then insert **breakpoints** anywhere inside of your code:

```ruby
binding.pry
```

This will pause the execution of your code at that point. Your Terminal will then open a "pry console", which works and looks just like `irb`. But, it is like if you started `irb` right at that moment in your code. You can then inspect the values of variables, call methods, and see what is happening at that point.

To continue the execution of your code, type `exit` in the pry console. You can also use `next`, and `continue` to step through your code line by line.

***

And here's a [great longform article about the fine art of troubleshooting](https://www.autodidacts.io/troubleshooting/).
