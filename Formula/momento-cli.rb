class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.22.5/archive-0.22.5.tar.gz"
  sha256 "ec11909850655de5a38119544bda391998eff401646aa5174e8d5b2d11d0ed19"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.22.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "8c497e48e7028d22bdeaf8443c3fc9570acb93bb3e1ccfc7377f4176619aac67"
    sha256                               x86_64_linux: "1ff3faaef03d5d16619fabd6ac07e4da251b75af193cdc9d21c7963ed28220c1"
  end

  depends_on "protobuf" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
