package MyApp::Forms::Sample;
use Moo;
use Data::MuForm::Meta;
extends 'Data::MuForm';

has_field 'foo';
has_field 'alpha' => ( type => 'Textarea' );
has_field 'bar' => (
    type => 'Select',
    options => [[ qw/One Two Three/ ]],
);

1;
