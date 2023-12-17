let Org = ../types/Org.dhall

in  λ(org : Org) →
      merge
        { DistRap = "distrap"
        , Galois = "GaloisInc"
        , HaskellEmbedded = "HaskellEmbedded"
        , HaskellThings = "Haskell-Things"
        , HexamonTech = "hexamon-tech"
        , JuliaLongtin = "julialongtin"
        , Sorki = "sorki"
        }
        org
