cask "prisma-2" do
  version "2.0.0.5,7"
  sha256 "f7aa9b986159dd815caae867899db60ef75ec1568afb5f1902f7b9ba89ac90df"

  url "https://pub-6bdc7bd5cb4646358136c4989f36d812.r2.dev/PRISMA-2-#{version.csv.first}-#{version.csv.second}.zip"
  name "PRISMA 2"
  desc "Grava a tela, a câmera (do Mac ou do celular) e o áudio, com LUT, lupa e marcações"
  homepage "https://flmmkr.site"

  livecheck do
    url "https://pub-6bdc7bd5cb4646358136c4989f36d812.r2.dev/appcast.xml"
    strategy :sparkle
  end

  auto_updates true                      # o próprio app se atualiza (Sparkle)
  depends_on macos: ">= :sequoia"

  app "PRISMA 2.app"

  # App beta assinado ad-hoc (sem Developer ID): tira a marca de quarentena para abrir sem o aviso do macOS
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/PRISMA 2.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.prisma.app",
    "~/Library/Preferences/com.prisma.app.plist",
    "~/Library/Caches/com.prisma.app",
  ]
end
