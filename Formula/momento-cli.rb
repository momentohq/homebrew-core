class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.15/archive-0.13.15.tar.gz"
  sha256 "2c46037702e671cd29b406c17044f8b3eca98594d36250bda60bbf331b072c98"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.13"
    sha256 cellar: :any_skip_relocation, big_sur:      "ce4d8acc2a34e8b4165b1ff2c04a34684bde021917ea8157c408cc9af832b531"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "433cfda6f149a3a9ea38e85b5f2cc03da69695ce8e7e8b99462f14ac00049385"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
