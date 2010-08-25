import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageHelpers
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Layout.Tabbed
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders

import XMonad.Prompt
import XMonad.Prompt.Shell

myPromptConfig :: XPConfig
myPromptConfig = defaultXPConfig {
                   font = "-*-terminus-*-*-*-*-14-*-*-*-*-*-*-*"
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

myManageHook = manageDocks <+> composeAll
    [ className =? "stalonetray" --> doIgnore]


main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/milan/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageHook defaultConfig <+> myManageHook <+> composeOne [isFullscreen -?> doFullFloat]
        , layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
        , startupHook = ewmhDesktopsStartup >> setWMName "LG3D"
        , terminal = "urxvt"
        , normalBorderColor = "white"
        , focusedBorderColor = "green"
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((mod4Mask .|. shiftMask, xK_Return), spawn "urxvt")
        , ((mod4Mask .|. shiftMask, xK_n), spawn "emacsclient -c")
        , ((mod4Mask, xK_p), spawn "exe=`dmenu_path | dmenu -b` && eval \"exec $exe\"")
        , ((mod4Mask, xK_x), shellPrompt defaultXPConfig)
        , ((mod4Mask, xK_b), sendMessage ToggleStruts)
        , ((mod4Mask .|. shiftMask, xK_F9), spawn "sudo poweroff")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]


 
