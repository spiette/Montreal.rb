require "administrate/base_dashboard"

class NewsItemDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    #translations: Field::HasMany.with_options(class_name: "NewsItem::Translation"),
    id: Field::Number,
    title: Field::String,
    body: Field::Text,
    state: Field::String,
    published_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :body,
    :state,
    :published_at,
    :created_at,
    :updated_at,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :body,
    :state,
    :published_at,
  ]

  # Overwrite this method to customize how news items are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(news_item)
  #   "NewsItem ##{news_item.id}"
  # end
end