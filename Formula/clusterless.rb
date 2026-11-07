# Generated with JReleaser 1.26.0 at 2026-11-07T19:59:24.626425124Z

class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-131/clusterless-1.0-wip-131.zip"
  version "1.0-wip-131"
  sha256 "9ddd357542d70d3ddb5a1029eb02c7218ae1655e28549aa407a01ba524c53475"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-131", output
  end
end
