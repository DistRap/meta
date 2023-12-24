let dhall-proj = ./dhall-proj/package.dhall

let Repo = dhall-proj.schemas.Repo

let Org = dhall-proj.types.Org

let distrapRepos =
      [ Repo::{ name = "can4disco" }
      , Repo::{ name = "can4disco-hw" }
      , Repo::{ name = "cidl" }
      , Repo::{ name = "distrap-branding" }
      , Repo::{ name = "gcodehs" }
      , Repo::{ name = "gidl" }
      , Repo::{ name = "hgdb" }
      , Repo::{ name = "hgdbmi" }
      , Repo::{ name = "hs-canopen" }
      , Repo::{ name = "ivory" }
      , Repo::{ name = "ivory-tower-stm32" }
      , Repo::{ name = "ivory-tower-base" }
      , Repo::{ name = "ivory-tower-canopen" }
      , Repo::{ name = "ivory-tower-drivers" }
      , Repo::{ name = "ivory-tower-helloworld" }
      , Repo::{ name = "ivory-tower-hxstream" }
      , Repo::{ name = "ivory-tower-posix" }
      , Repo::{ name = "lambdadrive" }
      , Repo::{ name = "library" }
      , Repo::{ name = "liveplot" }
      , Repo::{ name = "meta" }
      , Repo::{ name = "nanovg-blendish" }
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

let hexamonTechRepos =
      [ Repo::{ name = "ivory-tower-cayenne", org = Org.HexamonTech }
      , Repo::{ name = "ivory-tower-lorawan", org = Org.HexamonTech }
      , Repo::{ name = "monstick-firmware", org = Org.HexamonTech }
      , Repo::{ name = "nixos-lorawan-gateway", org = Org.HexamonTech }
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
            # hexamonTechRepos
            # galoisRepos
        }
      : dhall-proj.types.Project

in  distrap
