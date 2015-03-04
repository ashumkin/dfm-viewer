#!/usr/bin/env perl

$dfm_encoding = $ENV{'DFM_ENCODING'};
if ($dfm_encoding) {
	use Encode;
} else {
	binmode(STDOUT, ":utf8");
}

while (<>) {
	while (s/\#(\d+)/pack "U", $1/e) {}
	if ($dfm_encoding) {
		$_ = Encode::encode($dfm_encoding, $_);
	}
	print
}
