requires 'IP::Country';
requires 'Nephia', '0.05';
requires 'Nephia::Plugin::Response::YAML';
requires 'perl', '5.008';

on build => sub {
    requires 'Test::More';
};
