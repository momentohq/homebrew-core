class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.9.0/archive-0.9.0.tar.gz"
  sha256 "960b4dbb165335f05f67070bf60d92feffaf3c79d2864f5482ede10dcab79e15"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.8.4"
    sha256 cellar: :any_skip_relocation, big_sur:      "5461cb0c480ca0f1f801c3a4831782b3e64173b0c724e9c0ceb7cccff59a22a2"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f1c9f6f9f4ba3e3d642089ff5e70e33453633d3536ea69e971939c445da9753e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
