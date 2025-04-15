# Generated with JReleaser 1.8.0 at 2025-04-15T15:29:49.843588957Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-102/clusterless-1.0-wip-102.zip"
  version "1.0-wip-102"
  sha256 "967f744843b4977c5c2df976113f8af6da352b2a39fd69246a08e875abca19a9"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-102", output
  end
end
