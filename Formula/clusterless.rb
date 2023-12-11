# Generated with JReleaser 1.8.0 at 2023-12-11T22:51:58.678375376Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-76/clusterless-1.0-wip-76.zip"
  version "1.0-wip-76"
  sha256 "174e4fa9f9d3cbc1e8100252fff03cacbd0afeec9521c86dd2f3cff8fb7eb7b6"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-76", output
  end
end
