import XMonad

import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

main :: IO ()
main = xmonad $ xmobarProp $ def
    { modMask = mod4Mask  -- Rebind Mod to the Super key
	, terminal = "alacritty"
    , normalBorderColor  = "#FAFAFA"
	, focusedBorderColor = "#00AA00"
    }
	`additionalKeysP`
    [ ("M-<F1>",	spawn "brightnessctl s 5%-"		)
	, ("M-<F2>",	spawn "brightnessctl s 5%+"		)
	, ("M-<F3>",	spawn "amixer sset Master 5%-"	)
	, ("M-<F4>",	spawn "amixer sset Master 5%+"	)
	, ("M-<F5>",	spawn "scrot"                   )
	, ("M-<F6>", 	unGrab *> spawn "scrot -s"		)
	, ("M-p", 		spawn "dmenu_run -fn \"Open Sans\" -nb \"#FFFFFF\" -nf \"#000080\" -sb \"#FFFFFF\" -sf \"#00DD00\" "				)
    ]
