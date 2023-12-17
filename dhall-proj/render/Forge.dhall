let Forge = ../types/Forge.dhall

in  λ(forge : Forge) →
      merge { GitLab = "gitlab.com", GitHub = "github.com" } forge
