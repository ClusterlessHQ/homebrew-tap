# Generated with JReleaser 1.8.0 at 2025-04-21T15:10:48.643209608Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-103/clusterless-1.0-wip-103.zip"
  version "1.0-wip-103"
  sha256 "05d4c691261b0379f46a0691670c5a04212c1b716f358149861c46c3b90072a5"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-103", output
  end
end
