defmodule MatxWeb.PageLiveTest do
  use MatxWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "matx"
    assert render(page_live) =~ "matx"
  end
end
