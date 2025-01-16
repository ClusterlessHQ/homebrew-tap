# Generated with JReleaser 1.8.0 at 2025-01-16T00:20:13.833976839Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-82/clusterless-1.0-wip-82.zip"
  version "1.0-wip-82"
  sha256 "022f6dc38a0a41b8b249812d071e0a1aa4ed4c6b58f3a045869d91533a72b1cd"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-82", output
  end
end
