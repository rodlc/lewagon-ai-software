## Background & Objectives

In this challenge, we will learn to use `fetch` in JavaScript to make HTTP requests to an AI's API. AI may sound really fancy and computer-y 🤖 but the truth is that most AI companies expose an API that we can use to interact with their AI models, just like we do with any other API.

We'll be using [Hugging Face](https://huggingface.co/) because their API is free to use and has a lot of models that we can play with. Hugging Face is a company that provides a platform for sharing and using machine learning models, and they have a lot of models that are trained on different tasks, such as text generation, image generation, and more.

## Get your API key

First, you'll need to create an account on Hugging Face and get your API key. You can do that by going to [Hugging Face's website](https://huggingface.co/join) and signing up. You'll then need to verify your email address, so make sure to check your inbox. Once you have an account, you can go to your settings and find your API key.

To do this, click on your avatar in the top right corner. Then choose "Access Tokens" from the dropdown menu. Click on "+ Create new token" and give it a name (like "LW Challenge"). Under "Token type", you should choose "Read", which will give the token the necessary permissions. Then click "Create token". Copy the token and save it somewhere safe, as you won't be able to see it again.

## Write the JS

Now that you have your API key, you can use it to make requests to Hugging Face's API. We'll be using the `fetch` function just like you're used to to make these requests.

Open up the `index.html` file. You'll see a simple interface with a text input and a button.

Run:

```bash
serve
```

Open your browser and go to `http://localhost:8000`. You should see the interface.

Now, head to `lib/index.js` and you'll see a function called `getAnswer`. This function is where you'll write your code to make the request to Hugging Face's API. Part of the function is already set up according to [the official documentation](https://huggingface.co/docs/inference-providers/providers/hf-inference). Check out the comments and see what you need to do.

1. There's a line where you'll want to paste in your API key. Make sure to replace the placeholder with your actual API key.
2. Complete the `getAnswer` function so it actually gets the API's response and inserts it into the DOM. You may want to `console.log` the response so you understand its format.
3. Add an event listener to the form so that when the user submits the form, it calls the `getAnswer` function.

When you're done, you should be able to type a question into the input field, click the button, and see the AI's response below the input field! Pretty cool 🕶️

## Going Further

Note that you will need the `method: "POST"` that's already in the code, as Hugging Face's API requires a POST request to get a response from the model. This is our first POST request of the day, and they're used to send new data to the server, unlike GET requests which are used to retrieve data.

If you want to play around more, you can try using different models from Hugging Face by changing the `model` in the `fetch` call. You can find a list of models [here](https://huggingface.co/models). Just make sure to choose a model that is suitable for text generation.

### Bearer Token

The `Authorization` header in the `fetch` call uses a Bearer Token, which is a type of token that is used to authenticate requests to an API. The token is included in the request header and is used to verify that the request is coming from an authorized user. You can think of it like how you use a password to log into a website. The Bearer Token is like a password that is used to access the API.

### Deleting the Token

Once you're done with the challenge, make sure to delete the token you created on Hugging Face. You can do this by going back to the "Access Tokens" section in your settings, finding the token you created, and clicking the trash can icon next to it. This is important for security reasons, as you don't want to leave API keys you're not using lying around.

### `GET` vs `POST`

Do you remember the difference between `GET` and `POST` requests? If not, here's a quick refresher:

- `GET` requests are used to retrieve data from a server. They are typically used for things like fetching a webpage or getting data from an API.
- `POST` requests are used to send data to a server. They are typically used for things like submitting a form or uploading a file.
- `POST` requests have a body, which is where the data being sent to the server is included. `GET` requests do not have a body. The data is formatted as a series of key-value pairs, kind of like a `Hash`.
