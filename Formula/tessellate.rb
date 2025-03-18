# Generated with JReleaser 1.16.0 at 2025-03-18T21:21:29.002354Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-64/tessellate-1.0-wip-64.zip"
  version "1.0-wip-64"
  sha256 "0aa6c9d1728b7ea2e439e987983219d9f78384cf890daface3b401c51145a080"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-64", output
  end
end
