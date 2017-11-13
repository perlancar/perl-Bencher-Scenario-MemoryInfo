package Bencher::Scenario::MemoryInfo;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark getting system memory information',

    participants => [
        {fcall_template => 'Sys::MemInfo::freemem()'},
        {fcall_template => 'Linux::MemInfo::get_mem_info()'},
        {module => 'Linux::Info::MemStats', code_template=>'my $lxs = Linux::Info::MemStats->new; $lxs->get'},
    ],
};

1;
# ABSTRACT:
