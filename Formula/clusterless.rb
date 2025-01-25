# Generated with JReleaser 1.8.0 at 2025-01-25T01:29:18.461593663Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-84/clusterless-1.0-wip-84.zip"
  version "1.0-wip-84"
  sha256 "3baadda11b5f0a3cb1343b19617328ba267ed1974768fd9d4dd2d027e4855783"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-84", output
  end
end
