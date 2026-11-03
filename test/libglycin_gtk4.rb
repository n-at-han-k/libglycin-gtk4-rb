# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

require "libglycin_gtk4"

describe GlyGtk4 do
  # This gem gets a different suite from its siblings, and deliberately so.
  # GlyGtk4-2 is not a widget library: it is a one-function shim that turns a
  # glycin frame into a GdkTexture so a decoded image can be handed to GTK.
  # The whole typelib is `gly_gtk_frame_get_texture`.
  #
  # So the usual assertions -- a namespace with dozens of constants, classes
  # descending from GLib::Object -- would be asserting things untrue of the
  # library rather than checking the loader. They are replaced with the one
  # fact that matters: the function arrived.
  it "defines the frame-to-texture function" do
    expect(GlyGtk4).to be(:respond_to?, :frame_get_texture)
  end

  it "defines nothing it should not" do
    # If a future libglycin-gtk4 grows an API, this fails and the suite should
    # grow with it -- better than silently asserting nothing.
    from_typelib = GlyGtk4.methods - Module.methods

    expect(from_typelib).to be == [:frame_get_texture]
  end

  it "loaded through the loader rather than by accident" do
    expect(GlyGtk4::Loader.ancestors).to be(:include?, GObjectIntrospection::Loader)
  end
end
