# Generated with JReleaser 1.16.0 at 2025-05-03T00:08:10.702838Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-80/tessellate-1.0-wip-80.zip"
  version "1.0-wip-80"
  sha256 "46d893cd54b789c8c44ece7d8152b2f6b096ab5396d2ecdf3a757cdc2b7f4f10"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-80", output
  end
end
