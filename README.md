# PRISMA 2 — Homebrew tap

```bash
brew tap mikejop/prisma
brew install --cask prisma-2
```

Requer macOS 15 (Sequoia) ou mais novo. O app é uma versão **beta** assinada ad-hoc (sem Developer ID); o cask tira a marca de quarentena para ele abrir sem aviso. O próprio PRISMA 2 se atualiza (Sparkle); `brew upgrade --cask prisma-2` também funciona.

Este tap é atualizado por `scripts/update-cask.sh` a cada `scripts/release.sh` (o cask aponta para o zip versionado e imutável no R2).
