# frozen_string_literal: true

# Released under the Apache License, Version 2.0.
# Copyright, 2026, by General Intelligence Systems.

require "libglycin_gtk4/version"

describe LibglycinGtk4 do
  it "has a version" do
    expect(LibglycinGtk4::VERSION).to be =~ /\A\d+\.\d+\.\d+\z/
  end
end
