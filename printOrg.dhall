let Org = ./Org.dhall

let printOrg =
      λ(org : Org) →
        merge
          { DistRap = "distrap"
          , Galois = "GaloisInc"
          , HaskellEmbedded = "HaskellEmbedded"
          , HaskellThings = "HaskellThings"
          , HexamonTech = "hexamon-tech"
          , JuliaLongtin = "julialongtin"
          , Sorki = "sorki"
          }
          org

in  printOrg
