import { Controller } from "@hotwired/stimulus";
import { createConsumer } from "@rails/actioncable";

export default class extends Controller {
  static values = { chatboxId: Number };
  static targets = ["messages"];

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatboxChannel", id: this.chatboxIdValue },
      {
        received: (data) => this.#insertMessageAndScrollDown(data),
      }
    );
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data);
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
  }

  resetForm(event) {
    event.target.reset();
  }

  disconnect() {
    console.log("Unsubscribed from the chatbox");
    this.channel.unsubscribe();
  }
}
