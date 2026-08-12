

#ifndef PORT_H
#define PORT_H

/*
    ---------------------------------------------------
	       Roplix operatin system (x86)
	       GPL V 3.0
    ---------------------------------------------------
    * port.h - C lang (header file)
    * copy right (2026) souag ahmed  <souagahmedelfatih@gmail.com>
    * 12:38 AM 12/8/2026
    ---------------------------------------------------
    * devloper : Souag Ahmed El Fatih
    * github_acount = Souag-Ahmed-El-fatih
    ---------------------------------------------------
    * all edits in : docs/edits.txt
*/

extern void outB(uint16_t port, uint8_t byte);
extern uint8_t inB(uint16_t port);
extern void outW(uint16_t port, uint16_t byte);
extern uint16_t inW(uint16_t port);
#endif
