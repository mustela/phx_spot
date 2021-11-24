defmodule SpotWeb.MessageComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <span>
      From the component
      <%= render_slot(@inner_block) %>
    </span>
    """
  end
end
