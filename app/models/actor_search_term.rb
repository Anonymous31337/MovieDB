class ActorSearchTerm
  attr_reader :where_clause, :where_args, :order
  def initialize(search_term)
    search_term = search_term.downcase
    @where_clause = ""
    @where_args = {}
    build_for_lname_search(search_term)
  end

  def build_for_lname_search(search_term)
    @where_clause << case_insensitive_search( :name)
    @where_args[:name] = contains(search_term)
    @where_clause << " OR #{case_insensitive_search(:fname)}"
    @where_args[:fname] = contains(search_term)
    @where_clause << " OR #{case_insensitive_search(:workingcountry)}"
    @where_args[:workingcountry] = contains(search_term)
    @order = "name asc"
  end

  def contains(search_term)
    "%" + search_term + "%"
  end

  def case_insensitive_search(field_name)
    "lower(#{field_name}) like :#{field_name}"
  end

end