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
    }
	`additionalKeysP`
    [ ("M-<F1>",	spawn "xbacklight -dec 5%"		)
	, ("M-<F2>",	spawn "xbacklight -inc 5%"		)
	, ("M-<F3>",	spawn "amixer sset Master 5%-"	)
	, ("M-<F4>",	spawn "amixer sset Master 5%+"	)
	, ("M-<F5>",	spawn "chromium"                )
	, ("M-<F6>", 	unGrab *> spawn "scrot -s"		)
    ]
