class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.7/archive-0.13.7.tar.gz"
  sha256 "0359199964b4a7a38c28af080c84753f16f5088654912a4624303c2e67dc7861"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.6"
    sha256 cellar: :any_skip_relocation, big_sur:      "0610cd147271adc421ed4fcb758afd9f504cf1e7f5ab91458cd690d3a744b757"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2c1ded62647da300c37b28dc8500a26b224733e520eee76db28d553bc83e779d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
