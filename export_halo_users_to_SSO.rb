#!/usr/bin/env ruby
require 'oauth2'
require 'rest-client'
require 'json'
require 'csv'

# Halo's API client/secret
clientid = 'XXXXXXXX'
clientsecret = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
host = 'api.cloudpassage.com'

# setup a API session
client = OAuth2::Client.new(clientid, clientsecret,
                :site => "https://#{host}",
                :token_url => '/oauth/access_token')
token = client.client_credentials.get_token.token

# grab all users from Halo
result = RestClient.get "https://#{host}/v1/users", {
          'Authorization' => "Bearer #{token}" }

# parse out the user attributes
data = JSON result.body
users = data['users']

# write the first, last, email and username as a csv file
CSV.open('halo_user_import.csv', 'w') do |csv|
  csv << ["First name","Last name","Email","Username"]
  users.each do |user|
    csv << [user['firstname'], user['lastname'], user['email'], user['username']]
  end
end
  
# output the file for quick review/validation
File.readlines('halo_user_import.csv').each do |line|
end
