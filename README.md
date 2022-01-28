## Unicode to Hex

A demo Perl script that converts a Unicode (e.g. Arabic) string to hexadecimal.

Ref : "Arabic to Hex and Hex to Arabic" @ http://www.perlmonks.org/index.pl?node_id=1196219

### Usage :

```
$ perl Unicode_to_Hex.pl

UTF-8
-----
str UTF8 : ﻟﻠﺒﻴﻊ
hex UTF8 : 0xef 0xbb 0x9f 0xef 0xbb 0xa0 0xef 0xba 0x92 0xef 0xbb 0xb4 0xef 0xbb 0x8a
str UTF8 : ﻟﻠﺒﻴﻊ

UCS-2
-----
str UCS2 : ﻟﻠﺒﻴﻊ
hex UCS2 : 0xfedf 0xfee0 0xfe92 0xfef4 0xfeca
str UCS2 : ﻟﻠﺒﻴﻊ
```
