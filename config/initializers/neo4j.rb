uri = URI.parse(ENV["GRAPHENEDB_URL"])

Neo4j::Session.open(:server_db, uri.to_s, basic_auth: { username: uri.user, password: uri.password})
