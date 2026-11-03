# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

# RubyGems treats a dash in a gem name as a directory separator, so the
# conventional entry point for `libglycin-gtk4` is `libglycin/gtk4`. gem_kit
# infers that and requires it to find this gem's deprecations.
require_relative "../libglycin_gtk4"
