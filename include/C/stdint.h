
/*
    ---------------------------------------------------
               Roplix operatin system (x86)
               GPL V 3.0
    ---------------------------------------------------
    * stdint.h - C lang (header file)
    * copy right (2026)  souag ahmed  <souagahmedelfatih@gmail.com>
    * 10:24 PM 9/8/2026
    ---------------------------------------------------
    * devoloper : Souag Ahmed El Fatih
    * github_acount = Souag-Ahmed-El-fatih 
    ---------------------------------------------------
    * all edits in : docs/edits.txt
    
*/


#ifndef STDINT_H
#define STDINT_H


typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;

typedef unsigned int uintptr_t;

typedef signed char int8_t;
typedef signed short int16_t;
typedef signed int int32_t;
typedef signed long int64_t;

typedef unsigned char bool;
/*
  #define _true_ 1
  #define _false_ 0 
*/
#define true 1
#define false 0
/*
  stdint for i686-elf-gcc : i686-elf-tools-linux/lib/gcc/i686-elf/13.2.0/include
*/

/*
    12:57 AM 10/8/2026
    I will unite state in roplix .
    so you can write this :
      return S_HINIT;
    Just a thought
      
*/
typedef int STATE;

enum {
  S_LOAD,
  S_RELOAD,
  S_READ,
  S_WRITE,
  S_REMOVE,
  S_INIT,
  S_HINIT,
  S_NOTHING
};

typedef struct {
  bool memory; // memory map info
  bool fb; // frame buffer info VGA
} loader_flags_t;

#endif

