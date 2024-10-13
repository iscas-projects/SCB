(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const var1733-BIG_ENDIAN Bool)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var1025 Bool var1733-BIG_ENDIAN) ; Statement: $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z0 == 0 goto $i10 = 1819047278 
(assert (= (ite var1025 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2413 Int 1819047278) ; Statement: $i10 = 1819047278 
(assert true) ; Non Conditional
(define-const var1917 Int var2413) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10 
(define-const var1100 Bool var1733-BIG_ENDIAN) ; Statement: $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z1 == 0 goto $l11 = 30399761348886638L 
(assert (= (ite var1100 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1048 Int 30399761348886638) ; Statement: $l11 = 30399761348886638L 
(assert true) ; Non Conditional
(define-const var2248 Int var1048) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long NULL_64> = $l11 
(define-const var414 Bool var1733-BIG_ENDIAN) ; Statement: $z2 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z2 == 0 goto $i12 = 1702195828 
(assert (not (= (ite var414 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2819 Int 1953658213) ; Statement: $i12 = 1953658213 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12] 
(assert true) ; Non Conditional
(define-const var2713 Int var2819) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12 
(define-const var353 Bool var1733-BIG_ENDIAN) ; Statement: $z3 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z3 == 0 goto $l13 = 28429475166421108L 
(assert (= (ite var353 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2909 Int 28429475166421108) ; Statement: $l13 = 28429475166421108L 
(assert true) ; Non Conditional
(define-const var3366 Int var2909) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13 
(define-const var2021 Bool var1733-BIG_ENDIAN) ; Statement: $z4 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z4 == 0 goto $i14 = 1702063201 
(assert (= (ite var2021 1 0) 0)) ; Cond: $z4 == 0 
(define-const var797 Int 1702063201) ; Statement: $i14 = 1702063201 
(assert true) ; Non Conditional
(define-const var2077 Int var797) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14 
(define-const var2861 Bool var1733-BIG_ENDIAN) ; Statement: $z5 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z5 == 0 goto $l15 = 28429466576093281L 
(assert (not (= (ite var2861 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1757 Int 27303536604938341) ; Statement: $l15 = 27303536604938341L 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15] 
(assert true) ; Non Conditional
(define-const var279 Int var1757) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15 
(define-const var1524 Bool var1733-BIG_ENDIAN) ; Statement: $z6 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z6 == 0 goto $l16 = 46L 
(assert (not (= (ite var1524 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var2617 Int 11776) ; Statement: $l16 = 11776L 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16] 
(assert true) ; Non Conditional
(define-const var2701 Int var2617) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16 
(define-const var306 (Array Int Int) arr-Int-init) ; Statement: $r0 = newarray (int)[10] 
(declare-const var306!1 (Array Int Int))
(assert (not (= var306!1 null-__Array__Int__Int__)))
(assert (= (select var306!1 0) 9)) ; Statement: $r0[0] = 9 
(declare-const var306!2 (Array Int Int))
(assert (not (= var306!2 null-__Array__Int__Int__)))
(assert (= (select var306!2 1) 99)) ; Statement: $r0[1] = 99 
(declare-const var306!3 (Array Int Int))
(assert (not (= var306!3 null-__Array__Int__Int__)))
(assert (= (select var306!3 2) 999)) ; Statement: $r0[2] = 999 
(declare-const var306!4 (Array Int Int))
(assert (not (= var306!4 null-__Array__Int__Int__)))
(assert (= (select var306!4 3) 9999)) ; Statement: $r0[3] = 9999 
(declare-const var306!5 (Array Int Int))
(assert (not (= var306!5 null-__Array__Int__Int__)))
(assert (= (select var306!5 4) 99999)) ; Statement: $r0[4] = 99999 
(declare-const var306!6 (Array Int Int))
(assert (not (= var306!6 null-__Array__Int__Int__)))
(assert (= (select var306!6 5) 999999)) ; Statement: $r0[5] = 999999 
(declare-const var306!7 (Array Int Int))
(assert (not (= var306!7 null-__Array__Int__Int__)))
(assert (= (select var306!7 6) 9999999)) ; Statement: $r0[6] = 9999999 
(declare-const var306!8 (Array Int Int))
(assert (not (= var306!8 null-__Array__Int__Int__)))
(assert (= (select var306!8 7) 99999999)) ; Statement: $r0[7] = 99999999 
(declare-const var306!9 (Array Int Int))
(assert (not (= var306!9 null-__Array__Int__Int__)))
(assert (= (select var306!9 8) 999999999)) ; Statement: $r0[8] = 999999999 
(declare-const var306!10 (Array Int Int))
(assert (not (= var306!10 null-__Array__Int__Int__)))
(assert (= (select var306!10 9) 2147483647)) ; Statement: $r0[9] = 2147483647 
(define-const var504 (Array Int Int) var306!10) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] sizeTable> = $r0 
(define-const var825 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[1000] 
(define-const var3282 (Array Int Int) var825) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32> = $r1 
(define-const var762 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (long)[1000] 
(define-const var3941 (Array Int Int) var762) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64> = $r2 
(define-const var918 String "-2147483648") ; Statement: $r3 = "-2147483648" 
(assert true)
(define-const var379 (Array Int Int) (getBytes/1068683673 var918)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes()>() 
(define-const var2372 (Array Int Int) var379) ; Statement: <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES> = $r4 
(define-const var2038 String "-2147483648") ; Statement: $r5 = "-2147483648" 
(assert true)
(define-const var513 (Array Int Int) (toCharArray/415275702 var2038)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: char[] toCharArray()>() 
(define-const var2082 (Array Int Int) var513) ; Statement: <com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS> = $r6 
(define-const var792 String "-9223372036854775808") ; Statement: $r7 = "-9223372036854775808" 
(assert true)
(define-const var2836 (Array Int Int) (getBytes/1068683673 var792)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>() 
(define-const var287 (Array Int Int) var2836) ; Statement: <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG> = $r8 
(define-const var3721 (Array Int Int) arr-Int-init) ; Statement: $r9 = newarray (long)[18] 
(declare-const var3721!1 (Array Int Int))
(assert (not (= var3721!1 null-__Array__Int__Int__)))
(assert (= (select var3721!1 0) 10)) ; Statement: $r9[0] = 10L 
(declare-const var3721!2 (Array Int Int))
(assert (not (= var3721!2 null-__Array__Int__Int__)))
(assert (= (select var3721!2 1) 100)) ; Statement: $r9[1] = 100L 
(declare-const var3721!3 (Array Int Int))
(assert (not (= var3721!3 null-__Array__Int__Int__)))
(assert (= (select var3721!3 2) 1000)) ; Statement: $r9[2] = 1000L 
(declare-const var3721!4 (Array Int Int))
(assert (not (= var3721!4 null-__Array__Int__Int__)))
(assert (= (select var3721!4 3) 10000)) ; Statement: $r9[3] = 10000L 
(declare-const var3721!5 (Array Int Int))
(assert (not (= var3721!5 null-__Array__Int__Int__)))
(assert (= (select var3721!5 4) 100000)) ; Statement: $r9[4] = 100000L 
(declare-const var3721!6 (Array Int Int))
(assert (not (= var3721!6 null-__Array__Int__Int__)))
(assert (= (select var3721!6 5) 1000000)) ; Statement: $r9[5] = 1000000L 
(declare-const var3721!7 (Array Int Int))
(assert (not (= var3721!7 null-__Array__Int__Int__)))
(assert (= (select var3721!7 6) 10000000)) ; Statement: $r9[6] = 10000000L 
(declare-const var3721!8 (Array Int Int))
(assert (not (= var3721!8 null-__Array__Int__Int__)))
(assert (= (select var3721!8 7) 100000000)) ; Statement: $r9[7] = 100000000L 
(declare-const var3721!9 (Array Int Int))
(assert (not (= var3721!9 null-__Array__Int__Int__)))
(assert (= (select var3721!9 8) 1000000000)) ; Statement: $r9[8] = 1000000000L 
(declare-const var3721!10 (Array Int Int))
(assert (not (= var3721!10 null-__Array__Int__Int__)))
(assert (= (select var3721!10 9) 10000000000)) ; Statement: $r9[9] = 10000000000L 
(declare-const var3721!11 (Array Int Int))
(assert (not (= var3721!11 null-__Array__Int__Int__)))
(assert (= (select var3721!11 10) 100000000000)) ; Statement: $r9[10] = 100000000000L 
(declare-const var3721!12 (Array Int Int))
(assert (not (= var3721!12 null-__Array__Int__Int__)))
(assert (= (select var3721!12 11) 1000000000000)) ; Statement: $r9[11] = 1000000000000L 
(declare-const var3721!13 (Array Int Int))
(assert (not (= var3721!13 null-__Array__Int__Int__)))
(assert (= (select var3721!13 12) 10000000000000)) ; Statement: $r9[12] = 10000000000000L 
(declare-const var3721!14 (Array Int Int))
(assert (not (= var3721!14 null-__Array__Int__Int__)))
(assert (= (select var3721!14 13) 100000000000000)) ; Statement: $r9[13] = 100000000000000L 
(declare-const var3721!15 (Array Int Int))
(assert (not (= var3721!15 null-__Array__Int__Int__)))
(assert (= (select var3721!15 14) 1000000000000000)) ; Statement: $r9[14] = 1000000000000000L 
(declare-const var3721!16 (Array Int Int))
(assert (not (= var3721!16 null-__Array__Int__Int__)))
(assert (= (select var3721!16 15) 10000000000000000)) ; Statement: $r9[15] = 10000000000000000L 
(declare-const var3721!17 (Array Int Int))
(assert (not (= var3721!17 null-__Array__Int__Int__)))
(assert (= (select var3721!17 16) 100000000000000000)) ; Statement: $r9[16] = 100000000000000000L 
(declare-const var3721!18 (Array Int Int))
(assert (not (= var3721!18 null-__Array__Int__Int__)))
(assert (= (select var3721!18 17) 1000000000000000000)) ; Statement: $r9[17] = 1000000000000000000L 
(define-const var2225 (Array Int Int) var3721!18) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN> = $r9 
(define-const var3353 (Array Int Int) arr-Int-init) ; Statement: $r10 = newarray (short)[100] 
(declare-const var3353!1 (Array Int Int))
(assert (not (= var3353!1 null-__Array__Int__Int__)))
(assert (= (select var3353!1 0) 12336)) ; Statement: $r10[0] = 12336 
(declare-const var3353!2 (Array Int Int))
(assert (not (= var3353!2 null-__Array__Int__Int__)))
(assert (= (select var3353!2 1) 12592)) ; Statement: $r10[1] = 12592 
(declare-const var3353!3 (Array Int Int))
(assert (not (= var3353!3 null-__Array__Int__Int__)))
(assert (= (select var3353!3 2) 12848)) ; Statement: $r10[2] = 12848 
(declare-const var3353!4 (Array Int Int))
(assert (not (= var3353!4 null-__Array__Int__Int__)))
(assert (= (select var3353!4 3) 13104)) ; Statement: $r10[3] = 13104 
(declare-const var3353!5 (Array Int Int))
(assert (not (= var3353!5 null-__Array__Int__Int__)))
(assert (= (select var3353!5 4) 13360)) ; Statement: $r10[4] = 13360 
(declare-const var3353!6 (Array Int Int))
(assert (not (= var3353!6 null-__Array__Int__Int__)))
(assert (= (select var3353!6 5) 13616)) ; Statement: $r10[5] = 13616 
(declare-const var3353!7 (Array Int Int))
(assert (not (= var3353!7 null-__Array__Int__Int__)))
(assert (= (select var3353!7 6) 13872)) ; Statement: $r10[6] = 13872 
(declare-const var3353!8 (Array Int Int))
(assert (not (= var3353!8 null-__Array__Int__Int__)))
(assert (= (select var3353!8 7) 14128)) ; Statement: $r10[7] = 14128 
(declare-const var3353!9 (Array Int Int))
(assert (not (= var3353!9 null-__Array__Int__Int__)))
(assert (= (select var3353!9 8) 14384)) ; Statement: $r10[8] = 14384 
(declare-const var3353!10 (Array Int Int))
(assert (not (= var3353!10 null-__Array__Int__Int__)))
(assert (= (select var3353!10 9) 14640)) ; Statement: $r10[9] = 14640 
(declare-const var3353!11 (Array Int Int))
(assert (not (= var3353!11 null-__Array__Int__Int__)))
(assert (= (select var3353!11 10) 12337)) ; Statement: $r10[10] = 12337 
(declare-const var3353!12 (Array Int Int))
(assert (not (= var3353!12 null-__Array__Int__Int__)))
(assert (= (select var3353!12 11) 12593)) ; Statement: $r10[11] = 12593 
(declare-const var3353!13 (Array Int Int))
(assert (not (= var3353!13 null-__Array__Int__Int__)))
(assert (= (select var3353!13 12) 12849)) ; Statement: $r10[12] = 12849 
(declare-const var3353!14 (Array Int Int))
(assert (not (= var3353!14 null-__Array__Int__Int__)))
(assert (= (select var3353!14 13) 13105)) ; Statement: $r10[13] = 13105 
(declare-const var3353!15 (Array Int Int))
(assert (not (= var3353!15 null-__Array__Int__Int__)))
(assert (= (select var3353!15 14) 13361)) ; Statement: $r10[14] = 13361 
(declare-const var3353!16 (Array Int Int))
(assert (not (= var3353!16 null-__Array__Int__Int__)))
(assert (= (select var3353!16 15) 13617)) ; Statement: $r10[15] = 13617 
(declare-const var3353!17 (Array Int Int))
(assert (not (= var3353!17 null-__Array__Int__Int__)))
(assert (= (select var3353!17 16) 13873)) ; Statement: $r10[16] = 13873 
(declare-const var3353!18 (Array Int Int))
(assert (not (= var3353!18 null-__Array__Int__Int__)))
(assert (= (select var3353!18 17) 14129)) ; Statement: $r10[17] = 14129 
(declare-const var3353!19 (Array Int Int))
(assert (not (= var3353!19 null-__Array__Int__Int__)))
(assert (= (select var3353!19 18) 14385)) ; Statement: $r10[18] = 14385 
(declare-const var3353!20 (Array Int Int))
(assert (not (= var3353!20 null-__Array__Int__Int__)))
(assert (= (select var3353!20 19) 14641)) ; Statement: $r10[19] = 14641 
(declare-const var3353!21 (Array Int Int))
(assert (not (= var3353!21 null-__Array__Int__Int__)))
(assert (= (select var3353!21 20) 12338)) ; Statement: $r10[20] = 12338 
(declare-const var3353!22 (Array Int Int))
(assert (not (= var3353!22 null-__Array__Int__Int__)))
(assert (= (select var3353!22 21) 12594)) ; Statement: $r10[21] = 12594 
(declare-const var3353!23 (Array Int Int))
(assert (not (= var3353!23 null-__Array__Int__Int__)))
(assert (= (select var3353!23 22) 12850)) ; Statement: $r10[22] = 12850 
(declare-const var3353!24 (Array Int Int))
(assert (not (= var3353!24 null-__Array__Int__Int__)))
(assert (= (select var3353!24 23) 13106)) ; Statement: $r10[23] = 13106 
(declare-const var3353!25 (Array Int Int))
(assert (not (= var3353!25 null-__Array__Int__Int__)))
(assert (= (select var3353!25 24) 13362)) ; Statement: $r10[24] = 13362 
(declare-const var3353!26 (Array Int Int))
(assert (not (= var3353!26 null-__Array__Int__Int__)))
(assert (= (select var3353!26 25) 13618)) ; Statement: $r10[25] = 13618 
(declare-const var3353!27 (Array Int Int))
(assert (not (= var3353!27 null-__Array__Int__Int__)))
(assert (= (select var3353!27 26) 13874)) ; Statement: $r10[26] = 13874 
(declare-const var3353!28 (Array Int Int))
(assert (not (= var3353!28 null-__Array__Int__Int__)))
(assert (= (select var3353!28 27) 14130)) ; Statement: $r10[27] = 14130 
(declare-const var3353!29 (Array Int Int))
(assert (not (= var3353!29 null-__Array__Int__Int__)))
(assert (= (select var3353!29 28) 14386)) ; Statement: $r10[28] = 14386 
(declare-const var3353!30 (Array Int Int))
(assert (not (= var3353!30 null-__Array__Int__Int__)))
(assert (= (select var3353!30 29) 14642)) ; Statement: $r10[29] = 14642 
(declare-const var3353!31 (Array Int Int))
(assert (not (= var3353!31 null-__Array__Int__Int__)))
(assert (= (select var3353!31 30) 12339)) ; Statement: $r10[30] = 12339 
(declare-const var3353!32 (Array Int Int))
(assert (not (= var3353!32 null-__Array__Int__Int__)))
(assert (= (select var3353!32 31) 12595)) ; Statement: $r10[31] = 12595 
(declare-const var3353!33 (Array Int Int))
(assert (not (= var3353!33 null-__Array__Int__Int__)))
(assert (= (select var3353!33 32) 12851)) ; Statement: $r10[32] = 12851 
(declare-const var3353!34 (Array Int Int))
(assert (not (= var3353!34 null-__Array__Int__Int__)))
(assert (= (select var3353!34 33) 13107)) ; Statement: $r10[33] = 13107 
(declare-const var3353!35 (Array Int Int))
(assert (not (= var3353!35 null-__Array__Int__Int__)))
(assert (= (select var3353!35 34) 13363)) ; Statement: $r10[34] = 13363 
(declare-const var3353!36 (Array Int Int))
(assert (not (= var3353!36 null-__Array__Int__Int__)))
(assert (= (select var3353!36 35) 13619)) ; Statement: $r10[35] = 13619 
(declare-const var3353!37 (Array Int Int))
(assert (not (= var3353!37 null-__Array__Int__Int__)))
(assert (= (select var3353!37 36) 13875)) ; Statement: $r10[36] = 13875 
(declare-const var3353!38 (Array Int Int))
(assert (not (= var3353!38 null-__Array__Int__Int__)))
(assert (= (select var3353!38 37) 14131)) ; Statement: $r10[37] = 14131 
(declare-const var3353!39 (Array Int Int))
(assert (not (= var3353!39 null-__Array__Int__Int__)))
(assert (= (select var3353!39 38) 14387)) ; Statement: $r10[38] = 14387 
(declare-const var3353!40 (Array Int Int))
(assert (not (= var3353!40 null-__Array__Int__Int__)))
(assert (= (select var3353!40 39) 14643)) ; Statement: $r10[39] = 14643 
(declare-const var3353!41 (Array Int Int))
(assert (not (= var3353!41 null-__Array__Int__Int__)))
(assert (= (select var3353!41 40) 12340)) ; Statement: $r10[40] = 12340 
(declare-const var3353!42 (Array Int Int))
(assert (not (= var3353!42 null-__Array__Int__Int__)))
(assert (= (select var3353!42 41) 12596)) ; Statement: $r10[41] = 12596 
(declare-const var3353!43 (Array Int Int))
(assert (not (= var3353!43 null-__Array__Int__Int__)))
(assert (= (select var3353!43 42) 12852)) ; Statement: $r10[42] = 12852 
(declare-const var3353!44 (Array Int Int))
(assert (not (= var3353!44 null-__Array__Int__Int__)))
(assert (= (select var3353!44 43) 13108)) ; Statement: $r10[43] = 13108 
(declare-const var3353!45 (Array Int Int))
(assert (not (= var3353!45 null-__Array__Int__Int__)))
(assert (= (select var3353!45 44) 13364)) ; Statement: $r10[44] = 13364 
(declare-const var3353!46 (Array Int Int))
(assert (not (= var3353!46 null-__Array__Int__Int__)))
(assert (= (select var3353!46 45) 13620)) ; Statement: $r10[45] = 13620 
(declare-const var3353!47 (Array Int Int))
(assert (not (= var3353!47 null-__Array__Int__Int__)))
(assert (= (select var3353!47 46) 13876)) ; Statement: $r10[46] = 13876 
(declare-const var3353!48 (Array Int Int))
(assert (not (= var3353!48 null-__Array__Int__Int__)))
(assert (= (select var3353!48 47) 14132)) ; Statement: $r10[47] = 14132 
(declare-const var3353!49 (Array Int Int))
(assert (not (= var3353!49 null-__Array__Int__Int__)))
(assert (= (select var3353!49 48) 14388)) ; Statement: $r10[48] = 14388 
(declare-const var3353!50 (Array Int Int))
(assert (not (= var3353!50 null-__Array__Int__Int__)))
(assert (= (select var3353!50 49) 14644)) ; Statement: $r10[49] = 14644 
(declare-const var3353!51 (Array Int Int))
(assert (not (= var3353!51 null-__Array__Int__Int__)))
(assert (= (select var3353!51 50) 12341)) ; Statement: $r10[50] = 12341 
(declare-const var3353!52 (Array Int Int))
(assert (not (= var3353!52 null-__Array__Int__Int__)))
(assert (= (select var3353!52 51) 12597)) ; Statement: $r10[51] = 12597 
(declare-const var3353!53 (Array Int Int))
(assert (not (= var3353!53 null-__Array__Int__Int__)))
(assert (= (select var3353!53 52) 12853)) ; Statement: $r10[52] = 12853 
(declare-const var3353!54 (Array Int Int))
(assert (not (= var3353!54 null-__Array__Int__Int__)))
(assert (= (select var3353!54 53) 13109)) ; Statement: $r10[53] = 13109 
(declare-const var3353!55 (Array Int Int))
(assert (not (= var3353!55 null-__Array__Int__Int__)))
(assert (= (select var3353!55 54) 13365)) ; Statement: $r10[54] = 13365 
(declare-const var3353!56 (Array Int Int))
(assert (not (= var3353!56 null-__Array__Int__Int__)))
(assert (= (select var3353!56 55) 13621)) ; Statement: $r10[55] = 13621 
(declare-const var3353!57 (Array Int Int))
(assert (not (= var3353!57 null-__Array__Int__Int__)))
(assert (= (select var3353!57 56) 13877)) ; Statement: $r10[56] = 13877 
(declare-const var3353!58 (Array Int Int))
(assert (not (= var3353!58 null-__Array__Int__Int__)))
(assert (= (select var3353!58 57) 14133)) ; Statement: $r10[57] = 14133 
(declare-const var3353!59 (Array Int Int))
(assert (not (= var3353!59 null-__Array__Int__Int__)))
(assert (= (select var3353!59 58) 14389)) ; Statement: $r10[58] = 14389 
(declare-const var3353!60 (Array Int Int))
(assert (not (= var3353!60 null-__Array__Int__Int__)))
(assert (= (select var3353!60 59) 14645)) ; Statement: $r10[59] = 14645 
(declare-const var3353!61 (Array Int Int))
(assert (not (= var3353!61 null-__Array__Int__Int__)))
(assert (= (select var3353!61 60) 12342)) ; Statement: $r10[60] = 12342 
(declare-const var3353!62 (Array Int Int))
(assert (not (= var3353!62 null-__Array__Int__Int__)))
(assert (= (select var3353!62 61) 12598)) ; Statement: $r10[61] = 12598 
(declare-const var3353!63 (Array Int Int))
(assert (not (= var3353!63 null-__Array__Int__Int__)))
(assert (= (select var3353!63 62) 12854)) ; Statement: $r10[62] = 12854 
(declare-const var3353!64 (Array Int Int))
(assert (not (= var3353!64 null-__Array__Int__Int__)))
(assert (= (select var3353!64 63) 13110)) ; Statement: $r10[63] = 13110 
(declare-const var3353!65 (Array Int Int))
(assert (not (= var3353!65 null-__Array__Int__Int__)))
(assert (= (select var3353!65 64) 13366)) ; Statement: $r10[64] = 13366 
(declare-const var3353!66 (Array Int Int))
(assert (not (= var3353!66 null-__Array__Int__Int__)))
(assert (= (select var3353!66 65) 13622)) ; Statement: $r10[65] = 13622 
(declare-const var3353!67 (Array Int Int))
(assert (not (= var3353!67 null-__Array__Int__Int__)))
(assert (= (select var3353!67 66) 13878)) ; Statement: $r10[66] = 13878 
(declare-const var3353!68 (Array Int Int))
(assert (not (= var3353!68 null-__Array__Int__Int__)))
(assert (= (select var3353!68 67) 14134)) ; Statement: $r10[67] = 14134 
(declare-const var3353!69 (Array Int Int))
(assert (not (= var3353!69 null-__Array__Int__Int__)))
(assert (= (select var3353!69 68) 14390)) ; Statement: $r10[68] = 14390 
(declare-const var3353!70 (Array Int Int))
(assert (not (= var3353!70 null-__Array__Int__Int__)))
(assert (= (select var3353!70 69) 14646)) ; Statement: $r10[69] = 14646 
(declare-const var3353!71 (Array Int Int))
(assert (not (= var3353!71 null-__Array__Int__Int__)))
(assert (= (select var3353!71 70) 12343)) ; Statement: $r10[70] = 12343 
(declare-const var3353!72 (Array Int Int))
(assert (not (= var3353!72 null-__Array__Int__Int__)))
(assert (= (select var3353!72 71) 12599)) ; Statement: $r10[71] = 12599 
(declare-const var3353!73 (Array Int Int))
(assert (not (= var3353!73 null-__Array__Int__Int__)))
(assert (= (select var3353!73 72) 12855)) ; Statement: $r10[72] = 12855 
(declare-const var3353!74 (Array Int Int))
(assert (not (= var3353!74 null-__Array__Int__Int__)))
(assert (= (select var3353!74 73) 13111)) ; Statement: $r10[73] = 13111 
(declare-const var3353!75 (Array Int Int))
(assert (not (= var3353!75 null-__Array__Int__Int__)))
(assert (= (select var3353!75 74) 13367)) ; Statement: $r10[74] = 13367 
(declare-const var3353!76 (Array Int Int))
(assert (not (= var3353!76 null-__Array__Int__Int__)))
(assert (= (select var3353!76 75) 13623)) ; Statement: $r10[75] = 13623 
(declare-const var3353!77 (Array Int Int))
(assert (not (= var3353!77 null-__Array__Int__Int__)))
(assert (= (select var3353!77 76) 13879)) ; Statement: $r10[76] = 13879 
(declare-const var3353!78 (Array Int Int))
(assert (not (= var3353!78 null-__Array__Int__Int__)))
(assert (= (select var3353!78 77) 14135)) ; Statement: $r10[77] = 14135 
(declare-const var3353!79 (Array Int Int))
(assert (not (= var3353!79 null-__Array__Int__Int__)))
(assert (= (select var3353!79 78) 14391)) ; Statement: $r10[78] = 14391 
(declare-const var3353!80 (Array Int Int))
(assert (not (= var3353!80 null-__Array__Int__Int__)))
(assert (= (select var3353!80 79) 14647)) ; Statement: $r10[79] = 14647 
(declare-const var3353!81 (Array Int Int))
(assert (not (= var3353!81 null-__Array__Int__Int__)))
(assert (= (select var3353!81 80) 12344)) ; Statement: $r10[80] = 12344 
(declare-const var3353!82 (Array Int Int))
(assert (not (= var3353!82 null-__Array__Int__Int__)))
(assert (= (select var3353!82 81) 12600)) ; Statement: $r10[81] = 12600 
(declare-const var3353!83 (Array Int Int))
(assert (not (= var3353!83 null-__Array__Int__Int__)))
(assert (= (select var3353!83 82) 12856)) ; Statement: $r10[82] = 12856 
(declare-const var3353!84 (Array Int Int))
(assert (not (= var3353!84 null-__Array__Int__Int__)))
(assert (= (select var3353!84 83) 13112)) ; Statement: $r10[83] = 13112 
(declare-const var3353!85 (Array Int Int))
(assert (not (= var3353!85 null-__Array__Int__Int__)))
(assert (= (select var3353!85 84) 13368)) ; Statement: $r10[84] = 13368 
(declare-const var3353!86 (Array Int Int))
(assert (not (= var3353!86 null-__Array__Int__Int__)))
(assert (= (select var3353!86 85) 13624)) ; Statement: $r10[85] = 13624 
(declare-const var3353!87 (Array Int Int))
(assert (not (= var3353!87 null-__Array__Int__Int__)))
(assert (= (select var3353!87 86) 13880)) ; Statement: $r10[86] = 13880 
(declare-const var3353!88 (Array Int Int))
(assert (not (= var3353!88 null-__Array__Int__Int__)))
(assert (= (select var3353!88 87) 14136)) ; Statement: $r10[87] = 14136 
(declare-const var3353!89 (Array Int Int))
(assert (not (= var3353!89 null-__Array__Int__Int__)))
(assert (= (select var3353!89 88) 14392)) ; Statement: $r10[88] = 14392 
(declare-const var3353!90 (Array Int Int))
(assert (not (= var3353!90 null-__Array__Int__Int__)))
(assert (= (select var3353!90 89) 14648)) ; Statement: $r10[89] = 14648 
(declare-const var3353!91 (Array Int Int))
(assert (not (= var3353!91 null-__Array__Int__Int__)))
(assert (= (select var3353!91 90) 12345)) ; Statement: $r10[90] = 12345 
(declare-const var3353!92 (Array Int Int))
(assert (not (= var3353!92 null-__Array__Int__Int__)))
(assert (= (select var3353!92 91) 12601)) ; Statement: $r10[91] = 12601 
(declare-const var3353!93 (Array Int Int))
(assert (not (= var3353!93 null-__Array__Int__Int__)))
(assert (= (select var3353!93 92) 12857)) ; Statement: $r10[92] = 12857 
(declare-const var3353!94 (Array Int Int))
(assert (not (= var3353!94 null-__Array__Int__Int__)))
(assert (= (select var3353!94 93) 13113)) ; Statement: $r10[93] = 13113 
(declare-const var3353!95 (Array Int Int))
(assert (not (= var3353!95 null-__Array__Int__Int__)))
(assert (= (select var3353!95 94) 13369)) ; Statement: $r10[94] = 13369 
(declare-const var3353!96 (Array Int Int))
(assert (not (= var3353!96 null-__Array__Int__Int__)))
(assert (= (select var3353!96 95) 13625)) ; Statement: $r10[95] = 13625 
(declare-const var3353!97 (Array Int Int))
(assert (not (= var3353!97 null-__Array__Int__Int__)))
(assert (= (select var3353!97 96) 13881)) ; Statement: $r10[96] = 13881 
(declare-const var3353!98 (Array Int Int))
(assert (not (= var3353!98 null-__Array__Int__Int__)))
(assert (= (select var3353!98 97) 14137)) ; Statement: $r10[97] = 14137 
(declare-const var3353!99 (Array Int Int))
(assert (not (= var3353!99 null-__Array__Int__Int__)))
(assert (= (select var3353!99 98) 14393)) ; Statement: $r10[98] = 14393 
(declare-const var3353!100 (Array Int Int))
(assert (not (= var3353!100 null-__Array__Int__Int__)))
(assert (= (select var3353!100 99) 14649)) ; Statement: $r10[99] = 14649 
(define-const var1730 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (int)[100] 
(declare-const var1730!1 (Array Int Int))
(assert (not (= var1730!1 null-__Array__Int__Int__)))
(assert (= (select var1730!1 0) 3145776)) ; Statement: $r11[0] = 3145776 
(declare-const var1730!2 (Array Int Int))
(assert (not (= var1730!2 null-__Array__Int__Int__)))
(assert (= (select var1730!2 1) 3211312)) ; Statement: $r11[1] = 3211312 
(declare-const var1730!3 (Array Int Int))
(assert (not (= var1730!3 null-__Array__Int__Int__)))
(assert (= (select var1730!3 2) 3276848)) ; Statement: $r11[2] = 3276848 
(declare-const var1730!4 (Array Int Int))
(assert (not (= var1730!4 null-__Array__Int__Int__)))
(assert (= (select var1730!4 3) 3342384)) ; Statement: $r11[3] = 3342384 
(declare-const var1730!5 (Array Int Int))
(assert (not (= var1730!5 null-__Array__Int__Int__)))
(assert (= (select var1730!5 4) 3407920)) ; Statement: $r11[4] = 3407920 
(declare-const var1730!6 (Array Int Int))
(assert (not (= var1730!6 null-__Array__Int__Int__)))
(assert (= (select var1730!6 5) 3473456)) ; Statement: $r11[5] = 3473456 
(declare-const var1730!7 (Array Int Int))
(assert (not (= var1730!7 null-__Array__Int__Int__)))
(assert (= (select var1730!7 6) 3538992)) ; Statement: $r11[6] = 3538992 
(declare-const var1730!8 (Array Int Int))
(assert (not (= var1730!8 null-__Array__Int__Int__)))
(assert (= (select var1730!8 7) 3604528)) ; Statement: $r11[7] = 3604528 
(declare-const var1730!9 (Array Int Int))
(assert (not (= var1730!9 null-__Array__Int__Int__)))
(assert (= (select var1730!9 8) 3670064)) ; Statement: $r11[8] = 3670064 
(declare-const var1730!10 (Array Int Int))
(assert (not (= var1730!10 null-__Array__Int__Int__)))
(assert (= (select var1730!10 9) 3735600)) ; Statement: $r11[9] = 3735600 
(declare-const var1730!11 (Array Int Int))
(assert (not (= var1730!11 null-__Array__Int__Int__)))
(assert (= (select var1730!11 10) 3145777)) ; Statement: $r11[10] = 3145777 
(declare-const var1730!12 (Array Int Int))
(assert (not (= var1730!12 null-__Array__Int__Int__)))
(assert (= (select var1730!12 11) 3211313)) ; Statement: $r11[11] = 3211313 
(declare-const var1730!13 (Array Int Int))
(assert (not (= var1730!13 null-__Array__Int__Int__)))
(assert (= (select var1730!13 12) 3276849)) ; Statement: $r11[12] = 3276849 
(declare-const var1730!14 (Array Int Int))
(assert (not (= var1730!14 null-__Array__Int__Int__)))
(assert (= (select var1730!14 13) 3342385)) ; Statement: $r11[13] = 3342385 
(declare-const var1730!15 (Array Int Int))
(assert (not (= var1730!15 null-__Array__Int__Int__)))
(assert (= (select var1730!15 14) 3407921)) ; Statement: $r11[14] = 3407921 
(declare-const var1730!16 (Array Int Int))
(assert (not (= var1730!16 null-__Array__Int__Int__)))
(assert (= (select var1730!16 15) 3473457)) ; Statement: $r11[15] = 3473457 
(declare-const var1730!17 (Array Int Int))
(assert (not (= var1730!17 null-__Array__Int__Int__)))
(assert (= (select var1730!17 16) 3538993)) ; Statement: $r11[16] = 3538993 
(declare-const var1730!18 (Array Int Int))
(assert (not (= var1730!18 null-__Array__Int__Int__)))
(assert (= (select var1730!18 17) 3604529)) ; Statement: $r11[17] = 3604529 
(declare-const var1730!19 (Array Int Int))
(assert (not (= var1730!19 null-__Array__Int__Int__)))
(assert (= (select var1730!19 18) 3670065)) ; Statement: $r11[18] = 3670065 
(declare-const var1730!20 (Array Int Int))
(assert (not (= var1730!20 null-__Array__Int__Int__)))
(assert (= (select var1730!20 19) 3735601)) ; Statement: $r11[19] = 3735601 
(declare-const var1730!21 (Array Int Int))
(assert (not (= var1730!21 null-__Array__Int__Int__)))
(assert (= (select var1730!21 20) 3145778)) ; Statement: $r11[20] = 3145778 
(declare-const var1730!22 (Array Int Int))
(assert (not (= var1730!22 null-__Array__Int__Int__)))
(assert (= (select var1730!22 21) 3211314)) ; Statement: $r11[21] = 3211314 
(declare-const var1730!23 (Array Int Int))
(assert (not (= var1730!23 null-__Array__Int__Int__)))
(assert (= (select var1730!23 22) 3276850)) ; Statement: $r11[22] = 3276850 
(declare-const var1730!24 (Array Int Int))
(assert (not (= var1730!24 null-__Array__Int__Int__)))
(assert (= (select var1730!24 23) 3342386)) ; Statement: $r11[23] = 3342386 
(declare-const var1730!25 (Array Int Int))
(assert (not (= var1730!25 null-__Array__Int__Int__)))
(assert (= (select var1730!25 24) 3407922)) ; Statement: $r11[24] = 3407922 
(declare-const var1730!26 (Array Int Int))
(assert (not (= var1730!26 null-__Array__Int__Int__)))
(assert (= (select var1730!26 25) 3473458)) ; Statement: $r11[25] = 3473458 
(declare-const var1730!27 (Array Int Int))
(assert (not (= var1730!27 null-__Array__Int__Int__)))
(assert (= (select var1730!27 26) 3538994)) ; Statement: $r11[26] = 3538994 
(declare-const var1730!28 (Array Int Int))
(assert (not (= var1730!28 null-__Array__Int__Int__)))
(assert (= (select var1730!28 27) 3604530)) ; Statement: $r11[27] = 3604530 
(declare-const var1730!29 (Array Int Int))
(assert (not (= var1730!29 null-__Array__Int__Int__)))
(assert (= (select var1730!29 28) 3670066)) ; Statement: $r11[28] = 3670066 
(declare-const var1730!30 (Array Int Int))
(assert (not (= var1730!30 null-__Array__Int__Int__)))
(assert (= (select var1730!30 29) 3735602)) ; Statement: $r11[29] = 3735602 
(declare-const var1730!31 (Array Int Int))
(assert (not (= var1730!31 null-__Array__Int__Int__)))
(assert (= (select var1730!31 30) 3145779)) ; Statement: $r11[30] = 3145779 
(declare-const var1730!32 (Array Int Int))
(assert (not (= var1730!32 null-__Array__Int__Int__)))
(assert (= (select var1730!32 31) 3211315)) ; Statement: $r11[31] = 3211315 
(declare-const var1730!33 (Array Int Int))
(assert (not (= var1730!33 null-__Array__Int__Int__)))
(assert (= (select var1730!33 32) 3276851)) ; Statement: $r11[32] = 3276851 
(declare-const var1730!34 (Array Int Int))
(assert (not (= var1730!34 null-__Array__Int__Int__)))
(assert (= (select var1730!34 33) 3342387)) ; Statement: $r11[33] = 3342387 
(declare-const var1730!35 (Array Int Int))
(assert (not (= var1730!35 null-__Array__Int__Int__)))
(assert (= (select var1730!35 34) 3407923)) ; Statement: $r11[34] = 3407923 
(declare-const var1730!36 (Array Int Int))
(assert (not (= var1730!36 null-__Array__Int__Int__)))
(assert (= (select var1730!36 35) 3473459)) ; Statement: $r11[35] = 3473459 
(declare-const var1730!37 (Array Int Int))
(assert (not (= var1730!37 null-__Array__Int__Int__)))
(assert (= (select var1730!37 36) 3538995)) ; Statement: $r11[36] = 3538995 
(declare-const var1730!38 (Array Int Int))
(assert (not (= var1730!38 null-__Array__Int__Int__)))
(assert (= (select var1730!38 37) 3604531)) ; Statement: $r11[37] = 3604531 
(declare-const var1730!39 (Array Int Int))
(assert (not (= var1730!39 null-__Array__Int__Int__)))
(assert (= (select var1730!39 38) 3670067)) ; Statement: $r11[38] = 3670067 
(declare-const var1730!40 (Array Int Int))
(assert (not (= var1730!40 null-__Array__Int__Int__)))
(assert (= (select var1730!40 39) 3735603)) ; Statement: $r11[39] = 3735603 
(declare-const var1730!41 (Array Int Int))
(assert (not (= var1730!41 null-__Array__Int__Int__)))
(assert (= (select var1730!41 40) 3145780)) ; Statement: $r11[40] = 3145780 
(declare-const var1730!42 (Array Int Int))
(assert (not (= var1730!42 null-__Array__Int__Int__)))
(assert (= (select var1730!42 41) 3211316)) ; Statement: $r11[41] = 3211316 
(declare-const var1730!43 (Array Int Int))
(assert (not (= var1730!43 null-__Array__Int__Int__)))
(assert (= (select var1730!43 42) 3276852)) ; Statement: $r11[42] = 3276852 
(declare-const var1730!44 (Array Int Int))
(assert (not (= var1730!44 null-__Array__Int__Int__)))
(assert (= (select var1730!44 43) 3342388)) ; Statement: $r11[43] = 3342388 
(declare-const var1730!45 (Array Int Int))
(assert (not (= var1730!45 null-__Array__Int__Int__)))
(assert (= (select var1730!45 44) 3407924)) ; Statement: $r11[44] = 3407924 
(declare-const var1730!46 (Array Int Int))
(assert (not (= var1730!46 null-__Array__Int__Int__)))
(assert (= (select var1730!46 45) 3473460)) ; Statement: $r11[45] = 3473460 
(declare-const var1730!47 (Array Int Int))
(assert (not (= var1730!47 null-__Array__Int__Int__)))
(assert (= (select var1730!47 46) 3538996)) ; Statement: $r11[46] = 3538996 
(declare-const var1730!48 (Array Int Int))
(assert (not (= var1730!48 null-__Array__Int__Int__)))
(assert (= (select var1730!48 47) 3604532)) ; Statement: $r11[47] = 3604532 
(declare-const var1730!49 (Array Int Int))
(assert (not (= var1730!49 null-__Array__Int__Int__)))
(assert (= (select var1730!49 48) 3670068)) ; Statement: $r11[48] = 3670068 
(declare-const var1730!50 (Array Int Int))
(assert (not (= var1730!50 null-__Array__Int__Int__)))
(assert (= (select var1730!50 49) 3735604)) ; Statement: $r11[49] = 3735604 
(declare-const var1730!51 (Array Int Int))
(assert (not (= var1730!51 null-__Array__Int__Int__)))
(assert (= (select var1730!51 50) 3145781)) ; Statement: $r11[50] = 3145781 
(declare-const var1730!52 (Array Int Int))
(assert (not (= var1730!52 null-__Array__Int__Int__)))
(assert (= (select var1730!52 51) 3211317)) ; Statement: $r11[51] = 3211317 
(declare-const var1730!53 (Array Int Int))
(assert (not (= var1730!53 null-__Array__Int__Int__)))
(assert (= (select var1730!53 52) 3276853)) ; Statement: $r11[52] = 3276853 
(declare-const var1730!54 (Array Int Int))
(assert (not (= var1730!54 null-__Array__Int__Int__)))
(assert (= (select var1730!54 53) 3342389)) ; Statement: $r11[53] = 3342389 
(declare-const var1730!55 (Array Int Int))
(assert (not (= var1730!55 null-__Array__Int__Int__)))
(assert (= (select var1730!55 54) 3407925)) ; Statement: $r11[54] = 3407925 
(declare-const var1730!56 (Array Int Int))
(assert (not (= var1730!56 null-__Array__Int__Int__)))
(assert (= (select var1730!56 55) 3473461)) ; Statement: $r11[55] = 3473461 
(declare-const var1730!57 (Array Int Int))
(assert (not (= var1730!57 null-__Array__Int__Int__)))
(assert (= (select var1730!57 56) 3538997)) ; Statement: $r11[56] = 3538997 
(declare-const var1730!58 (Array Int Int))
(assert (not (= var1730!58 null-__Array__Int__Int__)))
(assert (= (select var1730!58 57) 3604533)) ; Statement: $r11[57] = 3604533 
(declare-const var1730!59 (Array Int Int))
(assert (not (= var1730!59 null-__Array__Int__Int__)))
(assert (= (select var1730!59 58) 3670069)) ; Statement: $r11[58] = 3670069 
(declare-const var1730!60 (Array Int Int))
(assert (not (= var1730!60 null-__Array__Int__Int__)))
(assert (= (select var1730!60 59) 3735605)) ; Statement: $r11[59] = 3735605 
(declare-const var1730!61 (Array Int Int))
(assert (not (= var1730!61 null-__Array__Int__Int__)))
(assert (= (select var1730!61 60) 3145782)) ; Statement: $r11[60] = 3145782 
(declare-const var1730!62 (Array Int Int))
(assert (not (= var1730!62 null-__Array__Int__Int__)))
(assert (= (select var1730!62 61) 3211318)) ; Statement: $r11[61] = 3211318 
(declare-const var1730!63 (Array Int Int))
(assert (not (= var1730!63 null-__Array__Int__Int__)))
(assert (= (select var1730!63 62) 3276854)) ; Statement: $r11[62] = 3276854 
(declare-const var1730!64 (Array Int Int))
(assert (not (= var1730!64 null-__Array__Int__Int__)))
(assert (= (select var1730!64 63) 3342390)) ; Statement: $r11[63] = 3342390 
(declare-const var1730!65 (Array Int Int))
(assert (not (= var1730!65 null-__Array__Int__Int__)))
(assert (= (select var1730!65 64) 3407926)) ; Statement: $r11[64] = 3407926 
(declare-const var1730!66 (Array Int Int))
(assert (not (= var1730!66 null-__Array__Int__Int__)))
(assert (= (select var1730!66 65) 3473462)) ; Statement: $r11[65] = 3473462 
(declare-const var1730!67 (Array Int Int))
(assert (not (= var1730!67 null-__Array__Int__Int__)))
(assert (= (select var1730!67 66) 3538998)) ; Statement: $r11[66] = 3538998 
(declare-const var1730!68 (Array Int Int))
(assert (not (= var1730!68 null-__Array__Int__Int__)))
(assert (= (select var1730!68 67) 3604534)) ; Statement: $r11[67] = 3604534 
(declare-const var1730!69 (Array Int Int))
(assert (not (= var1730!69 null-__Array__Int__Int__)))
(assert (= (select var1730!69 68) 3670070)) ; Statement: $r11[68] = 3670070 
(declare-const var1730!70 (Array Int Int))
(assert (not (= var1730!70 null-__Array__Int__Int__)))
(assert (= (select var1730!70 69) 3735606)) ; Statement: $r11[69] = 3735606 
(declare-const var1730!71 (Array Int Int))
(assert (not (= var1730!71 null-__Array__Int__Int__)))
(assert (= (select var1730!71 70) 3145783)) ; Statement: $r11[70] = 3145783 
(declare-const var1730!72 (Array Int Int))
(assert (not (= var1730!72 null-__Array__Int__Int__)))
(assert (= (select var1730!72 71) 3211319)) ; Statement: $r11[71] = 3211319 
(declare-const var1730!73 (Array Int Int))
(assert (not (= var1730!73 null-__Array__Int__Int__)))
(assert (= (select var1730!73 72) 3276855)) ; Statement: $r11[72] = 3276855 
(declare-const var1730!74 (Array Int Int))
(assert (not (= var1730!74 null-__Array__Int__Int__)))
(assert (= (select var1730!74 73) 3342391)) ; Statement: $r11[73] = 3342391 
(declare-const var1730!75 (Array Int Int))
(assert (not (= var1730!75 null-__Array__Int__Int__)))
(assert (= (select var1730!75 74) 3407927)) ; Statement: $r11[74] = 3407927 
(declare-const var1730!76 (Array Int Int))
(assert (not (= var1730!76 null-__Array__Int__Int__)))
(assert (= (select var1730!76 75) 3473463)) ; Statement: $r11[75] = 3473463 
(declare-const var1730!77 (Array Int Int))
(assert (not (= var1730!77 null-__Array__Int__Int__)))
(assert (= (select var1730!77 76) 3538999)) ; Statement: $r11[76] = 3538999 
(declare-const var1730!78 (Array Int Int))
(assert (not (= var1730!78 null-__Array__Int__Int__)))
(assert (= (select var1730!78 77) 3604535)) ; Statement: $r11[77] = 3604535 
(declare-const var1730!79 (Array Int Int))
(assert (not (= var1730!79 null-__Array__Int__Int__)))
(assert (= (select var1730!79 78) 3670071)) ; Statement: $r11[78] = 3670071 
(declare-const var1730!80 (Array Int Int))
(assert (not (= var1730!80 null-__Array__Int__Int__)))
(assert (= (select var1730!80 79) 3735607)) ; Statement: $r11[79] = 3735607 
(declare-const var1730!81 (Array Int Int))
(assert (not (= var1730!81 null-__Array__Int__Int__)))
(assert (= (select var1730!81 80) 3145784)) ; Statement: $r11[80] = 3145784 
(declare-const var1730!82 (Array Int Int))
(assert (not (= var1730!82 null-__Array__Int__Int__)))
(assert (= (select var1730!82 81) 3211320)) ; Statement: $r11[81] = 3211320 
(declare-const var1730!83 (Array Int Int))
(assert (not (= var1730!83 null-__Array__Int__Int__)))
(assert (= (select var1730!83 82) 3276856)) ; Statement: $r11[82] = 3276856 
(declare-const var1730!84 (Array Int Int))
(assert (not (= var1730!84 null-__Array__Int__Int__)))
(assert (= (select var1730!84 83) 3342392)) ; Statement: $r11[83] = 3342392 
(declare-const var1730!85 (Array Int Int))
(assert (not (= var1730!85 null-__Array__Int__Int__)))
(assert (= (select var1730!85 84) 3407928)) ; Statement: $r11[84] = 3407928 
(declare-const var1730!86 (Array Int Int))
(assert (not (= var1730!86 null-__Array__Int__Int__)))
(assert (= (select var1730!86 85) 3473464)) ; Statement: $r11[85] = 3473464 
(declare-const var1730!87 (Array Int Int))
(assert (not (= var1730!87 null-__Array__Int__Int__)))
(assert (= (select var1730!87 86) 3539000)) ; Statement: $r11[86] = 3539000 
(declare-const var1730!88 (Array Int Int))
(assert (not (= var1730!88 null-__Array__Int__Int__)))
(assert (= (select var1730!88 87) 3604536)) ; Statement: $r11[87] = 3604536 
(declare-const var1730!89 (Array Int Int))
(assert (not (= var1730!89 null-__Array__Int__Int__)))
(assert (= (select var1730!89 88) 3670072)) ; Statement: $r11[88] = 3670072 
(declare-const var1730!90 (Array Int Int))
(assert (not (= var1730!90 null-__Array__Int__Int__)))
(assert (= (select var1730!90 89) 3735608)) ; Statement: $r11[89] = 3735608 
(declare-const var1730!91 (Array Int Int))
(assert (not (= var1730!91 null-__Array__Int__Int__)))
(assert (= (select var1730!91 90) 3145785)) ; Statement: $r11[90] = 3145785 
(declare-const var1730!92 (Array Int Int))
(assert (not (= var1730!92 null-__Array__Int__Int__)))
(assert (= (select var1730!92 91) 3211321)) ; Statement: $r11[91] = 3211321 
(declare-const var1730!93 (Array Int Int))
(assert (not (= var1730!93 null-__Array__Int__Int__)))
(assert (= (select var1730!93 92) 3276857)) ; Statement: $r11[92] = 3276857 
(declare-const var1730!94 (Array Int Int))
(assert (not (= var1730!94 null-__Array__Int__Int__)))
(assert (= (select var1730!94 93) 3342393)) ; Statement: $r11[93] = 3342393 
(declare-const var1730!95 (Array Int Int))
(assert (not (= var1730!95 null-__Array__Int__Int__)))
(assert (= (select var1730!95 94) 3407929)) ; Statement: $r11[94] = 3407929 
(declare-const var1730!96 (Array Int Int))
(assert (not (= var1730!96 null-__Array__Int__Int__)))
(assert (= (select var1730!96 95) 3473465)) ; Statement: $r11[95] = 3473465 
(declare-const var1730!97 (Array Int Int))
(assert (not (= var1730!97 null-__Array__Int__Int__)))
(assert (= (select var1730!97 96) 3539001)) ; Statement: $r11[96] = 3539001 
(declare-const var1730!98 (Array Int Int))
(assert (not (= var1730!98 null-__Array__Int__Int__)))
(assert (= (select var1730!98 97) 3604537)) ; Statement: $r11[97] = 3604537 
(declare-const var1730!99 (Array Int Int))
(assert (not (= var1730!99 null-__Array__Int__Int__)))
(assert (= (select var1730!99 98) 3670073)) ; Statement: $r11[98] = 3670073 
(declare-const var1730!100 (Array Int Int))
(assert (not (= var1730!100 null-__Array__Int__Int__)))
(assert (= (select var1730!100 99) 3735609)) ; Statement: $r11[99] = 3735609 
(define-const var3354 Bool var1733-BIG_ENDIAN) ; Statement: $z7 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z7 == 0 goto <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10 
(assert (= (ite var3354 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3441 (Array Int Int) var3353!100) ; Statement: <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10 
(define-const var2567 (Array Int Int) var1730!100) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16> = $r11 
(define-const var269 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= 1000 goto return 
(assert (>= var269 1000)) ; Cond: i19 >= 1000 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), getBytes/1068683673=([java.lang.String], byte[]), toCharArray/415275702=([java.lang.String], char[])}
; {var1733=com.alibaba.fastjson2.util.JDKUtils, var1025=$z0, var2413=$i10, var1917=<com.alibaba.fastjson2.util.IOUtils: int NULL_32>, var1100=$z1, var1048=$l11, var2248=<com.alibaba.fastjson2.util.IOUtils: long NULL_64>, var414=$z2, var2819=$i12, var2713=<com.alibaba.fastjson2.util.IOUtils: int TRUE>, var353=$z3, var2909=$l13, var3366=<com.alibaba.fastjson2.util.IOUtils: long TRUE_64>, var2021=$z4, var797=$i14, var2077=<com.alibaba.fastjson2.util.IOUtils: int ALSE>, var2861=$z5, var1757=$l15, var279=<com.alibaba.fastjson2.util.IOUtils: long ALSE_64>, var1524=$z6, var2617=$l16, var2701=<com.alibaba.fastjson2.util.IOUtils: long DOT_X0>, var306=$r0, var504=<com.alibaba.fastjson2.util.IOUtils: int[] sizeTable>, var825=$r1, var3282=<com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32>, var762=$r2, var3941=<com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64>, var918=$r3, var379=$r4, var2372=<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES>, var2038=$r5, var513=$r6, var2082=<com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS>, var792=$r7, var2836=$r8, var287=<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG>, var3721=$r9, var2225=<com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN>, var3353=$r10, var1730=$r11, var3354=$z7, var3441=<com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS>, var2567=<com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16>, var269=i19}
; {com.alibaba.fastjson2.util.JDKUtils=var1733, $z0=var1025, $i10=var2413, <com.alibaba.fastjson2.util.IOUtils: int NULL_32>=var1917, $z1=var1100, $l11=var1048, <com.alibaba.fastjson2.util.IOUtils: long NULL_64>=var2248, $z2=var414, $i12=var2819, <com.alibaba.fastjson2.util.IOUtils: int TRUE>=var2713, $z3=var353, $l13=var2909, <com.alibaba.fastjson2.util.IOUtils: long TRUE_64>=var3366, $z4=var2021, $i14=var797, <com.alibaba.fastjson2.util.IOUtils: int ALSE>=var2077, $z5=var2861, $l15=var1757, <com.alibaba.fastjson2.util.IOUtils: long ALSE_64>=var279, $z6=var1524, $l16=var2617, <com.alibaba.fastjson2.util.IOUtils: long DOT_X0>=var2701, $r0=var306, <com.alibaba.fastjson2.util.IOUtils: int[] sizeTable>=var504, $r1=var825, <com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32>=var3282, $r2=var762, <com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64>=var3941, $r3=var918, $r4=var379, <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES>=var2372, $r5=var2038, $r6=var513, <com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS>=var2082, $r7=var792, $r8=var2836, <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG>=var287, $r9=var3721, <com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN>=var2225, $r10=var3353, $r11=var1730, $z7=var3354, <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS>=var3441, <com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16>=var2567, i19=var269}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 2,"<java.lang.String: char[] toCharArray()>": 1}
;stmts $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z0 == 0 goto $i10 = 1819047278;	$i10 = 1819047278;	<com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10;	$z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z1 == 0 goto $l11 = 30399761348886638L;	$l11 = 30399761348886638L;	<com.alibaba.fastjson2.util.IOUtils: long NULL_64> = $l11;	$z2 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z2 == 0 goto $i12 = 1702195828;	$i12 = 1953658213;	goto [?= <com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12];	<com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12;	$z3 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z3 == 0 goto $l13 = 28429475166421108L;	$l13 = 28429475166421108L;	<com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13;	$z4 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z4 == 0 goto $i14 = 1702063201;	$i14 = 1702063201;	<com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14;	$z5 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z5 == 0 goto $l15 = 28429466576093281L;	$l15 = 27303536604938341L;	goto [?= <com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15];	<com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15;	$z6 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z6 == 0 goto $l16 = 46L;	$l16 = 11776L;	goto [?= <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16];	<com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16;	$r0 = newarray (int)[10];	$r0[0] = 9;	$r0[1] = 99;	$r0[2] = 999;	$r0[3] = 9999;	$r0[4] = 99999;	$r0[5] = 999999;	$r0[6] = 9999999;	$r0[7] = 99999999;	$r0[8] = 999999999;	$r0[9] = 2147483647;	<com.alibaba.fastjson2.util.IOUtils: int[] sizeTable> = $r0;	$r1 = newarray (int)[1000];	<com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32> = $r1;	$r2 = newarray (long)[1000];	<com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64> = $r2;	$r3 = "-2147483648";	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES> = $r4;	$r5 = "-2147483648";	$r6 = virtualinvoke $r5.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS> = $r6;	$r7 = "-9223372036854775808";	$r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG> = $r8;	$r9 = newarray (long)[18];	$r9[0] = 10L;	$r9[1] = 100L;	$r9[2] = 1000L;	$r9[3] = 10000L;	$r9[4] = 100000L;	$r9[5] = 1000000L;	$r9[6] = 10000000L;	$r9[7] = 100000000L;	$r9[8] = 1000000000L;	$r9[9] = 10000000000L;	$r9[10] = 100000000000L;	$r9[11] = 1000000000000L;	$r9[12] = 10000000000000L;	$r9[13] = 100000000000000L;	$r9[14] = 1000000000000000L;	$r9[15] = 10000000000000000L;	$r9[16] = 100000000000000000L;	$r9[17] = 1000000000000000000L;	<com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN> = $r9;	$r10 = newarray (short)[100];	$r10[0] = 12336;	$r10[1] = 12592;	$r10[2] = 12848;	$r10[3] = 13104;	$r10[4] = 13360;	$r10[5] = 13616;	$r10[6] = 13872;	$r10[7] = 14128;	$r10[8] = 14384;	$r10[9] = 14640;	$r10[10] = 12337;	$r10[11] = 12593;	$r10[12] = 12849;	$r10[13] = 13105;	$r10[14] = 13361;	$r10[15] = 13617;	$r10[16] = 13873;	$r10[17] = 14129;	$r10[18] = 14385;	$r10[19] = 14641;	$r10[20] = 12338;	$r10[21] = 12594;	$r10[22] = 12850;	$r10[23] = 13106;	$r10[24] = 13362;	$r10[25] = 13618;	$r10[26] = 13874;	$r10[27] = 14130;	$r10[28] = 14386;	$r10[29] = 14642;	$r10[30] = 12339;	$r10[31] = 12595;	$r10[32] = 12851;	$r10[33] = 13107;	$r10[34] = 13363;	$r10[35] = 13619;	$r10[36] = 13875;	$r10[37] = 14131;	$r10[38] = 14387;	$r10[39] = 14643;	$r10[40] = 12340;	$r10[41] = 12596;	$r10[42] = 12852;	$r10[43] = 13108;	$r10[44] = 13364;	$r10[45] = 13620;	$r10[46] = 13876;	$r10[47] = 14132;	$r10[48] = 14388;	$r10[49] = 14644;	$r10[50] = 12341;	$r10[51] = 12597;	$r10[52] = 12853;	$r10[53] = 13109;	$r10[54] = 13365;	$r10[55] = 13621;	$r10[56] = 13877;	$r10[57] = 14133;	$r10[58] = 14389;	$r10[59] = 14645;	$r10[60] = 12342;	$r10[61] = 12598;	$r10[62] = 12854;	$r10[63] = 13110;	$r10[64] = 13366;	$r10[65] = 13622;	$r10[66] = 13878;	$r10[67] = 14134;	$r10[68] = 14390;	$r10[69] = 14646;	$r10[70] = 12343;	$r10[71] = 12599;	$r10[72] = 12855;	$r10[73] = 13111;	$r10[74] = 13367;	$r10[75] = 13623;	$r10[76] = 13879;	$r10[77] = 14135;	$r10[78] = 14391;	$r10[79] = 14647;	$r10[80] = 12344;	$r10[81] = 12600;	$r10[82] = 12856;	$r10[83] = 13112;	$r10[84] = 13368;	$r10[85] = 13624;	$r10[86] = 13880;	$r10[87] = 14136;	$r10[88] = 14392;	$r10[89] = 14648;	$r10[90] = 12345;	$r10[91] = 12601;	$r10[92] = 12857;	$r10[93] = 13113;	$r10[94] = 13369;	$r10[95] = 13625;	$r10[96] = 13881;	$r10[97] = 14137;	$r10[98] = 14393;	$r10[99] = 14649;	$r11 = newarray (int)[100];	$r11[0] = 3145776;	$r11[1] = 3211312;	$r11[2] = 3276848;	$r11[3] = 3342384;	$r11[4] = 3407920;	$r11[5] = 3473456;	$r11[6] = 3538992;	$r11[7] = 3604528;	$r11[8] = 3670064;	$r11[9] = 3735600;	$r11[10] = 3145777;	$r11[11] = 3211313;	$r11[12] = 3276849;	$r11[13] = 3342385;	$r11[14] = 3407921;	$r11[15] = 3473457;	$r11[16] = 3538993;	$r11[17] = 3604529;	$r11[18] = 3670065;	$r11[19] = 3735601;	$r11[20] = 3145778;	$r11[21] = 3211314;	$r11[22] = 3276850;	$r11[23] = 3342386;	$r11[24] = 3407922;	$r11[25] = 3473458;	$r11[26] = 3538994;	$r11[27] = 3604530;	$r11[28] = 3670066;	$r11[29] = 3735602;	$r11[30] = 3145779;	$r11[31] = 3211315;	$r11[32] = 3276851;	$r11[33] = 3342387;	$r11[34] = 3407923;	$r11[35] = 3473459;	$r11[36] = 3538995;	$r11[37] = 3604531;	$r11[38] = 3670067;	$r11[39] = 3735603;	$r11[40] = 3145780;	$r11[41] = 3211316;	$r11[42] = 3276852;	$r11[43] = 3342388;	$r11[44] = 3407924;	$r11[45] = 3473460;	$r11[46] = 3538996;	$r11[47] = 3604532;	$r11[48] = 3670068;	$r11[49] = 3735604;	$r11[50] = 3145781;	$r11[51] = 3211317;	$r11[52] = 3276853;	$r11[53] = 3342389;	$r11[54] = 3407925;	$r11[55] = 3473461;	$r11[56] = 3538997;	$r11[57] = 3604533;	$r11[58] = 3670069;	$r11[59] = 3735605;	$r11[60] = 3145782;	$r11[61] = 3211318;	$r11[62] = 3276854;	$r11[63] = 3342390;	$r11[64] = 3407926;	$r11[65] = 3473462;	$r11[66] = 3538998;	$r11[67] = 3604534;	$r11[68] = 3670070;	$r11[69] = 3735606;	$r11[70] = 3145783;	$r11[71] = 3211319;	$r11[72] = 3276855;	$r11[73] = 3342391;	$r11[74] = 3407927;	$r11[75] = 3473463;	$r11[76] = 3538999;	$r11[77] = 3604535;	$r11[78] = 3670071;	$r11[79] = 3735607;	$r11[80] = 3145784;	$r11[81] = 3211320;	$r11[82] = 3276856;	$r11[83] = 3342392;	$r11[84] = 3407928;	$r11[85] = 3473464;	$r11[86] = 3539000;	$r11[87] = 3604536;	$r11[88] = 3670072;	$r11[89] = 3735608;	$r11[90] = 3145785;	$r11[91] = 3211321;	$r11[92] = 3276857;	$r11[93] = 3342393;	$r11[94] = 3407929;	$r11[95] = 3473465;	$r11[96] = 3539001;	$r11[97] = 3604537;	$r11[98] = 3670073;	$r11[99] = 3735609;	$z7 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z7 == 0 goto <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10;	<com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10;	<com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16> = $r11;	i19 = 0;	if i19 >= 1000 goto return;	return
;block_num 18