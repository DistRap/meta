let dhall-proj = ./dhall-proj/package.dhall

let Repo = dhall-proj.schemas.Repo

let Org = dhall-proj.types.Org

let distrapRepos =
      [ Repo::{ name = "can4disco" }
      , Repo::{ name = "can4disco-hw" }
      , Repo::{ name = "cidl" }
      , Repo::{ name = "data-svd" }
      , Repo::{ name = "distrap-branding" }
      , Repo::{ name = "emhell" }
      , Repo::{ name = "gcodehs" }
      , Repo::{ name = "gidl" }
      , Repo::{ name = "hgdbmi" }
      , Repo::{ name = "hocd" }
      , Repo::{ name = "hs-canopen" }
      , Repo::{ name = "ivory" }
      , Repo::{ name = "ivory-tower-stm32" }
      , Repo::{ name = "ivory-tower-base" }
      , Repo::{ name = "ivory-tower-canopen" }
      , Repo::{ name = "ivory-tower-cayenne" }
      , Repo::{ name = "ivory-tower-drivers" }
      , Repo::{ name = "ivory-tower-helloworld" }
      , Repo::{ name = "ivory-tower-hxstream" }
      , Repo::{ name = "ivory-tower-lorawan" }
      , Repo::{ name = "ivory-tower-posix" }
      , Repo::{ name = "lambdadrive" }
      , Repo::{ name = "library" }
      , Repo::{ name = "liveplot" }
      , Repo::{ name = "meta" }
      , Repo::{ name = "monstick-firmware" }
      , Repo::{ name = "nanovg-blendish" }
      , Repo::{ name = "nixos-lorawan-gateway" }
      , Repo::{ name = "stm32-tests" }
      , Repo::{ name = "tower" }
      , Repo::{ name = "website" }
      ]

let haskellEmbeddedRepos =
      [ Repo::{ name = "book", org = Org.HaskellEmbedded }
      , Repo::{ name = "data-stm32", org = Org.HaskellEmbedded }
      , Repo::{ name = "esp-sdk-ivory", org = Org.HaskellEmbedded }
      , Repo::{ name = "ion", org = Org.HaskellEmbedded }
      , Repo::{ name = "ivory-tower-linux", org = Org.HaskellEmbedded }
      , Repo::{ name = "ivory-tower-nix", org = Org.HaskellEmbedded }
      , Repo::{
        , name = "ivory-tower-stm32-generated"
        , org = Org.HaskellEmbedded
        }
      ]

let haskellThingsRepos =
      [ Repo::{ name = "floating-bits", org = Org.HaskellThings }
      , Repo::{ name = "hslice", org = Org.HaskellThings }
      , Repo::{ name = "ImplicitCAD", org = Org.HaskellThings }
      , Repo::{ name = "implicitpipe", org = Org.HaskellThings }
      , Repo::{ name = "IObjects", org = Org.HaskellThings }
      ]

let galoisRepos =
      [ Repo::{ name = "ivorylang-org", org = Org.Galois }
      , Repo::{ name = "gec", org = Org.Galois }
      , Repo::{ name = "smaccmpilot-stm32f4", org = Org.Galois }
      , Repo::{ name = "smaccmpilot-org", org = Org.Galois }
      ]

let distrap =
        { name = "DistRap"
        , repos =
              distrapRepos
            # haskellEmbeddedRepos
            # haskellThingsRepos
            # galoisRepos
        }
      : dhall-proj.types.Project

in  distrap
