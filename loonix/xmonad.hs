import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Hooks.ManageHelpers
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Layout.NoBorders
import XMonad.Prompt

myPromptConfig :: XPConfig
myPromptConfig = defaultXPConfig {
                   font = "-*-terminus-*-*-*-*-12-*-*-*-*-*-*-*"
                 , bgColor = "#111111"
                 , fgColor = "#FFFFFF"
                 , bgHLight = "#111111"
                 , fgHLight = "#51A366"
                 , borderColor = "#111111"
                 , promptBorderWidth = 0
                 , position = Bottom
                 , height = 16
                 , defaultText = []
                 }

main = do
    xmproc <- spawnPipe "/home/milan/.cabal/bin/xmobar /home/milan/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = composeOne [ isFullscreen -?> doFullFloat ] <+>  manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
        , terminal = "urxvt"
        , focusedBorderColor = "blue"  -- "#ff0000" don't use hex, not <24 bit safe        
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((mod4Mask .|. shiftMask, xK_Return), spawn "urxvt")
        , ((mod4Mask, xK_p), spawn "exe=`dmenu_path | dmenu -b` && eval \"exec $exe\"")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]

