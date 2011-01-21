# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mogli}
  s.version = "0.0.21"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Mangino"]
  s.date = %q{2011-01-18}
  s.description = %q{Simple library for accessing the facebook Open Graph API}
  s.email = %q{mmangino@elevatedrails.com}
  s.files = ["lib/mogli/action.rb", "lib/mogli/activity.rb", "lib/mogli/address.rb", "lib/mogli/album.rb", "lib/mogli/app_client.rb", "lib/mogli/application.rb", "lib/mogli/authenticator.rb", "lib/mogli/book.rb", "lib/mogli/checkin.rb", "lib/mogli/client/event.rb", "lib/mogli/client/user.rb", "lib/mogli/client.rb", "lib/mogli/comment.rb", "lib/mogli/education.rb", "lib/mogli/event.rb", "lib/mogli/fetching_array.rb", "lib/mogli/group.rb", "lib/mogli/insight.rb", "lib/mogli/interest.rb", "lib/mogli/link.rb", "lib/mogli/location.rb", "lib/mogli/model/search.rb", "lib/mogli/model.rb", "lib/mogli/movie.rb", "lib/mogli/music.rb", "lib/mogli/note.rb", "lib/mogli/page.rb", "lib/mogli/photo.rb", "lib/mogli/post.rb", "lib/mogli/profile.rb", "lib/mogli/status.rb", "lib/mogli/television.rb", "lib/mogli/user.rb", "lib/mogli/video.rb", "lib/mogli/work.rb", "lib/mogli.rb"]
  s.homepage = %q{http://developers.facebook.com/docs/api}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Open Graph Library for Ruby}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hashie>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0.4.3"])
    else
      s.add_dependency(%q<hashie>, [">= 0.2.0"])
      s.add_dependency(%q<httparty>, [">= 0.4.3"])
    end
  else
    s.add_dependency(%q<hashie>, [">= 0.2.0"])
    s.add_dependency(%q<httparty>, [">= 0.4.3"])
  end
end
