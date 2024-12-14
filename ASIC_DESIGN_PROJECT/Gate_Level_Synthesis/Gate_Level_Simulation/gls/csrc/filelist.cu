PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _11007_archive_1.so
_11007_archive_1.so : archive.35/_11007_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic  -o .//../gls.daidir//_11007_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../gls.daidir//_11007_archive_1.so $@


ARCHIVE_OBJS += _prev_archive_1.so
_prev_archive_1.so : archive.35/_prev_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic  -o .//../gls.daidir//_prev_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../gls.daidir//_prev_archive_1.so $@



VCS_ARC0 =_csrc0.so

VCS_OBJS0 =objs/a/amcQw_d.o 


O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<
 

%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<

$(VCS_ARC0) : $(VCS_OBJS0)
	$(PIC_LD) -shared  -Bsymbolic  -o .//../gls.daidir//$(VCS_ARC0) $(VCS_OBJS0)
	rm -f $(VCS_ARC0)
	@ln -sf .//../gls.daidir//$(VCS_ARC0) $(VCS_ARC0)

CU_UDP_OBJS = \
objs/udps/SRR8T.o objs/udps/aB0v2.o objs/udps/PndSY.o objs/udps/BnbYq.o objs/udps/JrvE1.o  \
objs/udps/pyz4m.o objs/udps/qirTv.o objs/udps/pj0nA.o objs/udps/bJmEZ.o objs/udps/sS54r.o  \
objs/udps/eArci.o objs/udps/bpLKH.o objs/udps/uRiN1.o objs/udps/EQPRU.o objs/udps/Csr8K.o  \
objs/udps/ngxQZ.o objs/udps/CH1CE.o objs/udps/TKTqG.o objs/udps/wd1FT.o objs/udps/m91eb.o  \
objs/udps/ppiCb.o objs/udps/H33tB.o objs/udps/zAyUV.o objs/udps/beYkd.o objs/udps/u6UZH.o  \
objs/udps/wCfxx.o objs/udps/czwQ7.o objs/udps/Fe38E.o objs/udps/sYcda.o objs/udps/DiYIx.o  \
objs/udps/HNc8j.o objs/udps/vvgE2.o objs/udps/VY7s5.o objs/udps/YtCxc.o objs/udps/c7br5.o  \
objs/udps/qxKjN.o objs/udps/eA8Gw.o objs/udps/EIttk.o objs/udps/xtJ6y.o objs/udps/vfKqA.o  \
objs/udps/AqGe2.o objs/udps/SMExz.o objs/udps/RWcEH.o objs/udps/Lwgp5.o objs/udps/EqmKN.o  \
objs/udps/hmabB.o objs/udps/yIn8Q.o objs/udps/Avufa.o objs/udps/PbTpQ.o objs/udps/f3ERH.o  \
objs/udps/SIeta.o objs/udps/UWpYq.o objs/udps/HSzE4.o objs/udps/xxffS.o objs/udps/ASsCQ.o  \
objs/udps/vNfw8.o objs/udps/cRM9h.o objs/udps/vf2gA.o objs/udps/fQVCe.o objs/udps/W4nJK.o  \
objs/udps/hsiSa.o objs/udps/Ppm5m.o objs/udps/UayBt.o objs/udps/Zbt7L.o objs/udps/fhQqD.o  \
objs/udps/UTsja.o objs/udps/sv3f8.o objs/udps/K3eUB.o objs/udps/rgM3R.o objs/udps/jfCUR.o  \
objs/udps/mTJVM.o objs/udps/BVa5H.o objs/udps/wBzeD.o objs/udps/pgAcu.o objs/udps/wYDfZ.o  \
objs/udps/R6Z8Y.o objs/udps/akIMJ.o objs/udps/p2uZQ.o objs/udps/YMa5r.o objs/udps/bHJkx.o  \
objs/udps/pFpz9.o objs/udps/ukBk6.o objs/udps/ySfk2.o objs/udps/DYjft.o objs/udps/IdJqy.o  \
objs/udps/ZwuDZ.o objs/udps/trRDI.o objs/udps/LaswN.o objs/udps/zkwjm.o objs/udps/ZQfr2.o  \
objs/udps/buSAJ.o objs/udps/M6tv7.o objs/udps/zCNSu.o objs/udps/SDtcs.o objs/udps/grYH9.o  \
objs/udps/htNbR.o objs/udps/SFhM3.o objs/udps/nZ7Eg.o objs/udps/zNSCS.o objs/udps/PUUWR.o  \
objs/udps/CpR5k.o objs/udps/VQQnq.o objs/udps/SVYvi.o objs/udps/n5VGW.o objs/udps/izfRa.o  \
objs/udps/MDcuC.o objs/udps/IwHFx.o 

CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \


CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(VCS_ARC0) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

