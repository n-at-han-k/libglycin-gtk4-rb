# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

require_relative "lib/libglycin_gtk4/version"

Gem::Specification.new do |spec|
  spec.name = "libglycin-gtk4"
  spec.version = LibglycinGtk4::VERSION
  spec.authors = ["Nathan Kidd"]
  spec.email = ["nathankidd@hey.com"]
  spec.license = "Apache-2.0"

  spec.summary = "Ruby bindings for the GTK4 integration for glycin, turning a decoded image into a GdkTexture."
  spec.description = "The GTK4 integration for glycin, turning a decoded image into a GdkTexture, for Ruby. Defined from its GObject "\
    "Introspection typelib at require time rather than wrapped by hand, so the "\
    "binding is the whole namespace and does not drift as the library gains API."
  spec.homepage = "https://github.com/n-at-han-k/libglycin-gtk4-rb"

  spec.required_ruby_version = ">= 3.3"

  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["documentation_uri"] = "https://n-at-han-k.github.io/libglycin-gtk4-rb/"

  # The library, and the native extension's sources.
  #
  spec.files = Dir.glob(
    ["{lib}/**/*", "LICENSE", "NOTICE", "README.md", "CHANGELOG.md"],
    File::FNM_DOTMATCH,
    base: __dir__,
  )

  spec.require_paths = ["lib"]

  # GemKit::Deprecate declares a deprecation as a dated promise: the replacement, and the version the old name stops existing in.
  spec.add_dependency "gem_kit", "~> 0.2"

  # The loader. This is the whole binding: GObjectIntrospection::Loader reads
  # libglycin-gtk4's typelib and defines the GlyGtk4 namespace from it. glib2 comes along
  # as its dependency and is what GLib::Log and the GObject base classes are.
  #
  # libglycin-gtk4 itself is NOT a gem dependency and cannot be: it is a C library and
  # its typelib belongs to the distribution. See the README for the package name.
  spec.add_dependency "gobject-introspection", "~> 4.3"


  spec.add_development_dependency "lefthook", "~> 2.2"
end
