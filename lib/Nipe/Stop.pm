#!/usr/bin/perl

#########################################################
# Nipe developed by Heitor Gouvêa                       #
# This work is licensed under MIT License               #
# Copyright (c) 2015-2017 Heitor Gouvêa                 #
#                                                       #
# [+] AUTOR:        Heitor Gouvêa                       #
# [+] EMAIL:        hi@heitorgouvea.me                  #
# [+] SITE:         http://heitorgouvea.me              #
# [+] GITHUB:       https://github.com/GouveaHeitor     #
# [+] TWITTER:      https://twitter.com/GouveaHeitor    #
# [+] FACEBOOK:     https://fb.com/GouveaHeitor         #
# [+] TELEGRAM:     @GouveaHeitor                       #
#########################################################

package Nipe::Stop;

sub new {
	my @table = ("nat", "filter");

	foreach my $table (@table) {
		system ("sudo iptables -t $table -F OUTPUT");
		system ("sudo iptables -t $table -F OUTPUT");
	}
}

1;
