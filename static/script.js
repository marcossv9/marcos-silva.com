function sendQuestion() {
  const question = document.getElementById("questionDropdown").value;
  const answerBox = document.getElementById("answerBox");
  answerBox.innerText = "Thinking...\n";

  fetch("/chat", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ question: question })
  }).then(() => {
    const eventSource = new EventSource('/chat-stream');

    let responseText = "";
    eventSource.onmessage = (event) => {
      responseText += event.data;
      answerBox.innerText = responseText;
    };

    eventSource.onerror = (err) => {
      eventSource.close();
      console.error("Stream error:", err);
      answerBox.innerText += "\n\n[Stream ended or failed]";
    };
  });
}

// Dropdown to input sync
const dropdown = document.getElementById('questionDropdown');
const input = document.getElementById('questionInput');
dropdown.addEventListener('change', function () {
  if (dropdown.value) {
    input.value = dropdown.value;
    input.focus();
  }
});

// Responsive input field
function resizeInput() {
  input.style.fontSize = window.innerWidth < 500 ? '0.95rem' : '1rem';
  input.style.padding = window.innerWidth < 500 ? '0.7rem' : '1rem';
}
window.addEventListener('resize', resizeInput);
resizeInput();
