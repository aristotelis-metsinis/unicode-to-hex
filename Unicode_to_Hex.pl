#!/usr/bin/perl
#
# Ref : "Arabic to Hex and Hex to Arabic" @ http://www.perlmonks.org/index.pl?node_id=1196219
#
# Usage :
#
# $ perl Unicode_to_Hex.pl
# 
# UTF-8
# -----
# str UTF8 : ﻟﻠﺒﻴﻊ
# hex UTF8 : 0xef 0xbb 0x9f 0xef 0xbb 0xa0 0xef 0xba 0x92 0xef 0xbb 0xb4 0xef 0xbb 0x8a
# str UTF8 : ﻟﻠﺒﻴﻊ
# 
# UCS-2
# -----
# str UCS2 : ﻟﻠﺒﻴﻊ
# hex UCS2 : 0xfedf 0xfee0 0xfe92 0xfef4 0xfeca
# str UCS2 : ﻟﻠﺒﻴﻊ
#

use utf8;
use strict;
use warnings;
use feature qw( say );
use Encode qw( decode encode );
use String::HexConvert ":all";

binmode( STDOUT, ":utf8" );

# -----------------------------------------------------------------

# "For sale"
my $arabic = "ﻟﻠﺒﻴﻊ";                 

# -----------------------------------------------------------------

say( "" );
say( "UTF-8" );
say( "-----" );
say( "str UTF8 : " . $arabic );

my $utf8 = encode( "UTF-8", $arabic );

print( "hex UTF8 : " );
printf( "%#x ", ord( substr( $utf8, $_, 1 ) ) ) for 0 .. length( $utf8 ) - 1 ;
say( "" );

my $ascii2hexUTF8 = ascii_to_hex( $utf8 );
my $hex2ascciiUTF8 = hex_to_ascii( $ascii2hexUTF8 );
my $strUTF8 = decode( "UTF-8", $hex2ascciiUTF8 );
say( "str UTF8 : " . $strUTF8 );
say( "" );

# -----------------------------------------------------------------

say( "UCS-2 " );
say( "----- " );
say( "str UCS2 : " . $arabic );

print( "hex UCS2 : " ) ;
printf( "%#x ", ord( substr( $arabic, $_, 1 ) ) ) for 0 .. length( $arabic ) - 1;
say( "" );

my $ucs2 = encode( "UCS-2BE", $arabic );
my $ascii2hexUCS2 = ascii_to_hex( $ucs2 );
my $hex2ascciiUCS2 = hex_to_ascii( $ascii2hexUCS2 );
my $strUCS2 = decode( "UCS-2BE", $hex2ascciiUCS2 );
say( "str UCS2 : " . $strUCS2 );

__END__

# -----------------------------------------------------------------
