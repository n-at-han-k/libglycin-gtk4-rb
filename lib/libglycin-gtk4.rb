# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

# `require "libglycin-gtk4"` — the gem's own name.
#
# This file exists because the gem name contains a dash and the library does
# not: the code lives in lib/libglycin_gtk4.rb, named for the GlyGtk4 namespace it
# defines. Without this, `require "libglycin-gtk4"` fails with
# `cannot load such file -- libglycin-gtk4`, which is how a port consuming this gem
# first discovered the problem.
#
# RubyGems also treats a dash as a directory separator, so gem_kit infers a
# require path of "libglycin/gtk4" from the gem name and warns
# "deprecations will not be detected" when nothing answers it. This file
# settles both.
require_relative "libglycin_gtk4"
