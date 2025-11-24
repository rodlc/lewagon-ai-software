// TODO: Replace the following line with your Hugging Face token
const huggingFaceToken = ""

// TODO: Create a function to get the AI's answer
const getAnswer = (event) => {
  // TODO: prevent default behavior of the form
  event.preventDefault();
  // TODO get the user's input from the form
  const userInput = event.target.querySelector('#input').value;

  fetch("https://router.huggingface.co/v1/chat/completions", {
    method: "POST",
    headers: {
      Authorization: `Bearer ${huggingFaceToken}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: "openai/gpt-oss-120b",
      // TODO: add any other key-value pairs needed in the body
      messages: [
        {
          role: "user",
          content: userInput
        }
      ],
      max_tokens: 500,
      temperature: 0.7
    }),
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      // TODO: Insert the AI's answer into the HTML
      const aiAnswer = data.choices[0].message.content;
      document.querySelector('#response').textContent = aiAnswer;
    });
};

// TODO: Add an event listener to the form
// TODO: On submit, in the callback, call the getAnswer function
const form = document.querySelector('form');
form.addEventListener('submit', getAnswer);
