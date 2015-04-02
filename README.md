# Files to generate my site...

For the site that is here: [mattfeifarek.com].

This requires my hacked-up version of [PyGreen] which is changed to add [plim] so I can use [Mako].

It's not awesome, for me, mostly because of this [bug] in plim... but works for now.

Also, the scripts are hard-coded to paths on my Mac with a virtualenv and servers for me; if anyone else uses this, these scripts won't be so great.

It assumes that sass is installed too. There is a way to make Plim eat scss files, but I haven't gone there yet. Therefore, any sassing has to be done before you sync/serve/gen because pygreen doesn't know about sass.

There is a lot of cruft in the _sass directory, which is [Bourbon] and some of its children. 

All the text, images, etc are &copy; Matt Feifarek, but you can use the scripts and templates if you want.

[mattfeifarek.com]: http://mattfeifarek.com
[PyGreen]: https://github.com/mfeif/pygreen
[plim]: http://plim.readthedocs.org/en/latest/index.html
[Mako]: http://www.makotemplates.org/
[bug]: https://github.com/avanov/Plim/issues/41
[Bourbon]: http://bourbon.io

