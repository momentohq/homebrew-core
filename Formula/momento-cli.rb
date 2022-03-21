class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.12.8/archive-0.12.8.tar.gz"
  sha256 "2bf81a447ddbd5e5d7b2e9e72d14c51330740671be5eef505f4ae02caa456261"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.12.8"
    sha256 cellar: :any_skip_relocation, big_sur:      "75d4ae84322318b92aac8c923cce076154c1d07db9b622dfcd4d448f1e6b2017"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "951d6b8d4cd38330d2efc2e60e7ce90ca64a9dee2858e3eef1f3df39f8555478"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
