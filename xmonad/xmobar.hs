-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Monaco-6",
    bgColor = "#000000",
    fgColor = "#E1AA5D",
    position = Static { xpos = 30, ypos = 0, width = 2500, height = 32 },
    lowerOnStart = True,
    commands = [
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#E1AA5D","-n","#E84F4F","-w","3"] 50,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#B58900","-n","#FFFFCC"] 10,
        Run Network "wlp3s0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#B58900","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %H:%M" "date" 10,
         Run BatteryP ["BAT0"]
              ["-t", "Batt. <acstatus> <fc=#9B64FB>[</fc><fc=#B58900><left></fc>%<fc=#9B64FB>]</fc>",
               "-L", "10", "-H", "80", "-p", "3",
               "--", "-O", "<fc=green>On</fc> - ", "-i", "",
               "-L", "-15", "-H", "-5",
               "-l", "red", "-m", "blue", "-h", "green"]
              600,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %battery% <fc=#9B64FB>|</fc>  %multicpu% <fc=#9B64FB>|</fc> %memory% <fc=#9B64FB>|</fc> %wlp3s0% <fc=#9B64FB>|</fc> <fc=#DDDDDD>%date%</fc>"
}
