require 'octopi'

languages = %w{ Java Ruby Objective-C C Erlang JavaScript Perl Python Shell PHP C C++ }

def analyze language
  # Check and create appropriate directories (PROJ_ROOT/src/#{language}/, PROJ_ROOT/analysis/#{language}/, etc.
  repos = Octopi::Repository.find_all "language:#{language}"
  repos.each do |repo|
    puts repo.name
  end
end
