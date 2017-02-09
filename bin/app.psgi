#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";

use MyWeb_Mason::App;
MyWeb_Mason::App->to_app;
