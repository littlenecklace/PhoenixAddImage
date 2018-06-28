defmodule Imageer.Image do
  use Ecto.Schema

  alias ImageerWeb.ImageUploader
 
  import Ecto.Changeset


  schema "images" do
    field :image, ImageerWeb.ImageUploader.Type

    timestamps()
  end

  @doc false
  # def changeset(image, attrs) do
  #   image
  #   |> cast(attrs, [:image])
  #   |> validate_required([:image])
  # end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:image])
    # |> cast_attachments(params, [:image])
  end

end
