# Generated with JReleaser 1.16.0 at 2025-02-01T00:27:29.875691Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-53/tessellate-1.0-wip-53.zip"
  version "1.0-wip-53"
  sha256 "7a31954d1900bd3fdcf10edbf2f67f775cbad24e901bdb6af52adfe57479f1a8"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-53", output
  end
end
