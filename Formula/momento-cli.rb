class MomentoCli < Formula
  desc "Momento Client CLI"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.1.3/archive-0.1.4.tar.gz"
  version "0.1.4"
  sha256 "47252d586ad50a4fd40cc10d8fd8bdc7768a84d41b9e5465d256d021a70d5371"
  head "https://github.com/momentohq/momento-cli.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
