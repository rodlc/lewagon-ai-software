### GitHub Project

A [Kanban board](https://en.wikipedia.org/wiki/Kanban_board) is an agile project management tool designed to help visualize work, track progress, and maximize efficiency (or flow).

Github Projects Draft - To set up your kanban board on Github, you'll need to have the repository created already and to have all the collaborators added. Then, a team member can use [this board](https://github.com/orgs/lewagon/projects/117) as the basis for your project board. Follow the instructions [here](https://docs.github.com/en/issues/planning-and-tracking-with-projects/creating-projects/copying-an-existing-project) to see how to copy and add the board to your own project's repository. Two things to note: Github doesn't copy over the cards from the original board, so you'll have to add them yourself. Feel free to copy/paste the cards to get you going, or just start from scratch. Second, Github uses markdown syntax for text formatting like headings, font style, and checkboxes. It's not required, but can be nice to add formatting to your cards. You can read more about it [here](https://guides.github.com/features/mastering-markdown/).

Each task should be in the format of a **User story** like: `As a user, I can see a list of all the challenges`

In the priority field, you can use the MoSCoW method to prioritize your user stories: Must have, Should have, Could have, Won't have. This will help you focus on the most important user stories first.

In the route field, you can include the verb, path, controller, and action, like: `GET /challenges challenges index` just like you have in the spreadsheet.

Make sure to use the [assign feature on GitHub](https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/assigning-issues-and-pull-requests-to-other-github-users?ref=codebldr) to tag the team member who will be working on each user story.

From this point you can start splitting the tasks. **Spend time on the setup, because everything will be simpler if you do it correctly at the beginning**.

### Domain Name

Having a custom domain name will make your MVP seem much more legit than using the free `.herokuapp.com` url. We recommend using [Namecheap](https://www.namecheap.com/) to buy your domain name. Please follow [this guide](https://www.lewagon.com/blog/buying-a-domain-on-namecheap-and-pointing-it-to-heroku) to purchase and setup your custom domain. Then follow [this guide](https://www.lewagon.com/blog/setting-up-a-free-ssl-certificate-on-heroku) to setup your SSL certificate.

Please note that Le Wagon is an official partner of GitHub since 2015. Hence, our partnership allows you to redeem an access to the [Github Student Developer Pack](https://education.github.com/pack). You can find all the info [here](https://kitt.lewagon.com/redeem_github_student_developer_pack). There is a [special offer](https://education.github.com/pack?sort=popularity&tag=Domains) for Namecheap if the domain name registers with a `.me` TLD.


### Team Slack Channel

It's good to have a centralized location where all communication, resource-sharing, and notes can be kept relating to your project. Use a channel named `#batch-<user.batch_slug>-your_project_name` with your team. Add bookmarks to the channel with the following links for your project:

1. Kanban Board
2. Heroku
3. DB Schema
4. Github Repo
5. Figma

Important: This channel **must not** be used as an alternative ticketing system. Tickets still need to be created the normal way.
