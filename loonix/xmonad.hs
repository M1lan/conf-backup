import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageHelpers
--import XMonad.Util.EZConfig(additionalKeys)
import System.IO
--import XMonad.Layout.Tabbed
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName
import XMonad.Actions.GridSelect
import XMonad.Layout.NoBorders

import XMonad.Prompt
import XMonad.Prompt.Shell

myPromptConfig :: XPConfig
myPromptConfig = defaultXPConfig {
                   font = "-*-terminus-*-*-*-*-12-*-*-*-*-*-*-*"
                 , bgColor = "#111111"
                 , fgColor = "#3A81CC"
                 , bgHLight = "#111111"
                 , fgHLight = "#51A366"
                 , borderColor = "#111111"
                 , promptBorderWidth = 0
                 , position = Bottom
                 , height = 32
                 , defaultText = []
                 }

myManageHook :: ManageHook
myManageHook = manageDocks <+> composeAll
    [ className =? "stalonetray" --> doIgnore]


main :: IO()
main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/milan/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageHook defaultConfig <+> myManageHook <+> composeOne [isFullscreen -?> doFullFloat]
        , layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
        , startupHook = ewmhDesktopsStartup >> setWMName "LG3D"
        , terminal = "urxvtc"
        , normalBorderColor = "black"
        , borderWidth = 2
        , focusedBorderColor = "darkolivegreen"
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((mod4Mask .|. shiftMask, xK_Return), spawn "urxvtc")
        , ((mod4Mask .|. shiftMask, xK_x), spawnSelected defaultGSConfig ["evince","audacity","spacefm","conkeror","ardour3","smplayer2","emacsclient -c","firefox","libreoffice --writer"])
        , ((mod4Mask .|. shiftMask, xK_a), spawn "conkeror")
        , ((mod4Mask .|. shiftMask, xK_n), spawn "emacsclient -a '' -c")  --eval \"(tool-bar-mode -1)(scroll-bar-mode -1)(menu-bar-mode -1)\"
        , ((mod4Mask .|. shiftMask, xK_t), spawn "emacsclient  --eval \"(eshell)\" -c")
--        , ((mod4Mask, xK_p), spawn "exe=`dmenu_path | dmenu -b` && eval \"exec $exe\"")
        , ((mod4Mask, xK_x), shellPrompt myPromptConfig)
        , ((mod4Mask, xK_b), sendMessage ToggleStruts)
        , ((mod4Mask .|. shiftMask, xK_F9), spawn "sudo poweroff")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]
