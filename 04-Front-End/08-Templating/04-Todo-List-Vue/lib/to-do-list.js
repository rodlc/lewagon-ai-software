import { createApp } from "vue";

createApp({
  data() {
    return {
      message: "If you see this message in your browser, that means Vue is successfully mounted! 🙌",
      todos: [
        { title: "Code a to-do list", done: false },
        { title: "Eat breakfast", done: true },
        { title: "Do some exercise", done: false },
        { title: "Water the plants", done: true }
      ]
    };
  }
}).mount('#todosContainer');
