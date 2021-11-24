defmodule SpotWeb.HomeLive do
  use SpotWeb, :live_view
  alias SpotWeb.MessageComponent
  import Logger

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       message: "Initial Hello! - #{DateTime.utc_now()}"
     )}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div >
      <.live_component module={MessageComponent} id="message" >
        <%= @message %>
      </.live_component>
      <button phx-click="say_hello">Say hello</button>
    </div>
    """
  end

  def handle_event("say_hello", _value, socket) do
    debug("handle_event: say_hello")
    send_update MessageComponent, id: "message", message: "Hello? - #{DateTime.utc_now()}"

    {:noreply, socket}
  end
end
