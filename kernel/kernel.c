
/*
    ---------------------------------------------------
	       Roplix operatin system (x86)
	       GPL V 3.0
    ---------------------------------------------------
    * kernel.c - C lang (source file)
    * copy right (2026) souag ahmed  <souagahmedelfatih@gmail.com>
    * 10:22 PM 9/8/2026
    ---------------------------------------------------
    * devloper : Souag Ahmed El Fatih
    * github_acount = Souag-Ahmed-El-fatih
    ---------------------------------------------------
    * all edits in : docs/edits.txt
*/

#include <C/stdint.h>
#include <roplix/kernel.h>
#include <roplix/multiboot.h>
#include <arch/x86/port.h>

loader_flags_t loader_flags;

void kernel_main(uint32_t ebx) 
{

  multiboot_info_t *mbinfo = (multiboot_info_t *)ebx;
  
  /*
    update loader flags
  */
  // memory info
  if (mbinfo->flags & MULTIBOOT_MEMORY_INFO)
    loader_flags.memory = true;
  else
    loader_flags.memory = false;
  // frame buffer info (VGA)
  if (mbinfo->flags & MULTIBOOT_INFO_FRAMEBUFFER_INFO)
    loader_flags.fb = true;
  else
    loader_flags.fb = false;

}
