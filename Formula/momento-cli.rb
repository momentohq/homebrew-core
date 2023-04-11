class MomentoCli < Formula
  desc "Cli to interact with Momento services"
  homepage "https://github.com/momentohq/momento-cli"
  version "0.38.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.0/momento-cli-0.38.0.x86_64-apple-darwin.tar.gz"
      sha256 "e74bb1d06afd0f5e8b4323697bb0693365e43f1bc266f3370b5f76d756f739c0"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.0/momento-cli-0.38.0.aarch64-apple-darwin.tar.gz"
      sha256 "463b845dd4890a4286fcff2a843d687ee14c93c8ba82a12958cbbabaa8eebb64"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.0/momento-cli-0.38.0.linux_x86_64.tar.gz"
      sha256 "58df538bc498bbafc911764c9f31d37ac27b1d03d0a8ec9549ba564d0d210371"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/momentohq/momento-cli/releases/download/v0.38.0/momento-cli-0.38.0.linux_aarch64.tar.gz"
      sha256 "dda1830c20e32eb6073478307afd167b29e13eaf5ab5894d4d36d1a59a1ae756"

      def install
        bin.install "momento"
        bash_completion.install "bash/momento"
        zsh_completion.install "zsh/_momento"
      end
    end
  end
end
