require 'mkmf'

$defs.push("-DUUID") if have_library("uuid")

create_makefile("identifier")