// TODO: Replace the following line with your Hugging Face token
const huggingFaceToken = "YOUR_TOKEN"

// TODO: Create a function to get the AI's answer
const getAnswer = (event) => {
  // TODO: prevent default behavior of the form

  // TODO get the user's input from the form

  fetch("https://router.huggingface.co/v1/chat/completions", {
    method: "POST",
    headers: {
      Authorization: `Bearer ${huggingFaceToken}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "openai/gpt-oss-120b",
      // TODO: add any other key-value pairs needed in the body
      //       you can check the API documentation for that
    }),
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      // TODO: Insert the AI's answer into the HTML
    });
};

// TODO: Add an event listener to the form
// TODO: On submit, in the callback, call the getAnswer function
