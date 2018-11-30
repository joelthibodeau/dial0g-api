# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :dialogs
  # added this line based on lesson material
  # https://git.generalassemb.ly/ga-wdi-boston/rails-api-one-to-many/blob/master/docs/library_scaffold.md
end
