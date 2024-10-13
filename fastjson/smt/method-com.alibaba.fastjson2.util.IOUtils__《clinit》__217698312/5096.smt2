(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const var1196-BIG_ENDIAN Bool)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var1540 Bool var1196-BIG_ENDIAN) ; Statement: $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z0 == 0 goto $i10 = 1819047278 
(assert (not (= (ite var1540 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2001 Int 1853189228) ; Statement: $i10 = 1853189228 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10] 
(assert true) ; Non Conditional
(define-const var12 Int var2001) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10 
(define-const var474 Bool var1196-BIG_ENDIAN) ; Statement: $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z1 == 0 goto $l11 = 30399761348886638L 
(assert (= (ite var474 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2291 Int 30399761348886638) ; Statement: $l11 = 30399761348886638L 
(assert true) ; Non Conditional
(define-const var3474 Int var2291) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long NULL_64> = $l11 
(define-const var3822 Bool var1196-BIG_ENDIAN) ; Statement: $z2 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z2 == 0 goto $i12 = 1702195828 
(assert (= (ite var3822 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3352 Int 1702195828) ; Statement: $i12 = 1702195828 
(assert true) ; Non Conditional
(define-const var3767 Int var3352) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12 
(define-const var1716 Bool var1196-BIG_ENDIAN) ; Statement: $z3 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z3 == 0 goto $l13 = 28429475166421108L 
(assert (= (ite var1716 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2617 Int 28429475166421108) ; Statement: $l13 = 28429475166421108L 
(assert true) ; Non Conditional
(define-const var2984 Int var2617) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13 
(define-const var499 Bool var1196-BIG_ENDIAN) ; Statement: $z4 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z4 == 0 goto $i14 = 1702063201 
(assert (= (ite var499 1 0) 0)) ; Cond: $z4 == 0 
(define-const var138 Int 1702063201) ; Statement: $i14 = 1702063201 
(assert true) ; Non Conditional
(define-const var1456 Int var138) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14 
(define-const var3622 Bool var1196-BIG_ENDIAN) ; Statement: $z5 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z5 == 0 goto $l15 = 28429466576093281L 
(assert (not (= (ite var3622 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1635 Int 27303536604938341) ; Statement: $l15 = 27303536604938341L 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15] 
(assert true) ; Non Conditional
(define-const var3955 Int var1635) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15 
(define-const var1308 Bool var1196-BIG_ENDIAN) ; Statement: $z6 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z6 == 0 goto $l16 = 46L 
(assert (not (= (ite var1308 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var1414 Int 11776) ; Statement: $l16 = 11776L 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16] 
(assert true) ; Non Conditional
(define-const var610 Int var1414) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16 
(define-const var805 (Array Int Int) arr-Int-init) ; Statement: $r0 = newarray (int)[10] 
(declare-const var805!1 (Array Int Int))
(assert (not (= var805!1 null-__Array__Int__Int__)))
(assert (= (select var805!1 0) 9)) ; Statement: $r0[0] = 9 
(declare-const var805!2 (Array Int Int))
(assert (not (= var805!2 null-__Array__Int__Int__)))
(assert (= (select var805!2 1) 99)) ; Statement: $r0[1] = 99 
(declare-const var805!3 (Array Int Int))
(assert (not (= var805!3 null-__Array__Int__Int__)))
(assert (= (select var805!3 2) 999)) ; Statement: $r0[2] = 999 
(declare-const var805!4 (Array Int Int))
(assert (not (= var805!4 null-__Array__Int__Int__)))
(assert (= (select var805!4 3) 9999)) ; Statement: $r0[3] = 9999 
(declare-const var805!5 (Array Int Int))
(assert (not (= var805!5 null-__Array__Int__Int__)))
(assert (= (select var805!5 4) 99999)) ; Statement: $r0[4] = 99999 
(declare-const var805!6 (Array Int Int))
(assert (not (= var805!6 null-__Array__Int__Int__)))
(assert (= (select var805!6 5) 999999)) ; Statement: $r0[5] = 999999 
(declare-const var805!7 (Array Int Int))
(assert (not (= var805!7 null-__Array__Int__Int__)))
(assert (= (select var805!7 6) 9999999)) ; Statement: $r0[6] = 9999999 
(declare-const var805!8 (Array Int Int))
(assert (not (= var805!8 null-__Array__Int__Int__)))
(assert (= (select var805!8 7) 99999999)) ; Statement: $r0[7] = 99999999 
(declare-const var805!9 (Array Int Int))
(assert (not (= var805!9 null-__Array__Int__Int__)))
(assert (= (select var805!9 8) 999999999)) ; Statement: $r0[8] = 999999999 
(declare-const var805!10 (Array Int Int))
(assert (not (= var805!10 null-__Array__Int__Int__)))
(assert (= (select var805!10 9) 2147483647)) ; Statement: $r0[9] = 2147483647 
(define-const var3963 (Array Int Int) var805!10) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] sizeTable> = $r0 
(define-const var186 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[1000] 
(define-const var740 (Array Int Int) var186) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32> = $r1 
(define-const var581 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (long)[1000] 
(define-const var1591 (Array Int Int) var581) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64> = $r2 
(define-const var1711 String "-2147483648") ; Statement: $r3 = "-2147483648" 
(assert true)
(define-const var3252 (Array Int Int) (getBytes/1068683673 var1711)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes()>() 
(define-const var1003 (Array Int Int) var3252) ; Statement: <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES> = $r4 
(define-const var2543 String "-2147483648") ; Statement: $r5 = "-2147483648" 
(assert true)
(define-const var1908 (Array Int Int) (toCharArray/415275702 var2543)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: char[] toCharArray()>() 
(define-const var10 (Array Int Int) var1908) ; Statement: <com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS> = $r6 
(define-const var697 String "-9223372036854775808") ; Statement: $r7 = "-9223372036854775808" 
(assert true)
(define-const var1894 (Array Int Int) (getBytes/1068683673 var697)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>() 
(define-const var2951 (Array Int Int) var1894) ; Statement: <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG> = $r8 
(define-const var3632 (Array Int Int) arr-Int-init) ; Statement: $r9 = newarray (long)[18] 
(declare-const var3632!1 (Array Int Int))
(assert (not (= var3632!1 null-__Array__Int__Int__)))
(assert (= (select var3632!1 0) 10)) ; Statement: $r9[0] = 10L 
(declare-const var3632!2 (Array Int Int))
(assert (not (= var3632!2 null-__Array__Int__Int__)))
(assert (= (select var3632!2 1) 100)) ; Statement: $r9[1] = 100L 
(declare-const var3632!3 (Array Int Int))
(assert (not (= var3632!3 null-__Array__Int__Int__)))
(assert (= (select var3632!3 2) 1000)) ; Statement: $r9[2] = 1000L 
(declare-const var3632!4 (Array Int Int))
(assert (not (= var3632!4 null-__Array__Int__Int__)))
(assert (= (select var3632!4 3) 10000)) ; Statement: $r9[3] = 10000L 
(declare-const var3632!5 (Array Int Int))
(assert (not (= var3632!5 null-__Array__Int__Int__)))
(assert (= (select var3632!5 4) 100000)) ; Statement: $r9[4] = 100000L 
(declare-const var3632!6 (Array Int Int))
(assert (not (= var3632!6 null-__Array__Int__Int__)))
(assert (= (select var3632!6 5) 1000000)) ; Statement: $r9[5] = 1000000L 
(declare-const var3632!7 (Array Int Int))
(assert (not (= var3632!7 null-__Array__Int__Int__)))
(assert (= (select var3632!7 6) 10000000)) ; Statement: $r9[6] = 10000000L 
(declare-const var3632!8 (Array Int Int))
(assert (not (= var3632!8 null-__Array__Int__Int__)))
(assert (= (select var3632!8 7) 100000000)) ; Statement: $r9[7] = 100000000L 
(declare-const var3632!9 (Array Int Int))
(assert (not (= var3632!9 null-__Array__Int__Int__)))
(assert (= (select var3632!9 8) 1000000000)) ; Statement: $r9[8] = 1000000000L 
(declare-const var3632!10 (Array Int Int))
(assert (not (= var3632!10 null-__Array__Int__Int__)))
(assert (= (select var3632!10 9) 10000000000)) ; Statement: $r9[9] = 10000000000L 
(declare-const var3632!11 (Array Int Int))
(assert (not (= var3632!11 null-__Array__Int__Int__)))
(assert (= (select var3632!11 10) 100000000000)) ; Statement: $r9[10] = 100000000000L 
(declare-const var3632!12 (Array Int Int))
(assert (not (= var3632!12 null-__Array__Int__Int__)))
(assert (= (select var3632!12 11) 1000000000000)) ; Statement: $r9[11] = 1000000000000L 
(declare-const var3632!13 (Array Int Int))
(assert (not (= var3632!13 null-__Array__Int__Int__)))
(assert (= (select var3632!13 12) 10000000000000)) ; Statement: $r9[12] = 10000000000000L 
(declare-const var3632!14 (Array Int Int))
(assert (not (= var3632!14 null-__Array__Int__Int__)))
(assert (= (select var3632!14 13) 100000000000000)) ; Statement: $r9[13] = 100000000000000L 
(declare-const var3632!15 (Array Int Int))
(assert (not (= var3632!15 null-__Array__Int__Int__)))
(assert (= (select var3632!15 14) 1000000000000000)) ; Statement: $r9[14] = 1000000000000000L 
(declare-const var3632!16 (Array Int Int))
(assert (not (= var3632!16 null-__Array__Int__Int__)))
(assert (= (select var3632!16 15) 10000000000000000)) ; Statement: $r9[15] = 10000000000000000L 
(declare-const var3632!17 (Array Int Int))
(assert (not (= var3632!17 null-__Array__Int__Int__)))
(assert (= (select var3632!17 16) 100000000000000000)) ; Statement: $r9[16] = 100000000000000000L 
(declare-const var3632!18 (Array Int Int))
(assert (not (= var3632!18 null-__Array__Int__Int__)))
(assert (= (select var3632!18 17) 1000000000000000000)) ; Statement: $r9[17] = 1000000000000000000L 
(define-const var953 (Array Int Int) var3632!18) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN> = $r9 
(define-const var1483 (Array Int Int) arr-Int-init) ; Statement: $r10 = newarray (short)[100] 
(declare-const var1483!1 (Array Int Int))
(assert (not (= var1483!1 null-__Array__Int__Int__)))
(assert (= (select var1483!1 0) 12336)) ; Statement: $r10[0] = 12336 
(declare-const var1483!2 (Array Int Int))
(assert (not (= var1483!2 null-__Array__Int__Int__)))
(assert (= (select var1483!2 1) 12592)) ; Statement: $r10[1] = 12592 
(declare-const var1483!3 (Array Int Int))
(assert (not (= var1483!3 null-__Array__Int__Int__)))
(assert (= (select var1483!3 2) 12848)) ; Statement: $r10[2] = 12848 
(declare-const var1483!4 (Array Int Int))
(assert (not (= var1483!4 null-__Array__Int__Int__)))
(assert (= (select var1483!4 3) 13104)) ; Statement: $r10[3] = 13104 
(declare-const var1483!5 (Array Int Int))
(assert (not (= var1483!5 null-__Array__Int__Int__)))
(assert (= (select var1483!5 4) 13360)) ; Statement: $r10[4] = 13360 
(declare-const var1483!6 (Array Int Int))
(assert (not (= var1483!6 null-__Array__Int__Int__)))
(assert (= (select var1483!6 5) 13616)) ; Statement: $r10[5] = 13616 
(declare-const var1483!7 (Array Int Int))
(assert (not (= var1483!7 null-__Array__Int__Int__)))
(assert (= (select var1483!7 6) 13872)) ; Statement: $r10[6] = 13872 
(declare-const var1483!8 (Array Int Int))
(assert (not (= var1483!8 null-__Array__Int__Int__)))
(assert (= (select var1483!8 7) 14128)) ; Statement: $r10[7] = 14128 
(declare-const var1483!9 (Array Int Int))
(assert (not (= var1483!9 null-__Array__Int__Int__)))
(assert (= (select var1483!9 8) 14384)) ; Statement: $r10[8] = 14384 
(declare-const var1483!10 (Array Int Int))
(assert (not (= var1483!10 null-__Array__Int__Int__)))
(assert (= (select var1483!10 9) 14640)) ; Statement: $r10[9] = 14640 
(declare-const var1483!11 (Array Int Int))
(assert (not (= var1483!11 null-__Array__Int__Int__)))
(assert (= (select var1483!11 10) 12337)) ; Statement: $r10[10] = 12337 
(declare-const var1483!12 (Array Int Int))
(assert (not (= var1483!12 null-__Array__Int__Int__)))
(assert (= (select var1483!12 11) 12593)) ; Statement: $r10[11] = 12593 
(declare-const var1483!13 (Array Int Int))
(assert (not (= var1483!13 null-__Array__Int__Int__)))
(assert (= (select var1483!13 12) 12849)) ; Statement: $r10[12] = 12849 
(declare-const var1483!14 (Array Int Int))
(assert (not (= var1483!14 null-__Array__Int__Int__)))
(assert (= (select var1483!14 13) 13105)) ; Statement: $r10[13] = 13105 
(declare-const var1483!15 (Array Int Int))
(assert (not (= var1483!15 null-__Array__Int__Int__)))
(assert (= (select var1483!15 14) 13361)) ; Statement: $r10[14] = 13361 
(declare-const var1483!16 (Array Int Int))
(assert (not (= var1483!16 null-__Array__Int__Int__)))
(assert (= (select var1483!16 15) 13617)) ; Statement: $r10[15] = 13617 
(declare-const var1483!17 (Array Int Int))
(assert (not (= var1483!17 null-__Array__Int__Int__)))
(assert (= (select var1483!17 16) 13873)) ; Statement: $r10[16] = 13873 
(declare-const var1483!18 (Array Int Int))
(assert (not (= var1483!18 null-__Array__Int__Int__)))
(assert (= (select var1483!18 17) 14129)) ; Statement: $r10[17] = 14129 
(declare-const var1483!19 (Array Int Int))
(assert (not (= var1483!19 null-__Array__Int__Int__)))
(assert (= (select var1483!19 18) 14385)) ; Statement: $r10[18] = 14385 
(declare-const var1483!20 (Array Int Int))
(assert (not (= var1483!20 null-__Array__Int__Int__)))
(assert (= (select var1483!20 19) 14641)) ; Statement: $r10[19] = 14641 
(declare-const var1483!21 (Array Int Int))
(assert (not (= var1483!21 null-__Array__Int__Int__)))
(assert (= (select var1483!21 20) 12338)) ; Statement: $r10[20] = 12338 
(declare-const var1483!22 (Array Int Int))
(assert (not (= var1483!22 null-__Array__Int__Int__)))
(assert (= (select var1483!22 21) 12594)) ; Statement: $r10[21] = 12594 
(declare-const var1483!23 (Array Int Int))
(assert (not (= var1483!23 null-__Array__Int__Int__)))
(assert (= (select var1483!23 22) 12850)) ; Statement: $r10[22] = 12850 
(declare-const var1483!24 (Array Int Int))
(assert (not (= var1483!24 null-__Array__Int__Int__)))
(assert (= (select var1483!24 23) 13106)) ; Statement: $r10[23] = 13106 
(declare-const var1483!25 (Array Int Int))
(assert (not (= var1483!25 null-__Array__Int__Int__)))
(assert (= (select var1483!25 24) 13362)) ; Statement: $r10[24] = 13362 
(declare-const var1483!26 (Array Int Int))
(assert (not (= var1483!26 null-__Array__Int__Int__)))
(assert (= (select var1483!26 25) 13618)) ; Statement: $r10[25] = 13618 
(declare-const var1483!27 (Array Int Int))
(assert (not (= var1483!27 null-__Array__Int__Int__)))
(assert (= (select var1483!27 26) 13874)) ; Statement: $r10[26] = 13874 
(declare-const var1483!28 (Array Int Int))
(assert (not (= var1483!28 null-__Array__Int__Int__)))
(assert (= (select var1483!28 27) 14130)) ; Statement: $r10[27] = 14130 
(declare-const var1483!29 (Array Int Int))
(assert (not (= var1483!29 null-__Array__Int__Int__)))
(assert (= (select var1483!29 28) 14386)) ; Statement: $r10[28] = 14386 
(declare-const var1483!30 (Array Int Int))
(assert (not (= var1483!30 null-__Array__Int__Int__)))
(assert (= (select var1483!30 29) 14642)) ; Statement: $r10[29] = 14642 
(declare-const var1483!31 (Array Int Int))
(assert (not (= var1483!31 null-__Array__Int__Int__)))
(assert (= (select var1483!31 30) 12339)) ; Statement: $r10[30] = 12339 
(declare-const var1483!32 (Array Int Int))
(assert (not (= var1483!32 null-__Array__Int__Int__)))
(assert (= (select var1483!32 31) 12595)) ; Statement: $r10[31] = 12595 
(declare-const var1483!33 (Array Int Int))
(assert (not (= var1483!33 null-__Array__Int__Int__)))
(assert (= (select var1483!33 32) 12851)) ; Statement: $r10[32] = 12851 
(declare-const var1483!34 (Array Int Int))
(assert (not (= var1483!34 null-__Array__Int__Int__)))
(assert (= (select var1483!34 33) 13107)) ; Statement: $r10[33] = 13107 
(declare-const var1483!35 (Array Int Int))
(assert (not (= var1483!35 null-__Array__Int__Int__)))
(assert (= (select var1483!35 34) 13363)) ; Statement: $r10[34] = 13363 
(declare-const var1483!36 (Array Int Int))
(assert (not (= var1483!36 null-__Array__Int__Int__)))
(assert (= (select var1483!36 35) 13619)) ; Statement: $r10[35] = 13619 
(declare-const var1483!37 (Array Int Int))
(assert (not (= var1483!37 null-__Array__Int__Int__)))
(assert (= (select var1483!37 36) 13875)) ; Statement: $r10[36] = 13875 
(declare-const var1483!38 (Array Int Int))
(assert (not (= var1483!38 null-__Array__Int__Int__)))
(assert (= (select var1483!38 37) 14131)) ; Statement: $r10[37] = 14131 
(declare-const var1483!39 (Array Int Int))
(assert (not (= var1483!39 null-__Array__Int__Int__)))
(assert (= (select var1483!39 38) 14387)) ; Statement: $r10[38] = 14387 
(declare-const var1483!40 (Array Int Int))
(assert (not (= var1483!40 null-__Array__Int__Int__)))
(assert (= (select var1483!40 39) 14643)) ; Statement: $r10[39] = 14643 
(declare-const var1483!41 (Array Int Int))
(assert (not (= var1483!41 null-__Array__Int__Int__)))
(assert (= (select var1483!41 40) 12340)) ; Statement: $r10[40] = 12340 
(declare-const var1483!42 (Array Int Int))
(assert (not (= var1483!42 null-__Array__Int__Int__)))
(assert (= (select var1483!42 41) 12596)) ; Statement: $r10[41] = 12596 
(declare-const var1483!43 (Array Int Int))
(assert (not (= var1483!43 null-__Array__Int__Int__)))
(assert (= (select var1483!43 42) 12852)) ; Statement: $r10[42] = 12852 
(declare-const var1483!44 (Array Int Int))
(assert (not (= var1483!44 null-__Array__Int__Int__)))
(assert (= (select var1483!44 43) 13108)) ; Statement: $r10[43] = 13108 
(declare-const var1483!45 (Array Int Int))
(assert (not (= var1483!45 null-__Array__Int__Int__)))
(assert (= (select var1483!45 44) 13364)) ; Statement: $r10[44] = 13364 
(declare-const var1483!46 (Array Int Int))
(assert (not (= var1483!46 null-__Array__Int__Int__)))
(assert (= (select var1483!46 45) 13620)) ; Statement: $r10[45] = 13620 
(declare-const var1483!47 (Array Int Int))
(assert (not (= var1483!47 null-__Array__Int__Int__)))
(assert (= (select var1483!47 46) 13876)) ; Statement: $r10[46] = 13876 
(declare-const var1483!48 (Array Int Int))
(assert (not (= var1483!48 null-__Array__Int__Int__)))
(assert (= (select var1483!48 47) 14132)) ; Statement: $r10[47] = 14132 
(declare-const var1483!49 (Array Int Int))
(assert (not (= var1483!49 null-__Array__Int__Int__)))
(assert (= (select var1483!49 48) 14388)) ; Statement: $r10[48] = 14388 
(declare-const var1483!50 (Array Int Int))
(assert (not (= var1483!50 null-__Array__Int__Int__)))
(assert (= (select var1483!50 49) 14644)) ; Statement: $r10[49] = 14644 
(declare-const var1483!51 (Array Int Int))
(assert (not (= var1483!51 null-__Array__Int__Int__)))
(assert (= (select var1483!51 50) 12341)) ; Statement: $r10[50] = 12341 
(declare-const var1483!52 (Array Int Int))
(assert (not (= var1483!52 null-__Array__Int__Int__)))
(assert (= (select var1483!52 51) 12597)) ; Statement: $r10[51] = 12597 
(declare-const var1483!53 (Array Int Int))
(assert (not (= var1483!53 null-__Array__Int__Int__)))
(assert (= (select var1483!53 52) 12853)) ; Statement: $r10[52] = 12853 
(declare-const var1483!54 (Array Int Int))
(assert (not (= var1483!54 null-__Array__Int__Int__)))
(assert (= (select var1483!54 53) 13109)) ; Statement: $r10[53] = 13109 
(declare-const var1483!55 (Array Int Int))
(assert (not (= var1483!55 null-__Array__Int__Int__)))
(assert (= (select var1483!55 54) 13365)) ; Statement: $r10[54] = 13365 
(declare-const var1483!56 (Array Int Int))
(assert (not (= var1483!56 null-__Array__Int__Int__)))
(assert (= (select var1483!56 55) 13621)) ; Statement: $r10[55] = 13621 
(declare-const var1483!57 (Array Int Int))
(assert (not (= var1483!57 null-__Array__Int__Int__)))
(assert (= (select var1483!57 56) 13877)) ; Statement: $r10[56] = 13877 
(declare-const var1483!58 (Array Int Int))
(assert (not (= var1483!58 null-__Array__Int__Int__)))
(assert (= (select var1483!58 57) 14133)) ; Statement: $r10[57] = 14133 
(declare-const var1483!59 (Array Int Int))
(assert (not (= var1483!59 null-__Array__Int__Int__)))
(assert (= (select var1483!59 58) 14389)) ; Statement: $r10[58] = 14389 
(declare-const var1483!60 (Array Int Int))
(assert (not (= var1483!60 null-__Array__Int__Int__)))
(assert (= (select var1483!60 59) 14645)) ; Statement: $r10[59] = 14645 
(declare-const var1483!61 (Array Int Int))
(assert (not (= var1483!61 null-__Array__Int__Int__)))
(assert (= (select var1483!61 60) 12342)) ; Statement: $r10[60] = 12342 
(declare-const var1483!62 (Array Int Int))
(assert (not (= var1483!62 null-__Array__Int__Int__)))
(assert (= (select var1483!62 61) 12598)) ; Statement: $r10[61] = 12598 
(declare-const var1483!63 (Array Int Int))
(assert (not (= var1483!63 null-__Array__Int__Int__)))
(assert (= (select var1483!63 62) 12854)) ; Statement: $r10[62] = 12854 
(declare-const var1483!64 (Array Int Int))
(assert (not (= var1483!64 null-__Array__Int__Int__)))
(assert (= (select var1483!64 63) 13110)) ; Statement: $r10[63] = 13110 
(declare-const var1483!65 (Array Int Int))
(assert (not (= var1483!65 null-__Array__Int__Int__)))
(assert (= (select var1483!65 64) 13366)) ; Statement: $r10[64] = 13366 
(declare-const var1483!66 (Array Int Int))
(assert (not (= var1483!66 null-__Array__Int__Int__)))
(assert (= (select var1483!66 65) 13622)) ; Statement: $r10[65] = 13622 
(declare-const var1483!67 (Array Int Int))
(assert (not (= var1483!67 null-__Array__Int__Int__)))
(assert (= (select var1483!67 66) 13878)) ; Statement: $r10[66] = 13878 
(declare-const var1483!68 (Array Int Int))
(assert (not (= var1483!68 null-__Array__Int__Int__)))
(assert (= (select var1483!68 67) 14134)) ; Statement: $r10[67] = 14134 
(declare-const var1483!69 (Array Int Int))
(assert (not (= var1483!69 null-__Array__Int__Int__)))
(assert (= (select var1483!69 68) 14390)) ; Statement: $r10[68] = 14390 
(declare-const var1483!70 (Array Int Int))
(assert (not (= var1483!70 null-__Array__Int__Int__)))
(assert (= (select var1483!70 69) 14646)) ; Statement: $r10[69] = 14646 
(declare-const var1483!71 (Array Int Int))
(assert (not (= var1483!71 null-__Array__Int__Int__)))
(assert (= (select var1483!71 70) 12343)) ; Statement: $r10[70] = 12343 
(declare-const var1483!72 (Array Int Int))
(assert (not (= var1483!72 null-__Array__Int__Int__)))
(assert (= (select var1483!72 71) 12599)) ; Statement: $r10[71] = 12599 
(declare-const var1483!73 (Array Int Int))
(assert (not (= var1483!73 null-__Array__Int__Int__)))
(assert (= (select var1483!73 72) 12855)) ; Statement: $r10[72] = 12855 
(declare-const var1483!74 (Array Int Int))
(assert (not (= var1483!74 null-__Array__Int__Int__)))
(assert (= (select var1483!74 73) 13111)) ; Statement: $r10[73] = 13111 
(declare-const var1483!75 (Array Int Int))
(assert (not (= var1483!75 null-__Array__Int__Int__)))
(assert (= (select var1483!75 74) 13367)) ; Statement: $r10[74] = 13367 
(declare-const var1483!76 (Array Int Int))
(assert (not (= var1483!76 null-__Array__Int__Int__)))
(assert (= (select var1483!76 75) 13623)) ; Statement: $r10[75] = 13623 
(declare-const var1483!77 (Array Int Int))
(assert (not (= var1483!77 null-__Array__Int__Int__)))
(assert (= (select var1483!77 76) 13879)) ; Statement: $r10[76] = 13879 
(declare-const var1483!78 (Array Int Int))
(assert (not (= var1483!78 null-__Array__Int__Int__)))
(assert (= (select var1483!78 77) 14135)) ; Statement: $r10[77] = 14135 
(declare-const var1483!79 (Array Int Int))
(assert (not (= var1483!79 null-__Array__Int__Int__)))
(assert (= (select var1483!79 78) 14391)) ; Statement: $r10[78] = 14391 
(declare-const var1483!80 (Array Int Int))
(assert (not (= var1483!80 null-__Array__Int__Int__)))
(assert (= (select var1483!80 79) 14647)) ; Statement: $r10[79] = 14647 
(declare-const var1483!81 (Array Int Int))
(assert (not (= var1483!81 null-__Array__Int__Int__)))
(assert (= (select var1483!81 80) 12344)) ; Statement: $r10[80] = 12344 
(declare-const var1483!82 (Array Int Int))
(assert (not (= var1483!82 null-__Array__Int__Int__)))
(assert (= (select var1483!82 81) 12600)) ; Statement: $r10[81] = 12600 
(declare-const var1483!83 (Array Int Int))
(assert (not (= var1483!83 null-__Array__Int__Int__)))
(assert (= (select var1483!83 82) 12856)) ; Statement: $r10[82] = 12856 
(declare-const var1483!84 (Array Int Int))
(assert (not (= var1483!84 null-__Array__Int__Int__)))
(assert (= (select var1483!84 83) 13112)) ; Statement: $r10[83] = 13112 
(declare-const var1483!85 (Array Int Int))
(assert (not (= var1483!85 null-__Array__Int__Int__)))
(assert (= (select var1483!85 84) 13368)) ; Statement: $r10[84] = 13368 
(declare-const var1483!86 (Array Int Int))
(assert (not (= var1483!86 null-__Array__Int__Int__)))
(assert (= (select var1483!86 85) 13624)) ; Statement: $r10[85] = 13624 
(declare-const var1483!87 (Array Int Int))
(assert (not (= var1483!87 null-__Array__Int__Int__)))
(assert (= (select var1483!87 86) 13880)) ; Statement: $r10[86] = 13880 
(declare-const var1483!88 (Array Int Int))
(assert (not (= var1483!88 null-__Array__Int__Int__)))
(assert (= (select var1483!88 87) 14136)) ; Statement: $r10[87] = 14136 
(declare-const var1483!89 (Array Int Int))
(assert (not (= var1483!89 null-__Array__Int__Int__)))
(assert (= (select var1483!89 88) 14392)) ; Statement: $r10[88] = 14392 
(declare-const var1483!90 (Array Int Int))
(assert (not (= var1483!90 null-__Array__Int__Int__)))
(assert (= (select var1483!90 89) 14648)) ; Statement: $r10[89] = 14648 
(declare-const var1483!91 (Array Int Int))
(assert (not (= var1483!91 null-__Array__Int__Int__)))
(assert (= (select var1483!91 90) 12345)) ; Statement: $r10[90] = 12345 
(declare-const var1483!92 (Array Int Int))
(assert (not (= var1483!92 null-__Array__Int__Int__)))
(assert (= (select var1483!92 91) 12601)) ; Statement: $r10[91] = 12601 
(declare-const var1483!93 (Array Int Int))
(assert (not (= var1483!93 null-__Array__Int__Int__)))
(assert (= (select var1483!93 92) 12857)) ; Statement: $r10[92] = 12857 
(declare-const var1483!94 (Array Int Int))
(assert (not (= var1483!94 null-__Array__Int__Int__)))
(assert (= (select var1483!94 93) 13113)) ; Statement: $r10[93] = 13113 
(declare-const var1483!95 (Array Int Int))
(assert (not (= var1483!95 null-__Array__Int__Int__)))
(assert (= (select var1483!95 94) 13369)) ; Statement: $r10[94] = 13369 
(declare-const var1483!96 (Array Int Int))
(assert (not (= var1483!96 null-__Array__Int__Int__)))
(assert (= (select var1483!96 95) 13625)) ; Statement: $r10[95] = 13625 
(declare-const var1483!97 (Array Int Int))
(assert (not (= var1483!97 null-__Array__Int__Int__)))
(assert (= (select var1483!97 96) 13881)) ; Statement: $r10[96] = 13881 
(declare-const var1483!98 (Array Int Int))
(assert (not (= var1483!98 null-__Array__Int__Int__)))
(assert (= (select var1483!98 97) 14137)) ; Statement: $r10[97] = 14137 
(declare-const var1483!99 (Array Int Int))
(assert (not (= var1483!99 null-__Array__Int__Int__)))
(assert (= (select var1483!99 98) 14393)) ; Statement: $r10[98] = 14393 
(declare-const var1483!100 (Array Int Int))
(assert (not (= var1483!100 null-__Array__Int__Int__)))
(assert (= (select var1483!100 99) 14649)) ; Statement: $r10[99] = 14649 
(define-const var1679 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (int)[100] 
(declare-const var1679!1 (Array Int Int))
(assert (not (= var1679!1 null-__Array__Int__Int__)))
(assert (= (select var1679!1 0) 3145776)) ; Statement: $r11[0] = 3145776 
(declare-const var1679!2 (Array Int Int))
(assert (not (= var1679!2 null-__Array__Int__Int__)))
(assert (= (select var1679!2 1) 3211312)) ; Statement: $r11[1] = 3211312 
(declare-const var1679!3 (Array Int Int))
(assert (not (= var1679!3 null-__Array__Int__Int__)))
(assert (= (select var1679!3 2) 3276848)) ; Statement: $r11[2] = 3276848 
(declare-const var1679!4 (Array Int Int))
(assert (not (= var1679!4 null-__Array__Int__Int__)))
(assert (= (select var1679!4 3) 3342384)) ; Statement: $r11[3] = 3342384 
(declare-const var1679!5 (Array Int Int))
(assert (not (= var1679!5 null-__Array__Int__Int__)))
(assert (= (select var1679!5 4) 3407920)) ; Statement: $r11[4] = 3407920 
(declare-const var1679!6 (Array Int Int))
(assert (not (= var1679!6 null-__Array__Int__Int__)))
(assert (= (select var1679!6 5) 3473456)) ; Statement: $r11[5] = 3473456 
(declare-const var1679!7 (Array Int Int))
(assert (not (= var1679!7 null-__Array__Int__Int__)))
(assert (= (select var1679!7 6) 3538992)) ; Statement: $r11[6] = 3538992 
(declare-const var1679!8 (Array Int Int))
(assert (not (= var1679!8 null-__Array__Int__Int__)))
(assert (= (select var1679!8 7) 3604528)) ; Statement: $r11[7] = 3604528 
(declare-const var1679!9 (Array Int Int))
(assert (not (= var1679!9 null-__Array__Int__Int__)))
(assert (= (select var1679!9 8) 3670064)) ; Statement: $r11[8] = 3670064 
(declare-const var1679!10 (Array Int Int))
(assert (not (= var1679!10 null-__Array__Int__Int__)))
(assert (= (select var1679!10 9) 3735600)) ; Statement: $r11[9] = 3735600 
(declare-const var1679!11 (Array Int Int))
(assert (not (= var1679!11 null-__Array__Int__Int__)))
(assert (= (select var1679!11 10) 3145777)) ; Statement: $r11[10] = 3145777 
(declare-const var1679!12 (Array Int Int))
(assert (not (= var1679!12 null-__Array__Int__Int__)))
(assert (= (select var1679!12 11) 3211313)) ; Statement: $r11[11] = 3211313 
(declare-const var1679!13 (Array Int Int))
(assert (not (= var1679!13 null-__Array__Int__Int__)))
(assert (= (select var1679!13 12) 3276849)) ; Statement: $r11[12] = 3276849 
(declare-const var1679!14 (Array Int Int))
(assert (not (= var1679!14 null-__Array__Int__Int__)))
(assert (= (select var1679!14 13) 3342385)) ; Statement: $r11[13] = 3342385 
(declare-const var1679!15 (Array Int Int))
(assert (not (= var1679!15 null-__Array__Int__Int__)))
(assert (= (select var1679!15 14) 3407921)) ; Statement: $r11[14] = 3407921 
(declare-const var1679!16 (Array Int Int))
(assert (not (= var1679!16 null-__Array__Int__Int__)))
(assert (= (select var1679!16 15) 3473457)) ; Statement: $r11[15] = 3473457 
(declare-const var1679!17 (Array Int Int))
(assert (not (= var1679!17 null-__Array__Int__Int__)))
(assert (= (select var1679!17 16) 3538993)) ; Statement: $r11[16] = 3538993 
(declare-const var1679!18 (Array Int Int))
(assert (not (= var1679!18 null-__Array__Int__Int__)))
(assert (= (select var1679!18 17) 3604529)) ; Statement: $r11[17] = 3604529 
(declare-const var1679!19 (Array Int Int))
(assert (not (= var1679!19 null-__Array__Int__Int__)))
(assert (= (select var1679!19 18) 3670065)) ; Statement: $r11[18] = 3670065 
(declare-const var1679!20 (Array Int Int))
(assert (not (= var1679!20 null-__Array__Int__Int__)))
(assert (= (select var1679!20 19) 3735601)) ; Statement: $r11[19] = 3735601 
(declare-const var1679!21 (Array Int Int))
(assert (not (= var1679!21 null-__Array__Int__Int__)))
(assert (= (select var1679!21 20) 3145778)) ; Statement: $r11[20] = 3145778 
(declare-const var1679!22 (Array Int Int))
(assert (not (= var1679!22 null-__Array__Int__Int__)))
(assert (= (select var1679!22 21) 3211314)) ; Statement: $r11[21] = 3211314 
(declare-const var1679!23 (Array Int Int))
(assert (not (= var1679!23 null-__Array__Int__Int__)))
(assert (= (select var1679!23 22) 3276850)) ; Statement: $r11[22] = 3276850 
(declare-const var1679!24 (Array Int Int))
(assert (not (= var1679!24 null-__Array__Int__Int__)))
(assert (= (select var1679!24 23) 3342386)) ; Statement: $r11[23] = 3342386 
(declare-const var1679!25 (Array Int Int))
(assert (not (= var1679!25 null-__Array__Int__Int__)))
(assert (= (select var1679!25 24) 3407922)) ; Statement: $r11[24] = 3407922 
(declare-const var1679!26 (Array Int Int))
(assert (not (= var1679!26 null-__Array__Int__Int__)))
(assert (= (select var1679!26 25) 3473458)) ; Statement: $r11[25] = 3473458 
(declare-const var1679!27 (Array Int Int))
(assert (not (= var1679!27 null-__Array__Int__Int__)))
(assert (= (select var1679!27 26) 3538994)) ; Statement: $r11[26] = 3538994 
(declare-const var1679!28 (Array Int Int))
(assert (not (= var1679!28 null-__Array__Int__Int__)))
(assert (= (select var1679!28 27) 3604530)) ; Statement: $r11[27] = 3604530 
(declare-const var1679!29 (Array Int Int))
(assert (not (= var1679!29 null-__Array__Int__Int__)))
(assert (= (select var1679!29 28) 3670066)) ; Statement: $r11[28] = 3670066 
(declare-const var1679!30 (Array Int Int))
(assert (not (= var1679!30 null-__Array__Int__Int__)))
(assert (= (select var1679!30 29) 3735602)) ; Statement: $r11[29] = 3735602 
(declare-const var1679!31 (Array Int Int))
(assert (not (= var1679!31 null-__Array__Int__Int__)))
(assert (= (select var1679!31 30) 3145779)) ; Statement: $r11[30] = 3145779 
(declare-const var1679!32 (Array Int Int))
(assert (not (= var1679!32 null-__Array__Int__Int__)))
(assert (= (select var1679!32 31) 3211315)) ; Statement: $r11[31] = 3211315 
(declare-const var1679!33 (Array Int Int))
(assert (not (= var1679!33 null-__Array__Int__Int__)))
(assert (= (select var1679!33 32) 3276851)) ; Statement: $r11[32] = 3276851 
(declare-const var1679!34 (Array Int Int))
(assert (not (= var1679!34 null-__Array__Int__Int__)))
(assert (= (select var1679!34 33) 3342387)) ; Statement: $r11[33] = 3342387 
(declare-const var1679!35 (Array Int Int))
(assert (not (= var1679!35 null-__Array__Int__Int__)))
(assert (= (select var1679!35 34) 3407923)) ; Statement: $r11[34] = 3407923 
(declare-const var1679!36 (Array Int Int))
(assert (not (= var1679!36 null-__Array__Int__Int__)))
(assert (= (select var1679!36 35) 3473459)) ; Statement: $r11[35] = 3473459 
(declare-const var1679!37 (Array Int Int))
(assert (not (= var1679!37 null-__Array__Int__Int__)))
(assert (= (select var1679!37 36) 3538995)) ; Statement: $r11[36] = 3538995 
(declare-const var1679!38 (Array Int Int))
(assert (not (= var1679!38 null-__Array__Int__Int__)))
(assert (= (select var1679!38 37) 3604531)) ; Statement: $r11[37] = 3604531 
(declare-const var1679!39 (Array Int Int))
(assert (not (= var1679!39 null-__Array__Int__Int__)))
(assert (= (select var1679!39 38) 3670067)) ; Statement: $r11[38] = 3670067 
(declare-const var1679!40 (Array Int Int))
(assert (not (= var1679!40 null-__Array__Int__Int__)))
(assert (= (select var1679!40 39) 3735603)) ; Statement: $r11[39] = 3735603 
(declare-const var1679!41 (Array Int Int))
(assert (not (= var1679!41 null-__Array__Int__Int__)))
(assert (= (select var1679!41 40) 3145780)) ; Statement: $r11[40] = 3145780 
(declare-const var1679!42 (Array Int Int))
(assert (not (= var1679!42 null-__Array__Int__Int__)))
(assert (= (select var1679!42 41) 3211316)) ; Statement: $r11[41] = 3211316 
(declare-const var1679!43 (Array Int Int))
(assert (not (= var1679!43 null-__Array__Int__Int__)))
(assert (= (select var1679!43 42) 3276852)) ; Statement: $r11[42] = 3276852 
(declare-const var1679!44 (Array Int Int))
(assert (not (= var1679!44 null-__Array__Int__Int__)))
(assert (= (select var1679!44 43) 3342388)) ; Statement: $r11[43] = 3342388 
(declare-const var1679!45 (Array Int Int))
(assert (not (= var1679!45 null-__Array__Int__Int__)))
(assert (= (select var1679!45 44) 3407924)) ; Statement: $r11[44] = 3407924 
(declare-const var1679!46 (Array Int Int))
(assert (not (= var1679!46 null-__Array__Int__Int__)))
(assert (= (select var1679!46 45) 3473460)) ; Statement: $r11[45] = 3473460 
(declare-const var1679!47 (Array Int Int))
(assert (not (= var1679!47 null-__Array__Int__Int__)))
(assert (= (select var1679!47 46) 3538996)) ; Statement: $r11[46] = 3538996 
(declare-const var1679!48 (Array Int Int))
(assert (not (= var1679!48 null-__Array__Int__Int__)))
(assert (= (select var1679!48 47) 3604532)) ; Statement: $r11[47] = 3604532 
(declare-const var1679!49 (Array Int Int))
(assert (not (= var1679!49 null-__Array__Int__Int__)))
(assert (= (select var1679!49 48) 3670068)) ; Statement: $r11[48] = 3670068 
(declare-const var1679!50 (Array Int Int))
(assert (not (= var1679!50 null-__Array__Int__Int__)))
(assert (= (select var1679!50 49) 3735604)) ; Statement: $r11[49] = 3735604 
(declare-const var1679!51 (Array Int Int))
(assert (not (= var1679!51 null-__Array__Int__Int__)))
(assert (= (select var1679!51 50) 3145781)) ; Statement: $r11[50] = 3145781 
(declare-const var1679!52 (Array Int Int))
(assert (not (= var1679!52 null-__Array__Int__Int__)))
(assert (= (select var1679!52 51) 3211317)) ; Statement: $r11[51] = 3211317 
(declare-const var1679!53 (Array Int Int))
(assert (not (= var1679!53 null-__Array__Int__Int__)))
(assert (= (select var1679!53 52) 3276853)) ; Statement: $r11[52] = 3276853 
(declare-const var1679!54 (Array Int Int))
(assert (not (= var1679!54 null-__Array__Int__Int__)))
(assert (= (select var1679!54 53) 3342389)) ; Statement: $r11[53] = 3342389 
(declare-const var1679!55 (Array Int Int))
(assert (not (= var1679!55 null-__Array__Int__Int__)))
(assert (= (select var1679!55 54) 3407925)) ; Statement: $r11[54] = 3407925 
(declare-const var1679!56 (Array Int Int))
(assert (not (= var1679!56 null-__Array__Int__Int__)))
(assert (= (select var1679!56 55) 3473461)) ; Statement: $r11[55] = 3473461 
(declare-const var1679!57 (Array Int Int))
(assert (not (= var1679!57 null-__Array__Int__Int__)))
(assert (= (select var1679!57 56) 3538997)) ; Statement: $r11[56] = 3538997 
(declare-const var1679!58 (Array Int Int))
(assert (not (= var1679!58 null-__Array__Int__Int__)))
(assert (= (select var1679!58 57) 3604533)) ; Statement: $r11[57] = 3604533 
(declare-const var1679!59 (Array Int Int))
(assert (not (= var1679!59 null-__Array__Int__Int__)))
(assert (= (select var1679!59 58) 3670069)) ; Statement: $r11[58] = 3670069 
(declare-const var1679!60 (Array Int Int))
(assert (not (= var1679!60 null-__Array__Int__Int__)))
(assert (= (select var1679!60 59) 3735605)) ; Statement: $r11[59] = 3735605 
(declare-const var1679!61 (Array Int Int))
(assert (not (= var1679!61 null-__Array__Int__Int__)))
(assert (= (select var1679!61 60) 3145782)) ; Statement: $r11[60] = 3145782 
(declare-const var1679!62 (Array Int Int))
(assert (not (= var1679!62 null-__Array__Int__Int__)))
(assert (= (select var1679!62 61) 3211318)) ; Statement: $r11[61] = 3211318 
(declare-const var1679!63 (Array Int Int))
(assert (not (= var1679!63 null-__Array__Int__Int__)))
(assert (= (select var1679!63 62) 3276854)) ; Statement: $r11[62] = 3276854 
(declare-const var1679!64 (Array Int Int))
(assert (not (= var1679!64 null-__Array__Int__Int__)))
(assert (= (select var1679!64 63) 3342390)) ; Statement: $r11[63] = 3342390 
(declare-const var1679!65 (Array Int Int))
(assert (not (= var1679!65 null-__Array__Int__Int__)))
(assert (= (select var1679!65 64) 3407926)) ; Statement: $r11[64] = 3407926 
(declare-const var1679!66 (Array Int Int))
(assert (not (= var1679!66 null-__Array__Int__Int__)))
(assert (= (select var1679!66 65) 3473462)) ; Statement: $r11[65] = 3473462 
(declare-const var1679!67 (Array Int Int))
(assert (not (= var1679!67 null-__Array__Int__Int__)))
(assert (= (select var1679!67 66) 3538998)) ; Statement: $r11[66] = 3538998 
(declare-const var1679!68 (Array Int Int))
(assert (not (= var1679!68 null-__Array__Int__Int__)))
(assert (= (select var1679!68 67) 3604534)) ; Statement: $r11[67] = 3604534 
(declare-const var1679!69 (Array Int Int))
(assert (not (= var1679!69 null-__Array__Int__Int__)))
(assert (= (select var1679!69 68) 3670070)) ; Statement: $r11[68] = 3670070 
(declare-const var1679!70 (Array Int Int))
(assert (not (= var1679!70 null-__Array__Int__Int__)))
(assert (= (select var1679!70 69) 3735606)) ; Statement: $r11[69] = 3735606 
(declare-const var1679!71 (Array Int Int))
(assert (not (= var1679!71 null-__Array__Int__Int__)))
(assert (= (select var1679!71 70) 3145783)) ; Statement: $r11[70] = 3145783 
(declare-const var1679!72 (Array Int Int))
(assert (not (= var1679!72 null-__Array__Int__Int__)))
(assert (= (select var1679!72 71) 3211319)) ; Statement: $r11[71] = 3211319 
(declare-const var1679!73 (Array Int Int))
(assert (not (= var1679!73 null-__Array__Int__Int__)))
(assert (= (select var1679!73 72) 3276855)) ; Statement: $r11[72] = 3276855 
(declare-const var1679!74 (Array Int Int))
(assert (not (= var1679!74 null-__Array__Int__Int__)))
(assert (= (select var1679!74 73) 3342391)) ; Statement: $r11[73] = 3342391 
(declare-const var1679!75 (Array Int Int))
(assert (not (= var1679!75 null-__Array__Int__Int__)))
(assert (= (select var1679!75 74) 3407927)) ; Statement: $r11[74] = 3407927 
(declare-const var1679!76 (Array Int Int))
(assert (not (= var1679!76 null-__Array__Int__Int__)))
(assert (= (select var1679!76 75) 3473463)) ; Statement: $r11[75] = 3473463 
(declare-const var1679!77 (Array Int Int))
(assert (not (= var1679!77 null-__Array__Int__Int__)))
(assert (= (select var1679!77 76) 3538999)) ; Statement: $r11[76] = 3538999 
(declare-const var1679!78 (Array Int Int))
(assert (not (= var1679!78 null-__Array__Int__Int__)))
(assert (= (select var1679!78 77) 3604535)) ; Statement: $r11[77] = 3604535 
(declare-const var1679!79 (Array Int Int))
(assert (not (= var1679!79 null-__Array__Int__Int__)))
(assert (= (select var1679!79 78) 3670071)) ; Statement: $r11[78] = 3670071 
(declare-const var1679!80 (Array Int Int))
(assert (not (= var1679!80 null-__Array__Int__Int__)))
(assert (= (select var1679!80 79) 3735607)) ; Statement: $r11[79] = 3735607 
(declare-const var1679!81 (Array Int Int))
(assert (not (= var1679!81 null-__Array__Int__Int__)))
(assert (= (select var1679!81 80) 3145784)) ; Statement: $r11[80] = 3145784 
(declare-const var1679!82 (Array Int Int))
(assert (not (= var1679!82 null-__Array__Int__Int__)))
(assert (= (select var1679!82 81) 3211320)) ; Statement: $r11[81] = 3211320 
(declare-const var1679!83 (Array Int Int))
(assert (not (= var1679!83 null-__Array__Int__Int__)))
(assert (= (select var1679!83 82) 3276856)) ; Statement: $r11[82] = 3276856 
(declare-const var1679!84 (Array Int Int))
(assert (not (= var1679!84 null-__Array__Int__Int__)))
(assert (= (select var1679!84 83) 3342392)) ; Statement: $r11[83] = 3342392 
(declare-const var1679!85 (Array Int Int))
(assert (not (= var1679!85 null-__Array__Int__Int__)))
(assert (= (select var1679!85 84) 3407928)) ; Statement: $r11[84] = 3407928 
(declare-const var1679!86 (Array Int Int))
(assert (not (= var1679!86 null-__Array__Int__Int__)))
(assert (= (select var1679!86 85) 3473464)) ; Statement: $r11[85] = 3473464 
(declare-const var1679!87 (Array Int Int))
(assert (not (= var1679!87 null-__Array__Int__Int__)))
(assert (= (select var1679!87 86) 3539000)) ; Statement: $r11[86] = 3539000 
(declare-const var1679!88 (Array Int Int))
(assert (not (= var1679!88 null-__Array__Int__Int__)))
(assert (= (select var1679!88 87) 3604536)) ; Statement: $r11[87] = 3604536 
(declare-const var1679!89 (Array Int Int))
(assert (not (= var1679!89 null-__Array__Int__Int__)))
(assert (= (select var1679!89 88) 3670072)) ; Statement: $r11[88] = 3670072 
(declare-const var1679!90 (Array Int Int))
(assert (not (= var1679!90 null-__Array__Int__Int__)))
(assert (= (select var1679!90 89) 3735608)) ; Statement: $r11[89] = 3735608 
(declare-const var1679!91 (Array Int Int))
(assert (not (= var1679!91 null-__Array__Int__Int__)))
(assert (= (select var1679!91 90) 3145785)) ; Statement: $r11[90] = 3145785 
(declare-const var1679!92 (Array Int Int))
(assert (not (= var1679!92 null-__Array__Int__Int__)))
(assert (= (select var1679!92 91) 3211321)) ; Statement: $r11[91] = 3211321 
(declare-const var1679!93 (Array Int Int))
(assert (not (= var1679!93 null-__Array__Int__Int__)))
(assert (= (select var1679!93 92) 3276857)) ; Statement: $r11[92] = 3276857 
(declare-const var1679!94 (Array Int Int))
(assert (not (= var1679!94 null-__Array__Int__Int__)))
(assert (= (select var1679!94 93) 3342393)) ; Statement: $r11[93] = 3342393 
(declare-const var1679!95 (Array Int Int))
(assert (not (= var1679!95 null-__Array__Int__Int__)))
(assert (= (select var1679!95 94) 3407929)) ; Statement: $r11[94] = 3407929 
(declare-const var1679!96 (Array Int Int))
(assert (not (= var1679!96 null-__Array__Int__Int__)))
(assert (= (select var1679!96 95) 3473465)) ; Statement: $r11[95] = 3473465 
(declare-const var1679!97 (Array Int Int))
(assert (not (= var1679!97 null-__Array__Int__Int__)))
(assert (= (select var1679!97 96) 3539001)) ; Statement: $r11[96] = 3539001 
(declare-const var1679!98 (Array Int Int))
(assert (not (= var1679!98 null-__Array__Int__Int__)))
(assert (= (select var1679!98 97) 3604537)) ; Statement: $r11[97] = 3604537 
(declare-const var1679!99 (Array Int Int))
(assert (not (= var1679!99 null-__Array__Int__Int__)))
(assert (= (select var1679!99 98) 3670073)) ; Statement: $r11[98] = 3670073 
(declare-const var1679!100 (Array Int Int))
(assert (not (= var1679!100 null-__Array__Int__Int__)))
(assert (= (select var1679!100 99) 3735609)) ; Statement: $r11[99] = 3735609 
(define-const var331 Bool var1196-BIG_ENDIAN) ; Statement: $z7 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z7 == 0 goto <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10 
(assert (= (ite var331 1 0) 0)) ; Cond: $z7 == 0 
(define-const var1206 (Array Int Int) var1483!100) ; Statement: <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10 
(define-const var994 (Array Int Int) var1679!100) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16> = $r11 
(define-const var556 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= 1000 goto return 
(assert (>= var556 1000)) ; Cond: i19 >= 1000 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), getBytes/1068683673=([java.lang.String], byte[]), toCharArray/415275702=([java.lang.String], char[])}
; {var1196=com.alibaba.fastjson2.util.JDKUtils, var1540=$z0, var2001=$i10, var12=<com.alibaba.fastjson2.util.IOUtils: int NULL_32>, var474=$z1, var2291=$l11, var3474=<com.alibaba.fastjson2.util.IOUtils: long NULL_64>, var3822=$z2, var3352=$i12, var3767=<com.alibaba.fastjson2.util.IOUtils: int TRUE>, var1716=$z3, var2617=$l13, var2984=<com.alibaba.fastjson2.util.IOUtils: long TRUE_64>, var499=$z4, var138=$i14, var1456=<com.alibaba.fastjson2.util.IOUtils: int ALSE>, var3622=$z5, var1635=$l15, var3955=<com.alibaba.fastjson2.util.IOUtils: long ALSE_64>, var1308=$z6, var1414=$l16, var610=<com.alibaba.fastjson2.util.IOUtils: long DOT_X0>, var805=$r0, var3963=<com.alibaba.fastjson2.util.IOUtils: int[] sizeTable>, var186=$r1, var740=<com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32>, var581=$r2, var1591=<com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64>, var1711=$r3, var3252=$r4, var1003=<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES>, var2543=$r5, var1908=$r6, var10=<com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS>, var697=$r7, var1894=$r8, var2951=<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG>, var3632=$r9, var953=<com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN>, var1483=$r10, var1679=$r11, var331=$z7, var1206=<com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS>, var994=<com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16>, var556=i19}
; {com.alibaba.fastjson2.util.JDKUtils=var1196, $z0=var1540, $i10=var2001, <com.alibaba.fastjson2.util.IOUtils: int NULL_32>=var12, $z1=var474, $l11=var2291, <com.alibaba.fastjson2.util.IOUtils: long NULL_64>=var3474, $z2=var3822, $i12=var3352, <com.alibaba.fastjson2.util.IOUtils: int TRUE>=var3767, $z3=var1716, $l13=var2617, <com.alibaba.fastjson2.util.IOUtils: long TRUE_64>=var2984, $z4=var499, $i14=var138, <com.alibaba.fastjson2.util.IOUtils: int ALSE>=var1456, $z5=var3622, $l15=var1635, <com.alibaba.fastjson2.util.IOUtils: long ALSE_64>=var3955, $z6=var1308, $l16=var1414, <com.alibaba.fastjson2.util.IOUtils: long DOT_X0>=var610, $r0=var805, <com.alibaba.fastjson2.util.IOUtils: int[] sizeTable>=var3963, $r1=var186, <com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32>=var740, $r2=var581, <com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64>=var1591, $r3=var1711, $r4=var3252, <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES>=var1003, $r5=var2543, $r6=var1908, <com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS>=var10, $r7=var697, $r8=var1894, <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG>=var2951, $r9=var3632, <com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN>=var953, $r10=var1483, $r11=var1679, $z7=var331, <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS>=var1206, <com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16>=var994, i19=var556}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 2,"<java.lang.String: char[] toCharArray()>": 1}
;stmts $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z0 == 0 goto $i10 = 1819047278;	$i10 = 1853189228;	goto [?= <com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10];	<com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10;	$z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z1 == 0 goto $l11 = 30399761348886638L;	$l11 = 30399761348886638L;	<com.alibaba.fastjson2.util.IOUtils: long NULL_64> = $l11;	$z2 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z2 == 0 goto $i12 = 1702195828;	$i12 = 1702195828;	<com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12;	$z3 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z3 == 0 goto $l13 = 28429475166421108L;	$l13 = 28429475166421108L;	<com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13;	$z4 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z4 == 0 goto $i14 = 1702063201;	$i14 = 1702063201;	<com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14;	$z5 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z5 == 0 goto $l15 = 28429466576093281L;	$l15 = 27303536604938341L;	goto [?= <com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15];	<com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15;	$z6 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z6 == 0 goto $l16 = 46L;	$l16 = 11776L;	goto [?= <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16];	<com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16;	$r0 = newarray (int)[10];	$r0[0] = 9;	$r0[1] = 99;	$r0[2] = 999;	$r0[3] = 9999;	$r0[4] = 99999;	$r0[5] = 999999;	$r0[6] = 9999999;	$r0[7] = 99999999;	$r0[8] = 999999999;	$r0[9] = 2147483647;	<com.alibaba.fastjson2.util.IOUtils: int[] sizeTable> = $r0;	$r1 = newarray (int)[1000];	<com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32> = $r1;	$r2 = newarray (long)[1000];	<com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64> = $r2;	$r3 = "-2147483648";	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES> = $r4;	$r5 = "-2147483648";	$r6 = virtualinvoke $r5.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS> = $r6;	$r7 = "-9223372036854775808";	$r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG> = $r8;	$r9 = newarray (long)[18];	$r9[0] = 10L;	$r9[1] = 100L;	$r9[2] = 1000L;	$r9[3] = 10000L;	$r9[4] = 100000L;	$r9[5] = 1000000L;	$r9[6] = 10000000L;	$r9[7] = 100000000L;	$r9[8] = 1000000000L;	$r9[9] = 10000000000L;	$r9[10] = 100000000000L;	$r9[11] = 1000000000000L;	$r9[12] = 10000000000000L;	$r9[13] = 100000000000000L;	$r9[14] = 1000000000000000L;	$r9[15] = 10000000000000000L;	$r9[16] = 100000000000000000L;	$r9[17] = 1000000000000000000L;	<com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN> = $r9;	$r10 = newarray (short)[100];	$r10[0] = 12336;	$r10[1] = 12592;	$r10[2] = 12848;	$r10[3] = 13104;	$r10[4] = 13360;	$r10[5] = 13616;	$r10[6] = 13872;	$r10[7] = 14128;	$r10[8] = 14384;	$r10[9] = 14640;	$r10[10] = 12337;	$r10[11] = 12593;	$r10[12] = 12849;	$r10[13] = 13105;	$r10[14] = 13361;	$r10[15] = 13617;	$r10[16] = 13873;	$r10[17] = 14129;	$r10[18] = 14385;	$r10[19] = 14641;	$r10[20] = 12338;	$r10[21] = 12594;	$r10[22] = 12850;	$r10[23] = 13106;	$r10[24] = 13362;	$r10[25] = 13618;	$r10[26] = 13874;	$r10[27] = 14130;	$r10[28] = 14386;	$r10[29] = 14642;	$r10[30] = 12339;	$r10[31] = 12595;	$r10[32] = 12851;	$r10[33] = 13107;	$r10[34] = 13363;	$r10[35] = 13619;	$r10[36] = 13875;	$r10[37] = 14131;	$r10[38] = 14387;	$r10[39] = 14643;	$r10[40] = 12340;	$r10[41] = 12596;	$r10[42] = 12852;	$r10[43] = 13108;	$r10[44] = 13364;	$r10[45] = 13620;	$r10[46] = 13876;	$r10[47] = 14132;	$r10[48] = 14388;	$r10[49] = 14644;	$r10[50] = 12341;	$r10[51] = 12597;	$r10[52] = 12853;	$r10[53] = 13109;	$r10[54] = 13365;	$r10[55] = 13621;	$r10[56] = 13877;	$r10[57] = 14133;	$r10[58] = 14389;	$r10[59] = 14645;	$r10[60] = 12342;	$r10[61] = 12598;	$r10[62] = 12854;	$r10[63] = 13110;	$r10[64] = 13366;	$r10[65] = 13622;	$r10[66] = 13878;	$r10[67] = 14134;	$r10[68] = 14390;	$r10[69] = 14646;	$r10[70] = 12343;	$r10[71] = 12599;	$r10[72] = 12855;	$r10[73] = 13111;	$r10[74] = 13367;	$r10[75] = 13623;	$r10[76] = 13879;	$r10[77] = 14135;	$r10[78] = 14391;	$r10[79] = 14647;	$r10[80] = 12344;	$r10[81] = 12600;	$r10[82] = 12856;	$r10[83] = 13112;	$r10[84] = 13368;	$r10[85] = 13624;	$r10[86] = 13880;	$r10[87] = 14136;	$r10[88] = 14392;	$r10[89] = 14648;	$r10[90] = 12345;	$r10[91] = 12601;	$r10[92] = 12857;	$r10[93] = 13113;	$r10[94] = 13369;	$r10[95] = 13625;	$r10[96] = 13881;	$r10[97] = 14137;	$r10[98] = 14393;	$r10[99] = 14649;	$r11 = newarray (int)[100];	$r11[0] = 3145776;	$r11[1] = 3211312;	$r11[2] = 3276848;	$r11[3] = 3342384;	$r11[4] = 3407920;	$r11[5] = 3473456;	$r11[6] = 3538992;	$r11[7] = 3604528;	$r11[8] = 3670064;	$r11[9] = 3735600;	$r11[10] = 3145777;	$r11[11] = 3211313;	$r11[12] = 3276849;	$r11[13] = 3342385;	$r11[14] = 3407921;	$r11[15] = 3473457;	$r11[16] = 3538993;	$r11[17] = 3604529;	$r11[18] = 3670065;	$r11[19] = 3735601;	$r11[20] = 3145778;	$r11[21] = 3211314;	$r11[22] = 3276850;	$r11[23] = 3342386;	$r11[24] = 3407922;	$r11[25] = 3473458;	$r11[26] = 3538994;	$r11[27] = 3604530;	$r11[28] = 3670066;	$r11[29] = 3735602;	$r11[30] = 3145779;	$r11[31] = 3211315;	$r11[32] = 3276851;	$r11[33] = 3342387;	$r11[34] = 3407923;	$r11[35] = 3473459;	$r11[36] = 3538995;	$r11[37] = 3604531;	$r11[38] = 3670067;	$r11[39] = 3735603;	$r11[40] = 3145780;	$r11[41] = 3211316;	$r11[42] = 3276852;	$r11[43] = 3342388;	$r11[44] = 3407924;	$r11[45] = 3473460;	$r11[46] = 3538996;	$r11[47] = 3604532;	$r11[48] = 3670068;	$r11[49] = 3735604;	$r11[50] = 3145781;	$r11[51] = 3211317;	$r11[52] = 3276853;	$r11[53] = 3342389;	$r11[54] = 3407925;	$r11[55] = 3473461;	$r11[56] = 3538997;	$r11[57] = 3604533;	$r11[58] = 3670069;	$r11[59] = 3735605;	$r11[60] = 3145782;	$r11[61] = 3211318;	$r11[62] = 3276854;	$r11[63] = 3342390;	$r11[64] = 3407926;	$r11[65] = 3473462;	$r11[66] = 3538998;	$r11[67] = 3604534;	$r11[68] = 3670070;	$r11[69] = 3735606;	$r11[70] = 3145783;	$r11[71] = 3211319;	$r11[72] = 3276855;	$r11[73] = 3342391;	$r11[74] = 3407927;	$r11[75] = 3473463;	$r11[76] = 3538999;	$r11[77] = 3604535;	$r11[78] = 3670071;	$r11[79] = 3735607;	$r11[80] = 3145784;	$r11[81] = 3211320;	$r11[82] = 3276856;	$r11[83] = 3342392;	$r11[84] = 3407928;	$r11[85] = 3473464;	$r11[86] = 3539000;	$r11[87] = 3604536;	$r11[88] = 3670072;	$r11[89] = 3735608;	$r11[90] = 3145785;	$r11[91] = 3211321;	$r11[92] = 3276857;	$r11[93] = 3342393;	$r11[94] = 3407929;	$r11[95] = 3473465;	$r11[96] = 3539001;	$r11[97] = 3604537;	$r11[98] = 3670073;	$r11[99] = 3735609;	$z7 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z7 == 0 goto <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10;	<com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10;	<com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16> = $r11;	i19 = 0;	if i19 >= 1000 goto return;	return
;block_num 18