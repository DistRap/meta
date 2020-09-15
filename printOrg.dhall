let Org = ./Org.dhall

let printOrg =
      λ(org : Org) →
        merge
          { DistRap = "distrap"
          , HaskellEmbedded = "HaskellEmbedded"
          , HexamonTech = "hexamon-tech"
          , Galois = "GaloisInc"
          , JuliaLongtin = "julialongtin"
          , Sorki = "sorki"
          }
          org

in  printOrg
