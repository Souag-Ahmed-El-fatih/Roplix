/*
    ---------------------------------------------------
               Roplix operating system (x86)
               GPL V 3.0
    ---------------------------------------------------
    * early_gfx.c - C lang (source file)
    * copy right (2026)  souag ahmed  <souagahmedelfatih@gmail.com>
    * 2:21 PM 11-08-2026
    ---------------------------------------------------
    * devloper : Souag Ahmed El Fatih
    * github_acount = Souag-Ahmed-El-fatih 
    ---------------------------------------------------
    * all edits in : docs/edits.txt
*/

/**/

/*
    early_gfx_init()     // this type bool
    early_gfx_restart()   // and this bool
    early_gfx_print()   // & this void
    early_gfx_color()   // and this void
*/

#include <C/stdint.h>
#include <roplix/kernel.h>

static gfx_info_t early_gfx_info;

bool early_gfx_init(gfx_info_t *gi) {

  if (gi->addr == 0) {
    return false;
  }
  
  if (gi->width == 0 || gi->height == 0) {
    return false;
  }

  if (gi->bpp != 8 && gi->bpp != 16 && gi->bpp != 24 && gi->bpp != 32 ) {
    return false;
  }
 
  if (gi->pitch < gi->width * (gi->bpp / 8)) {
    return false;
  }

  return true;
}

