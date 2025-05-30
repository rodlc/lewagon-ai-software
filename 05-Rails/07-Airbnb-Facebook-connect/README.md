## AI Week - Keep building

At this point, you should already have a basic Rails app deployed on Heroku, with one or several core models. If it's not the case, create a ticket.

Next, you will work on your AI Assistant **system prompt** and make sure every API request is sent with the appopriate `with_instructions(system_prompt)`.

Remember that a good prompt should include:
- Persona: who should the AI act as?
- Context: what the output will be used for and by whom (i.e. the user), and any relevant data to pass along the user input
- Task: usually defined by the user, but remember that it should be clear, direct and specific
- Format: how the output should be structured (e.g. JSON, markdown, etc.)

Also, it is time to setup Devise and **add users to your application**. Make sure to generate your model w/ `rails g devise User` and not `rails g model User`!
