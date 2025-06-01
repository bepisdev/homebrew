# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sshmux < Formula
  desc "SSH command muxer"
  homepage "https://github.com/bepisdev/sshmux"
  url "https://github.com/bepisdev/sshmux/archive/refs/tags/1.0.tar.gz"
  sha256 "62bc5d7c8e6f92fa8a2f323f564e5a78d9172192a76b2201fad6c58133f7a559"
  license ""

  depends_on "rust" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "cargo", "install", *std_cargo_args
    system "make"
    bin.install "sshmux"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sshmux`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
