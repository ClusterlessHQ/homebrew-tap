# Generated with JReleaser 1.16.0 at 2025-04-03T14:19:35.270144Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-69/tessellate-1.0-wip-69.zip"
  version "1.0-wip-69"
  sha256 "0820bbc888451222316e5757065a53ffa3cecb3eda16cf1be97972f0dbdaab9c"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-69", output
  end
end
