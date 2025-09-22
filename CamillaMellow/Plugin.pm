package Plugins::CamillaMellow::Plugin;

use strict;
use warnings;

use Slim::Utils::Prefs;
use Slim::Utils::Log;

my $log = logger('plugin.camillamellow');
my $prefs = preferences('plugin.camillamellow');

sub initPlugin {
    my $class = shift;
    
    $log->info("CamillaMellow plugin initialized");
    
    require Plugins::CamillaMellow::PlayerSettings;
    Plugins::CamillaMellow::PlayerSettings->new();
    
    return $class;
}

sub getDisplayName {
    return 'PLUGIN_CAMILLAMELLOW';
}

1;
