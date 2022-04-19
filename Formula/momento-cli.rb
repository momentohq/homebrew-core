class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  url "https://github.com/momentohq/momento-cli/releases/download/v0.13.25/archive-0.13.25.tar.gz"
  sha256 "865b7ec539bcd5aa31b85f44f6a728a6079d13510bbfd9c7b111b7b098664a0e"
  head "https://github.com/momentohq/momento-cli.git"

  bottle do
    root_url "https://github.com/momentohq/homebrew-tap/releases/download/momento-cli-0.13.21"
    sha256 cellar: :any_skip_relocation, big_sur:      "19478e084d8c8fc5ee3859ea3a976599864bfd4797b542eff091847dea2182c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b2bf4ed461c0d21ad3971aa0b8dd2e3d46b8016d4109471f7ce989138a8784c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/momento"
  end
end
