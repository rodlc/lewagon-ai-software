## AI Week - Keep building

At this point, you should already have a basic Rails app deployed on Heroku, with one core model. If this is not the case, please create a ticket.

### Splitting the work
Now that you have seen how to collaborate as a team on a project using git and Github, it's time to split the work and start working on **branches**.

#### Clean up the master branch
First, make sure the **lead developer** has committed and pushed all the finished work from day 1 to Github:

```bash
git status # check files with changes
git diff   # review changes and edit files to discard unwanted work
git add .  # stage all changes
git commit -m "<your commit message>" # commit the changes
git push origin master
```

#### Add your teammates as collaborators on the Github repo

Go to your Github repo settings (`https://github.com/<user.github_nickname>/rails-airbnb-clone/settings/collaboration`) and add your teammates as **collaborators**.

The other teammates can now **clone** the project:

```bash
gh repo clone <owner-github-nickname>/<rails-app-name>
```

Then navigate to the directory and run:
```bash
cd <rails-app-name>
rails db:create db:migrate
bundle install
```

#### Create a new branch for your feature

Thanks to the user stories listed in your spreadsheet, you can now distribute the first ones among teammates and get started on a branch to begin coding:

```bash
git checkout -b <feature-name>
code .
```

> [!WARNING]
> From now on you should not commit on `master` anymore.

If you have already generated models via pair programming, you should all be able to start on some tasks. For each of the following scopes, someone can start working on the corresponding user stories, coding independently from routing to view, replacing "challenges" with your app's core model:

**Scope 0: Seed**
Before being able to work on Scope 1 and 3, you need records of your core model in your database. You can create records in your `rails console`, but having a seed file is very useful for development, check out [this tutorial](https://kitt.lewagon.com/knowledge/cheatsheets/rails_seeds?course_ats_slug=web).

**Scope 1: Index + Show**

- As a visitor, I can see a list of challenges to navigate to the challenge I want to explore.
- As a visitor, I can click on a challenge to see its details

**Scope 2: New + Create**
- As a user, I can display a form to fill in the information required to create a new challenge
- As a user, I can submit the form to create the new challenge

**Scope 3: Edit + Update**
- As a user, I can display a form to edit a challenge I have created
- As a user, I can submit the form to update the challenge

### Adding AI
Now that you have a basic Rails app with a core model, it's time to add AI capabilities.
If you haven't done so already, set up RubyLLM in your app, following the Intro to LLM lecture.

This is the starting point to adding the AI-related user stories:
- As a user, I can create a chat with the AI Assistant about one challenge.
- As a user, I can see the list of chats I created with the AI Assistant about a challenge.
- As a user, I can navigate to a chat I created with the AI Assistant about a challenge.
- As a user, I can send a message to the AI Assistant in the context of a chat.

On this part, each lecture in the AI Week will guide you on how to make progres. That said, don't wait to start implementing these actions.

As a reminder, we recommend adding a `chats` and a `messages` tables with the following fields :point_down: to anticipate future improvements.

<details><summary markdown='span'>View DB schema
</summary>
  <img src="https://wagon-public-assets.s3.eu-west-3.amazonaws.com/3h0por8ku29vrntndn0ci30fobb7" alt="Database schema showing four tables: users, challenges, chats and messages, their relationships and columns">
</details>

Remember that **chats** are created within the context of a "challenge", and that **messages** are created within the context of a **chat**. If you need a refresher on this kind of implementations, go back to the **Nested Resources** section of the **Advanced Routing** lecture.

And of course, if you struggle, create a ticket!

### System Prompt
Next, you will work on your AI Assistant **system prompt** and make sure every API request is sent with the appropriate `with_instructions(system_prompt)`, to shape your AI Assistant’s behavior according to your persona and goal.

Remember that a good prompt should include:
- **Persona**: Who should the AI act as?
- **Context**: What the output will be used for and by whom (i.e. the user), and any relevant data to pass along the user input.
- **Task**: usually defined by the user, but it should be clear, direct and specific,
- **Format**: How the output should be structured (e.g. JSON, Markdown, etc.).

