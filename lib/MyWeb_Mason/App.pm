package MyWeb_Mason::App;
use Dancer2;

our $VERSION = '0.1';

use  MyWeb_Mason::Forms::Sample;

get '/foo' => sub {
    template foo => { title => 'bar' };
};

get '/form1' => sub {
    my $form = MyWeb_Mason::Forms::Sample->new;
    template form1 => { form => $form };
};

get '/form2' => sub {
    my $form = MyWeb_Mason::Forms::Sample->new;
    template form2 => { form => $form };
};

get '/form3' => sub {
    my $form = MyWeb_Mason::Forms::Sample->new;
    $form->process(
        submitted => 0,
        init_values => {
            foo     => 'Text for field foo',
            alpha   => 'Text for field alpha',
            bar     => 'Two'
        },
    );
    template form3 => { form => $form };
};

get '/form4' => sub {
    my $form = MyWeb_Mason::Forms::Sample->new;
    $form->process(
        submitted => 0,
        init_values => {
            foo     => 'Text for field foo',
            alpha   => 'Text for field alpha',
            bar     => 'Two'
        },
    );
    template 'user/form4' => { form => $form };
};

1;
