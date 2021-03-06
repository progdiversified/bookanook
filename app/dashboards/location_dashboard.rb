require "administrate/base_dashboard"

class LocationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    nooks: Field::HasMany,
    reservations: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    amenities: SelectizeField,
    attrs: Field::Text,
    hidden_attrs: Field::Text,
    open_schedule: OpenAtField,
    created_at: TimestampField,
    updated_at: TimestampField,
    admins: SelectizeField,
    geolocation: GeolocationField
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :nooks,
    :reservations,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :nooks,
    :name,
    :admins,
    :description,
    :amenities,
    :open_schedule,
    :geolocation
  ]


  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :admins,
    :description,
    :amenities,
    :open_schedule,
    :geolocation
  ]

  # Overwrite this method to customize how locations are displayed
  # across all pages of the admin dashboard.

  def display_resource(location)
    location.name
  end
end
