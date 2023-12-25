let Org = ../types/Org.dhall

in  λ(org : Org) →
      merge
        { DistRap = "DistRap"
        , Galois = "GaloisInc"
        , HaskellEmbedded = "HaskellEmbedded"
        , HaskellThings = "Haskell-Things"
        , JuliaLongtin = "julialongtin"
        , Sorki = "sorki"
        }
        org
