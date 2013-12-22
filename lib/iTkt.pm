package iTkt;
use Dancer ':syntax';
use Dancer::Plugin::Database;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/testdb' => sub {
	my @teams = database->quick_select('Teams', {});
	my @users = database->quick_select('Users', {});
	
	template 'testdb' => { teams => \@teams, users => \@users }
};

true;
