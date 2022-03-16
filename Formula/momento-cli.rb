class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.11.9/archive-0.11.9.tar.gz"
  sha256 "84998f7304207f29a7c1b36b50c6a2a6d01c44d958878a00b3c0646d92eb46b2"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.11.9"
    sha256 cellar: :any_skip_relocation, big_sur:      "fab9675fd158e94ea1cd3c70c81df3aca1de6934058efc451f350573f73f7ab9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6bbe9c8aaec45637de340fb502d334f9895aea6d118ed40fee3c95fe36914a36"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
