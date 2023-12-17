let Prelude = https://prelude.dhall-lang.org/v22.0.0/package.dhall

let Repo = ../types/Repo.dhall

let repoOrgName = λ(repo : Repo) → ./Org.dhall repo.org ++ "/" ++ repo.name

let repoGitUrl =
      λ(repo : Repo) →
        Prelude.Text.concat
          [ "git@", ./Forge.dhall repo.forge, ":", repoOrgName repo ]

let repoHttpUrl =
      λ(repo : Repo) →
        Prelude.Text.concatSep
          "/"
          [ "https:/", ./Forge.dhall repo.forge, repoOrgName repo ]

in  { repoGitUrl, repoHttpUrl, repoOrgName }
