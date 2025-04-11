# Generated with JReleaser 1.16.0 at 2025-04-11T21:23:40.28121Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-72/tessellate-1.0-wip-72.zip"
  version "1.0-wip-72"
  sha256 "18e3fa6a9bf2ff4b6aca2263b417ae1334bd2457ad34aca206d54188ebab65c7"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-72", output
  end
end
