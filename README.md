Perl script to view Delphi DFM forms in Windows encoding.

One can set it as a textconv driver for git repository (see https://git.wiki.kernel.org/index.php/Textconv).
E.g.
```
    [diff "dfm-viewer"]
        textconv = DFM_ENCODING=cp1251 perl -- <path>/dfm-viewer.pl
```
