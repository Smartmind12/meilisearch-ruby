# frozen_string_literal: true

module IndexesHelpers
  def clear_all_keys(client)
    client.keys['results']
          .map { |h| h['uid'] }
          .each { |uid| client.delete_key(uid) }
  end
end
