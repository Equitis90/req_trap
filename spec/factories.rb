FactoryGirl.define do
  factory :trap do |trap|
    trap.sequence(:trap_id) { Faker::Internet.domain_word }
  end

  factory :request do |request|
    request.sequence(:request_date) { Time.now }
    request.sequence(:remote_ip) { Faker::Internet.ip_v4_address }
    scheme 'http'
    query_string ''
    query_params ''
    cookies '_req_trap_session=TDk2UzB5d3g4LzlmeEszY0Q0dGI4NWhTQzgxempia3JCVkdPNjFpbG9DU2RXZlhpUjZkeExqM3ZOa0JIK0JCeTFBNnBkRlY5dEl0YitlS2xSMEpSZEdXTTJ6ZmdFMC9veSs3U250RXpUai9DNmhrTXlVQkVKSDhtdmlrZURrRE1zR0xhc2VXN3piK25URTgzaDdIRHFRPT0tLXRlZTMyT2t3aVd5N3JaZkJRQzU3Wnc9PQ%3D%3D--1831623abe59c2585b6995f1ec0c8f42e04249b5'
    accept 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    accept_encoding 'gzip, deflate, br'
    accept_language 'en-US,en;q=0.5'
    server_protocol 'HTTP/1.1'
    server_software "puma 3.10.0 Russell's Teapot"
    gateway_interface 'CGI/1.2'
    request_path ''
    http_version 'HTTP/1.1'
    http_host ''
    http_user_agent 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0'
    trap_id nil
  end
end