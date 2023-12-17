let emci = https://raw.githubusercontent.com/sorki/emci/master/dhall/emci.dhall

let Org = ./Org.dhall

let printOrg = ./printOrg.dhall

let mkRepo =
      λ(org : Org) →
      λ(name : Text) →
        emci.mkRepo name ("https://github.com/" ++ printOrg org ++ "/" ++ name)

in  emci.mkProj
      "DistRap"
      [ mkRepo Org.DistRap "can4disco"
      , mkRepo Org.DistRap "cidl"
      , mkRepo Org.DistRap "gcodehs"
      , mkRepo Org.DistRap "gidl"
      , mkRepo Org.DistRap "hgdb"
      , mkRepo Org.DistRap "hgdbmi"
      , mkRepo Org.DistRap "ivory"
      , mkRepo Org.DistRap "tower"
      , mkRepo Org.DistRap "ivory-tower-stm32"
      , mkRepo Org.DistRap "ivory-tower-base"
      , mkRepo Org.DistRap "ivory-tower-canopen"
      , mkRepo Org.DistRap "ivory-tower-drivers"
      , mkRepo Org.DistRap "ivory-tower-helloworld"
      , mkRepo Org.DistRap "ivory-tower-hxstream"
      , mkRepo Org.DistRap "ivory-tower-posix"
      , mkRepo Org.DistRap "lambdadrive"
      , mkRepo Org.DistRap "meta"
      , mkRepo Org.HaskellEmbedded "book"
      , mkRepo Org.HaskellEmbedded "data-stm32"
      , mkRepo Org.HaskellEmbedded "ivory-tower-nix"
      , mkRepo Org.HaskellEmbedded "ivory-tower-stm32-generated"
      , mkRepo Org.HaskellThings "ImplicitCAD"
      , mkRepo Org.HaskellThings "hslice"
      , mkRepo Org.HexamonTech "ivory-tower-cayenne"
      , mkRepo Org.HexamonTech "ivory-tower-lorawan"
      , mkRepo Org.HexamonTech "monstick-firmware"
      ]
