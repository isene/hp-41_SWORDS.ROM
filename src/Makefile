RPN_SRCS = SWORDS.rpn CREATE.rpn SHOW.rpn NPC.rpn NSHOW.rpn FIGHT.rpn D6.rpn O6.rpn
RPN_RAWS =
ASM_SRCS = header.s SWORDS_asm.s

OBJS = $(RPN_SRCS:%.rpn=%.o) $(RPN_RAWS:%.raw=%.o) $(ASM_SRCS:%.s=%.o)

MOD = SWORDS.mod

all:	$(MOD)

clean:
	-rm -f ${OBJS} *.lst $(MOD)

%.o: %.rpn
	rpncomp -l -I../module-descriptor $<

%.o: %.raw
	rpncomp -l -I../module-descriptor $<

%.o: %.s
	asnut $<

$(MOD): $(OBJS) SWORDS.scm SWORDS.moddesc Makefile
	lnnut -l $(OBJS) SWORDS.scm SWORDS.moddesc --no-list-header -o $(MOD)
