feature '_cpan', 'CPAN Verification' => sub {
    requires 'Digest::SHA', '6.04';
    requires 'Module::Signature', '0.90';
};

feature 'bible', 'Bible Utilities' => sub {
    requires 'Bible::OBML', '2.10';
    requires 'Bible::OBML::Gateway', '2.11';
    requires 'Bible::Reference', '1.19';
};

feature 'bot', 'IRC Bot' => sub {
    requires 'Bot::IRC', '1.42';
    requires 'Bot::IRC::X::Dice', '1.07';
    requires 'Bot::IRC::X::Feeds', '1.08';
    requires 'Bot::IRC::X::ManagementSpeak', '1.05';
    requires 'Bot::IRC::X::Message', '1.07';
    requires 'Bot::IRC::X::MetarTaf', '1.05';
    requires 'Bot::IRC::X::Reminder', '1.08';
    requires 'Bot::IRC::X::Retort', '1.06';
    requires 'Bot::IRC::X::Time', '1.05';
    requires 'Bot::IRC::X::UriTitle', '1.06';
    requires 'Bot::IRC::X::WwwShorten', '1.05';
};

feature 'cli', 'CLI Utilities' => sub {
    requires 'Config::App', '1.19';
    requires 'Util::CommandLine', '1.09';
};

feature 'coverage', 'Coverage Analysis' => sub {
    requires 'Devel::Cover', '1.50';
    requires 'JSON::MaybeXS', '1.004008';
    requires 'PPI::HTML', '1.08';
    requires 'Parallel::Iterator', '1.002';
    requires 'Pod::Coverage', '0.23';
    requires 'Pod::Coverage::CountParents';
    requires 'Template', '3.102';
};

feature 'cpan', 'CPAN Utilities' => sub {
    requires 'App::PAUSE::cleanup', '0.0014';
    requires 'App::cpanminus', '1.7048';
    requires 'App::cpanoutdated', '0.32';
    requires 'App::pause', '0.662';
    requires 'Module::CPANfile', '1.1004';
    requires 'Perl::PrereqScanner', '1.100';
};

feature 'daemon', 'Daemon Build and Control' => sub {
    requires 'Daemon::Control', '0.001010';
    requires 'Daemon::Device', '1.11';
};

feature 'data', 'Data Access Channels' => sub {
    requires 'DBIx::Query', '1.17';
    requires 'JSON::XS', '4.03';
    requires 'SQL::Abstract::Complete', '1.11';
    requires 'YAML::XS', '0.88';
};

feature 'datetime', 'Dates and Times' => sub {
    requires 'Date::Format', '2.24';
    requires 'Date::Parse', '2.33';
    requires 'DateTime', '1.66';
    requires 'DateTime::Duration', '1.66';
    requires 'DateTime::Format::Human::Duration', '0.64';
};

feature 'deploy', 'Deployment Tools' => sub {
    requires 'App::Dest', '1.36';
    requires 'Sub::Versions', '1.06';
};

feature 'develop', 'Development Tools' => sub {
    requires 'Benchmark', '1.25';
    requires 'Data::Printer', '1.002001';
    requires 'Devel::NYTProf', '6.14';
    requires 'Perl::Critic', '1.156';
    requires 'Perl::Tidy', '20230912';
    requires 'Term::ANSIColor', '5.01';
    requires 'Term::ReadKey', '2.38';
    requires 'Term::ReadLine::Perl';
};

feature 'dzil', 'Dist::Zilla and Plugins' => sub {
    requires 'Archive::Tar::Wrapper', '0.42';
    requires 'Dist::Zilla', '6.033';
    requires 'Dist::Zilla::Plugin::Clean', '0.07';
    requires 'Dist::Zilla::Plugin::GithubMeta', '0.58';
    requires 'Dist::Zilla::Plugin::MinimumPerl', '1.006';
    requires 'Dist::Zilla::Plugin::OurPkgVersion', '0.21';
    requires 'Dist::Zilla::Plugin::PodWeaver', '4.010';
    requires 'Dist::Zilla::Plugin::ReadmeAnyFromPod', '0.163250';
    requires 'Dist::Zilla::Plugin::Run::AfterBuild', '0.050';
    requires 'Dist::Zilla::Plugin::SecurityPolicy', '0.001';
    requires 'Dist::Zilla::Plugin::Test::Compile', '2.058';
    requires 'Dist::Zilla::Plugin::Test::EOL', '0.19';
    requires 'Dist::Zilla::Plugin::Test::Kwalitee', '2.12';
    requires 'Dist::Zilla::Plugin::Test::NoTabs', '0.15';
    requires 'Dist::Zilla::Plugin::Test::Portability', '2.001003';
    requires 'Dist::Zilla::Plugin::Test::Synopsis', '2.000007';
    requires 'Dist::Zilla::PluginBundle::Git', '2.051';
    requires 'Pod::Elemental::Transformer::List', '0.102001';
    requires 'Software::Security::Policy', '0.11';
};

