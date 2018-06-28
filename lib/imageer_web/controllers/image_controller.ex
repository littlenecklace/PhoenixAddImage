# web/controllers/image_controller.ex
defmodule ImageerWeb.ImageController do
    use ImageerWeb, :controller
    alias Imageer.Image
    alias Imageer.Repo

    def create(conn, image_params) do
      changeset = Image.changeset(%Image{}, image_params)
      IO.inspect("OK")
      IO.inspect(changeset)

      case Repo.insert(changeset) do
        {:ok, _image} ->
            text conn, "Success"  
        {:error, changeset} ->
            text conn, "Error"
      end
 
    end

  end
  