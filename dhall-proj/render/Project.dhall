let Prelude = https://prelude.dhall-lang.org/v22.0.0/package.dhall

let types = ../types.dhall

let renderRepoList =
      λ(proj : types.Project) →
        Prelude.Text.concatMapSep
          "\n"
          types.Repo
          (λ(repo : types.Repo) → "${repo.name}")
          proj.repos

let renderTODOList =
      λ(proj : types.Project) →
            ''
            * TODO Make TODO list
            ''
        ++  Prelude.Text.concatMapSep
              "\n"
              types.Repo
              ( λ(repo : types.Repo) →
                  "** TODO ${(./Repo.dhall).repoOrgName repo}"
              )
              proj.repos

let renderClonerF =
      λ(renderFun : types.Repo → Text) →
      λ(proj : types.Project) →
            ''
            #!/usr/bin/env bash
            ''
        ++  Prelude.Text.concatMapSep
              "\n"
              types.Repo
              (λ(repo : types.Repo) → "git clone ${renderFun repo}")
              proj.repos

let renderCloner = renderClonerF (./Repo.dhall).repoGitUrl

let renderHTTPCloner = renderClonerF (./Repo.dhall).repoHttpUrl

let renderDeleter =
      λ(proj : types.Project) →
            ''
            #!/usr/bin/env bash
            ''
        ++  Prelude.Text.concatMapSep
              "\n"
              types.Repo
              ( λ(repo : types.Repo) →
                  "test -d ${repo.name} && git -C ${repo.name} diff --quiet && git -C ${repo.name} diff --cached --quiet && rm -rf ${repo.name}"
              )
              proj.repos

let renderUpdater =
      λ(proj : types.Project) →
            ''
            #!/usr/bin/env bash
            ''
        ++  Prelude.Text.concatMapSep
              "\n"
              types.Repo
              (λ(repo : types.Repo) → "test -d ${repo.name} && git pull -C ${repo.name}")
              proj.repos

in  { renderCloner
    , renderDeleter
    , renderHTTPCloner
    , renderRepoList
    , renderTODOList
    , renderUpdater
    }
