feature 'cli', 'CLI Utilities' => sub {
    requires 'Config::App';
    requires 'Time::DoAfter';
    requires 'Util::CommandLine';
};

feature 'cover', 'Coverage Analysis' => sub {
    requires 'Devel::Cover';
    requires 'JSON::MaybeXS';
    requires 'PPI::HTML';
    requires 'Parallel::Iterator';
    requires 'Pod::Coverage';
    requires 'Pod::Coverage::CountParents';
    requires 'Template';
};

feature 'cpan', 'cpan Modules' => sub {
    requires 'App::cpanminus';
    requires 'App::cpanoutdated';
    requires 'Digest::SHA';
    requires 'Module::Signature';
};

feature 'daemon', 'Daemon Build and Control' => sub {
    requires 'Daemon::Control';
    requires 'Daemon::Device';
};

feature 'data', 'Data Access Channels' => sub {
    requires 'DBIx::Query';
    requires 'JSON::XS';
    requires 'YAML::XS';
};

feature 'datetime', 'Dates and Times' => sub {
    requires 'Date::Format';
    requires 'Date::Parse';
    requires 'DateTime';
    requires 'DateTime::Duration';
    requires 'DateTime::Format::Human::Duration';
};

feature 'deploy', 'Deployment Tools' => sub {
    requires 'App::Dest';
    requires 'Sub::Versions';
};

feature 'develop', 'Development Tools' => sub {
    requires 'Benchmark';
    requires 'Data::Printer';
    requires 'Devel::NYTProf';
    requires 'Perl::Critic';
    requires 'Perl::Tidy';
    requires 'Term::ANSIColor';
    requires 'Term::ReadKey';
    requires 'Term::ReadLine::Perl';
};

feature 'dzil', 'Dist::Zilla and Plugins' => sub {
    requires 'Archive::Tar::Wrapper';
    requires 'Dist::Zilla';
    requires 'Dist::Zilla::Plugin::Clean';
    requires 'Dist::Zilla::Plugin::GithubMeta';
    requires 'Dist::Zilla::Plugin::MinimumPerl';
    requires 'Dist::Zilla::Plugin::OurPkgVersion';
    requires 'Dist::Zilla::Plugin::PodWeaver';
    requires 'Dist::Zilla::Plugin::ReadmeAnyFromPod';
    requires 'Dist::Zilla::Plugin::Run::AfterBuild';
    requires 'Dist::Zilla::Plugin::Test::Compile';
    requires 'Dist::Zilla::Plugin::Test::EOL';
    requires 'Dist::Zilla::Plugin::Test::Kwalitee';
    requires 'Dist::Zilla::Plugin::Test::NoTabs';
    requires 'Dist::Zilla::Plugin::Test::Portability';
    requires 'Dist::Zilla::Plugin::Test::Synopsis';
    requires 'Dist::Zilla::PluginBundle::Git';
    requires 'Pod::Elemental::Transformer::List';
};

feature 'encryption', 'Encryption and Hashing' => sub {
    requires 'Crypt::Blowfish';
    requires 'Crypt::CBC';
    requires 'Digest::HMAC_SHA1';
    requires 'Digest::MD5';
    requires 'Digest::SHA1';
};

feature 'exact', 'exact Modules' => sub {
    requires 'exact';
    requires 'exact::class';
    requires 'exact::cli';
    requires 'exact::conf';
    requires 'exact::lib';
    requires 'exact::me';
};

feature 'files', 'File System Tools' => sub {
    requires 'File::Path';
    requires 'IO::All';
};

feature 'html', 'HTML and URL Processing' => sub {
    requires 'Convert::Base32';
    requires 'HTML::FormatText';
    requires 'HTML::TokeParser::Simple';
    requires 'HTML::TreeBuilder';
    requires 'URI::Escape';
};

feature 'logging', 'Logging Tools' => sub {
    requires 'Log::Dispatch';
    requires 'Log::Dispatch::Email::Mailer';
};

feature 'mail', 'Mail Utilities' => sub {
    requires 'Email::Mailer';
    requires 'Email::Simple';
    requires 'Mail::Sender';
    requires 'Net::IMAP::Simple';
    requires 'Template';
};

feature 'mojo', 'Mojolicious Development' => sub {
    requires 'Input::Validator';
    requires 'MojoX::Log::Dispatch::Simple';
    requires 'Mojolicious';
    requires 'Mojolicious::Plugin::AccessLog';
    requires 'Mojolicious::Plugin::Directory';
    requires 'Mojolicious::Plugin::ToolkitRenderer';
    requires 'Template';
    requires 'Text::MultiMarkdown';
};

feature 'moose', 'Moose Development' => sub {
    requires 'Moose';
    requires 'MooseX::ClassAttribute';
    requires 'MooseX::MarkAsMethods';
    requires 'MooseX::NonMoose';
    requires 'Test::Moose';
    requires 'Throwable::Error';
};

feature 'reply', 'Reply REPL CLI Environment' => sub {
    requires 'B::Keywords';
    requires 'Carp::Always';
    requires 'Class::Refresh';
    requires 'Data::Printer';
    requires 'IO::Pager';
    requires 'Proc::InvokeEditor';
    requires 'Reply';
    requires 'Reply::Plugin::ConfigurablePrompt';
    requires 'Reply::Plugin::Pager';
    requires 'Term::ReadKey';
    requires 'Term::ReadLine::Perl';
};

feature 'test', 'Testing Tools' => sub {
    requires 'Pod::Coverage::TrustPod';
    requires 'Test2::Harness';
    requires 'Test2::V0';
    requires 'Test::CheckManifest';
    requires 'Test::EOL';
    requires 'Test::Kwalitee';
    requires 'Test::MockModule';
    requires 'Test::Most';
    requires 'Test::NoTabs';
    requires 'Test::Pod';
    requires 'Test::Pod::Coverage';
    requires 'Test::Synopsis';
    requires 'Test::WWW::Mechanize';
    requires 'WWW::Mechanize';
};

