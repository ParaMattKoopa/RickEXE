local ui = require "ui"

local audio = require "audio"

local sys = require "sys"

local win = ui.Window("Window:onHide() sample", 320, 200)

local dir = sys.Directory(sys.currentdir);

local ffi = require "ffi"

ffi.cdef[[

typedef void* HANDLE;

typedef const wchar_t* LPCWSTR;

typedef int BOOL;

typedef uint32_t UINT;

typedef uint32_t DWORD;

HANDLE SystemParametersInfoW(UINT uiAction, UINT uiParam, void* pvParam, UINT fWinIni);

]]

local SPI_SETDESKWALLPAPER = 0x0014

local SPIF_UPDATEINIFILE = 0x01

local path = ""dir.."/assets/rick.bmp"

local widePath = ffi.new("wchar_t[?]", #path + 1)

local result = ffi.C.SystemParametersInfoW(SPI_SETDESKWALLPAPER, 0, widePath, SPIF_UPDATEINIFILE)

local wallpath = sys.Directory(sys.currentdir.."/assets/rick.bmp")

--Functions

function RickWall () {
    for i = 1, #path do

        widePath[i - 1] = ffi.cast("wchar_t", path:byte(i))

    end
}

function win:onHide()
	win:show()
end

function Erreor () {
    ui.error("You Have Been Infected By The Rick.EXE !!1!", "Fatal Errer!1!!");
}

--Funny Shtuff

audio.play("assets/inst.mp3");

RickWall();

-- There has to be a better way lmfaooo

Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();
Erreor();