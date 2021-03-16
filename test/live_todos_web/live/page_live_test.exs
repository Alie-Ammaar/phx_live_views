defmodule LiveTodosWeb.PageLiveTest do
  use LiveTodosWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Live Todos"
    assert render(page_live) =~ "Live Todos"
  end
end
