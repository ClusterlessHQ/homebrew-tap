# Generated with JReleaser 1.8.0 at 2025-01-15T20:50:36.422539542Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-80/clusterless-1.0-wip-80.zip"
  version "1.0-wip-80"
  sha256 "43fdd7faa604062a132fb91b9e6dba8130c57494d1bf812ceb5ec5112af17c33"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-80", output
  end
end
