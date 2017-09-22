## Setup ActiveRecord Migration

use pry>

1) require_relative '/lib/environment.rb'
2) require_relative '/db/migration/20170909_create_books.rb'
3) CreateBooks.migrate(:up)


