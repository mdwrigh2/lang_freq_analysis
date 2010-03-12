require 'octopi'

languages = %w{ Java Ruby Objective-C C Erlang JavaScript Perl Python Shell PHP C C++ }
include Octopi
def analyze language
  # Check and create appropriate directories (PROJ_ROOT/src/#{language}/, PROJ_ROOT/analysis/#{language}/, etc.
  authenticated do |g|
    repos = Repository.find_all "language:#{language}"
    repos.each do |repo|
      r = g.repository(repo.name)
      puts r.clone_url
    end
  end
end


analyze languages[0]