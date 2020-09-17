let Org = ./Org.dhall

let printOrg =
      λ(org : Org) →
        merge
          { Colah = "colah"
          , DistRap = "distrap"
          , HaskellEmbedded = "HaskellEmbedded"
          , HexamonTech = "hexamon-tech"
          , Galois = "GaloisInc"
          , JuliaLongtin = "julialongtin"
          , Sorki = "sorki"
          }
          org

in  printOrg
