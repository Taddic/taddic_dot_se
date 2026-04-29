defmodule TaddicDotSeWeb.PageController do
  use TaddicDotSeWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def services(conn, _params) do
    render(conn, :services)
  end

  def experience(conn, _params) do
    render(conn, :experience)
  end

  def aboutme(conn, _params) do
    render(conn, :aboutme)
  end

  def contact(conn, _params) do
    render(conn, :contact)
  end
end