feature 'encryption', 'Encryption and Hashing' => sub {
    requires 'Crypt::Blowfish', '2.14';
    requires 'Crypt::CBC', '3.04';
    requires 'Digest::HMAC_SHA1', '1.05';
    requires 'Digest::MD5', '2.59';
    requires 'Digest::SHA1', '2.13';
};

feature 'exact', 'exact Modules' => sub {
    requires 'exact', '1.29';
    requires 'exact::class', '1.20';
    requires 'exact::cli', '1.08';
    requires 'exact::conf', '1.09';
    requires 'exact::fun', '1.02';
    requires 'exact::lib', '1.05';
    requires 'exact::me', '1.06';
};

feature 'files', 'File System Tools' => sub {
    requires 'File::Path', '2.18';
    requires 'IO::All', '0.87';
};

feature 'html', 'HTML and URL Processing' => sub {
    requires 'Convert::Base32', '0.06';
    requires 'HTML::FormatText', '2.16';
    requires 'HTML::TokeParser::Simple', '3.16';
    requires 'HTML::TreeBuilder', '5.07';
    requires 'URI::Escape', '5.32';
};

feature 'logging', 'Logging Tools' => sub {
    requires 'Log::Dispatch', '2.71';
    requires 'Log::Dispatch::Email::Mailer', '1.14';
};

feature 'mail', 'Mail Utilities' => sub {
    requires 'Email::Mailer', '1.22';
    requires 'Email::Simple', '2.218';
    requires 'Mail::Sender', '0.903';
    requires 'Net::IMAP::Simple', '1.2212';
};

feature 'misc', 'Miscellaneous Stuff' => sub {
    requires 'Auth::GoogleAuth', '1.09';
    requires 'English::Script', '1.07';
    requires 'Finance::Google::Portfolio', '1.08';
    requires 'Geo::GoogleEarth::AutoTour', '1.10';
    requires 'Lingua::ManagementSpeak', '1.06';
    requires 'Time::DoAfter', '1.09';
    requires 'Unit::Duration', '1.05';
};

feature 'mojo', 'Mojolicious Systems' => sub {
    requires 'Input::Validator', '0.001005';
    requires 'MojoX::ConfigAppStart', '1.05';
    requires 'MojoX::Log::Dispatch::Simple', '1.15';
    requires 'Mojolicious', '9.40';
    requires 'Mojolicious::Plugin::AccessLog', '0.010001';
    requires 'Mojolicious::Plugin::Directory', '0.14';
    requires 'Mojolicious::Plugin::ToolkitRenderer', '1.14';
    requires 'Template', '3.102';
    requires 'Text::MultiMarkdown', '1.005';
};

feature 'moose', 'Moose Development' => sub {
    requires 'Moose', '2.2207';
    requires 'MooseX::ClassAttribute', '0.29';
    requires 'MooseX::MarkAsMethods', '0.15';
    requires 'MooseX::NonMoose', '0.27';
    requires 'Test::Moose', '2.2207';
    requires 'Throwable::Error', '1.001';
};

feature 'reply', 'Reply REPL CLI Environment' => sub {
    requires 'B::Keywords', '1.27';
    requires 'Carp::Always', '0.16';
    requires 'Class::Refresh', '0.07';
    requires 'Data::Printer', '1.002001';
    requires 'IO::Pager', '2.10';
    requires 'Proc::InvokeEditor', '1.13';
    requires 'Reply', '0.42';
    requires 'Reply::Plugin::ConfigurablePrompt', '0.02';
    requires 'Reply::Plugin::Pager', '0.42';
    requires 'Term::ReadKey', '2.38';
    requires 'Term::ReadLine::Perl';
};

feature 'test', 'Testing Tools' => sub {
    requires 'Pod::Coverage::TrustPod', '0.100006';
    requires 'Test2::Harness', '1.000161';
    requires 'Test2::V0', '1.302214';
    requires 'Test::CheckManifest', '1.43';
    requires 'Test::EOL', '2.02';
    requires 'Test::Kwalitee', '1.28';
    requires 'Test::MockModule';
    requires 'Test::Most', '0.38';
    requires 'Test::NoTabs', '2.02';
    requires 'Test::Pod', '1.52';
    requires 'Test::Pod::Coverage', '1.10';
    requires 'Test::Synopsis', '0.17';
    requires 'Test::WWW::Mechanize', '1.60';
};

feature 'web', 'Web Utilities' => sub {
    requires 'IO::Socket::SSL', '2.084';
    requires 'WWW::Mechanize', '2.19';
};
