## 背景和目标

在这个挑战中，我们将学习在 JavaScript 中使用 `fetch` 向 AI 的 API 发送 HTTP 请求。AI 可能听起来非常高级和计算机化 🤖，但事实是大多数 AI 公司都会公开一个 API，我们可以使用它与他们的 AI 模型进行交互，就像我们使用任何其他 API 一样。

我们将使用 [Hugging Face](https://huggingface.co/)，因为他们的 API 是免费使用的，并且有很多模型可以让我们尝试。Hugging Face 是一家提供机器学习模型共享和使用平台的公司，他们有很多针对不同任务训练的模型，比如文本生成、图像生成等等。

## 获取你的 API 密钥

首先，你需要在 Hugging Face 上创建一个账户并获取你的 API 密钥。你可以通过访问 [Hugging Face 的网站](https://huggingface.co/join) 并注册来完成这个操作。然后你需要验证你的邮箱地址，所以请务必检查你的收件箱。一旦你有了账户，你可以进入设置并找到你的 API 密钥。

要做到这一点，点击右上角的头像。然后从下拉菜单中选择 "Access Tokens"。点击 "+ Create new token" 并给它起个名字（比如 "LW Challenge"）。在 "Token type" 下，你应该选择 "Read"，这将给予令牌必要的权限。然后点击 "Create token"。复制令牌并将其保存在安全的地方，因为你将无法再次看到它。

## 编写 JS

现在你有了 API 密钥，你可以用它来向 Hugging Face 的 API 发送请求。我们将像你习惯的那样使用 `fetch` 函数来发送这些请求。

打开 `index.html` 文件。你会看到一个简单的界面，包含一个文本输入框和一个按钮。

运行：

```bash
serve
```

打开浏览器并访问 `http://localhost:8000`。你应该能看到界面。

现在，进入 `lib/index.js`，你会看到一个名为 `getAnswer` 的函数。这个函数是你编写代码向 Hugging Face 的 API 发送请求的地方。根据[官方文档](https://huggingface.co/docs/inference-providers/providers/hf-inference)，函数的一部分已经设置好了。查看注释，看看你需要做什么。

1. 有一行代码你需要粘贴你的 API 密钥。确保用你的实际 API 密钥替换占位符。
2. 完成 `getAnswer` 函数，使其实际获取 API 的响应并将其插入到 DOM 中。你可能想要 `console.log` 响应以了解其格式。
3. 给表单添加一个事件监听器，当用户提交表单时，调用 `getAnswer` 函数。

完成后，你应该能够在输入框中输入一个问题，点击按钮，然后在输入框下方看到 AI 的回复！非常酷 🕶️

## 更进一步

注意，你需要代码中已有的 `method: "POST"`，因为 Hugging Face 的 API 需要 POST 请求来从模型获取响应。这是我们今天的第一个 POST 请求，它们用于向服务器发送新数据，而 GET 请求用于检索数据。

如果你想玩得更多，你可以通过更改 `fetch` 调用中的 `model` 来尝试使用 Hugging Face 的不同模型。你可以在[这里](https://huggingface.co/models)找到模型列表。只需确保选择适合文本生成的模型。