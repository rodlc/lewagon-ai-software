## Day Validation Guidelines
By day end, every team should have:
- Written 5 to 10 user stories (week backlog)
- Designed their Data Model
- Chosen their routes
- Drawn their app mockups
- Created their Github repo & invited all its members
- Pushed to their Github repo the first version of their app (rails new), make sure they used Le Wagon's minimal template
- Deployed their app onto Heroku

## Validation Guidelines (Monday morning)

Here are some instructions for validating DB and routes when kick-starting project on Monday morning. Note that students work on the AI Assistant of their choice so they should replace the "contextual" `challenges` table by any other table of their choice.

Examples:
- For an AI Assistant to help nurses synthesize medical information to share w/ doctors, the table could be `patients`.
- For an AI Assistant to help parents cook great meals, the table could be `recipes`.
- For an AI Assistant to help readers find books recommendation, the table could be `books`

### DB schema validation

- The DB schema must have 4 linked tables: `users`, `challenges` (to rename accordingly to the chosen context) and a `chats` and `messages` tables to group and store user questions and LLM answers.

<img src="https://wagon-public-assets.s3.eu-west-3.amazonaws.com/3h0por8ku29vrntndn0ci30fobb7" alt="Database schema showing four tables: users, challenges, chats and messages, their relationships and columns">

## Le Wagon's minimal template (Monday afternoon)

Don't let students waste time and creating their Rails app from scratch. Use our minimal template with already a front-end setup (Bootstrap, Simple Form).

```bash
cd ~/code/<user.github_nickname>
rails new \
  --database postgresql \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/minimal.rb \
  APP_NAME
```

## Intermediate demo (during Multi-modal inference)

For the first intermediate demo on Multi-modal inference unit, every team should have:

- A well-designed app (Bootstrap classes for form inputs and buttons, content centered in `container`, responsive grid for flat's cards, nice home page, functional navigation bar, etc.).
- Where a user can sign up / sign in (must not be showcased during the demo)
- Where a user can run CRUD actions on the context model
- Where a user can create chats in the context of one record
- Where a user can send a message to the AI Assistant and get a response in the context of a chat
- Every page should have a clean design.

If you see students losing time on non-core features (edit your profile, edit or destroy core model records) while they have not finished the core ones or have a dirty design for main pages, **it's your role to put them back on track**. You are a teacher but also a product manager this week!

On the contrary, if all your teams have a very well designed app with simple core features working, they will be really motivated to keep enhancing their app and make kick-ass final demo.

## Final demo (during Tools & Agents)

For the final demo, share the [demo day presentation guidelines](https://kitt.lewagon.com/camps/<user.batch_slug>/challenges?path=06-Projects%2F05-Build-an-API%2F01-Intermediate-demo).

Students should strive to follow these rules so they can be well-prepared for the demo day presentation.
