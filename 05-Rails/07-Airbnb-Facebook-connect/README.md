## AI Week - Keep building

At this point, you should already have a basic Rails app deployed on Heroku, with one or several core models. If it's not the case, create a ticket.

### Splitting the work
Now that you have seen how to collaborate as a team on a project using git and Github, it's time to split the work on start working on **branches**.

#### Clean up the master branch
First, make sure the **lead developer** has committed and pushed all the finished work from day 1 to Github:

```bash
git status # check files w/ changes
git diff # check changes and edit files w/ work you don't want to keep
git add . # add all changes
git commit -m "<your commit message>" # commit all changes
git push origin master
```

#### Add your teammates as collaborators on the Github repo

Go to [your Github repo settings](https://github.com/<user.github_nickname>/rails-airbnb-clone/settings/collaboration) and add your teammates as **collaborators** to the repo.

The other teammates can now **clone** the project:

```bash
gh repo clone <owner-github-nickname>/<rails-app-name>
```

Then move in the directory and run:
```bash
cd <rails-app-name>
rails db:create db:migrate
bundle install
```

#### Create a new branch for your feature

Thanks to the user stories listed in your spreadsheet, you can now dispatch the first ones among teammates, and get started on a branch to start coding:

```bash
git checkout -b <feature-name>
code .
```

> [!WARNING]
> From now on you should not commit on `master` anymore.

If you have already generated models in pair-programming, you should all be able to get started on some tasks:

**Scope 1: Index + Show**
Someone can get started on the following user stories, coding in silo from routing to view, replacing "challenges" with your app's core model:
- As a visitor, I can see the list of challenges to navigate to the challenge I would like to take
- As a visitor, I can click on a challenge to see its details

**Scope 2: New + Create**
Someone can get started on the following user story, coding in silo from routing to view:
- As a user, I can display a form to fill in the information required to create a new challenge
- As a user, I can submit the form to create the new challenge





### System Prompt

Next, you will work on your AI Assistant **system prompt** and make sure every API request is sent with the appopriate `with_instructions(system_prompt)`.

Remember that a good prompt should include:
- Persona: who should the AI act as?
- Context: what the output will be used for and by whom (i.e. the user), and any relevant data to pass along the user input
- Task: usually defined by the user, but remember that it should be clear, direct and specific
- Format: how the output should be structured (e.g. JSON, markdown, etc.)

