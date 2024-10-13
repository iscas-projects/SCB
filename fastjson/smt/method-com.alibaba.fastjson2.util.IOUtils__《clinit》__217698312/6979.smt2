(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const var1796-BIG_ENDIAN Bool)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var3996 Bool var1796-BIG_ENDIAN) ; Statement: $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z0 == 0 goto $i10 = 1819047278 
(assert (= (ite var3996 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1426 Int 1819047278) ; Statement: $i10 = 1819047278 
(assert true) ; Non Conditional
(define-const var2086 Int var1426) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10 
(define-const var1720 Bool var1796-BIG_ENDIAN) ; Statement: $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z1 == 0 goto $l11 = 30399761348886638L 
(assert (= (ite var1720 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2864 Int 30399761348886638) ; Statement: $l11 = 30399761348886638L 
(assert true) ; Non Conditional
(define-const var1763 Int var2864) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long NULL_64> = $l11 
(define-const var1257 Bool var1796-BIG_ENDIAN) ; Statement: $z2 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z2 == 0 goto $i12 = 1702195828 
(assert (= (ite var1257 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2684 Int 1702195828) ; Statement: $i12 = 1702195828 
(assert true) ; Non Conditional
(define-const var1552 Int var2684) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12 
(define-const var2901 Bool var1796-BIG_ENDIAN) ; Statement: $z3 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z3 == 0 goto $l13 = 28429475166421108L 
(assert (not (= (ite var2901 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var302 Int 32651586932375653) ; Statement: $l13 = 32651586932375653L 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13] 
(assert true) ; Non Conditional
(define-const var1385 Int var302) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13 
(define-const var196 Bool var1796-BIG_ENDIAN) ; Statement: $z4 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z4 == 0 goto $i14 = 1702063201 
(assert (not (= (ite var196 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var105 Int 1634497381) ; Statement: $i14 = 1634497381 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14] 
(assert true) ; Non Conditional
(define-const var2895 Int var105) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14 
(define-const var153 Bool var1796-BIG_ENDIAN) ; Statement: $z5 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z5 == 0 goto $l15 = 28429466576093281L 
(assert (= (ite var153 1 0) 0)) ; Cond: $z5 == 0 
(define-const var1088 Int 28429466576093281) ; Statement: $l15 = 28429466576093281L 
(assert true) ; Non Conditional
(define-const var3384 Int var1088) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15 
(define-const var309 Bool var1796-BIG_ENDIAN) ; Statement: $z6 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z6 == 0 goto $l16 = 46L 
(assert (not (= (ite var309 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var1901 Int 11776) ; Statement: $l16 = 11776L 
 ; Statement: goto [?= <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16] 
(assert true) ; Non Conditional
(define-const var366 Int var1901) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16 
(define-const var287 (Array Int Int) arr-Int-init) ; Statement: $r0 = newarray (int)[10] 
(declare-const var287!1 (Array Int Int))
(assert (not (= var287!1 null-__Array__Int__Int__)))
(assert (= (select var287!1 0) 9)) ; Statement: $r0[0] = 9 
(declare-const var287!2 (Array Int Int))
(assert (not (= var287!2 null-__Array__Int__Int__)))
(assert (= (select var287!2 1) 99)) ; Statement: $r0[1] = 99 
(declare-const var287!3 (Array Int Int))
(assert (not (= var287!3 null-__Array__Int__Int__)))
(assert (= (select var287!3 2) 999)) ; Statement: $r0[2] = 999 
(declare-const var287!4 (Array Int Int))
(assert (not (= var287!4 null-__Array__Int__Int__)))
(assert (= (select var287!4 3) 9999)) ; Statement: $r0[3] = 9999 
(declare-const var287!5 (Array Int Int))
(assert (not (= var287!5 null-__Array__Int__Int__)))
(assert (= (select var287!5 4) 99999)) ; Statement: $r0[4] = 99999 
(declare-const var287!6 (Array Int Int))
(assert (not (= var287!6 null-__Array__Int__Int__)))
(assert (= (select var287!6 5) 999999)) ; Statement: $r0[5] = 999999 
(declare-const var287!7 (Array Int Int))
(assert (not (= var287!7 null-__Array__Int__Int__)))
(assert (= (select var287!7 6) 9999999)) ; Statement: $r0[6] = 9999999 
(declare-const var287!8 (Array Int Int))
(assert (not (= var287!8 null-__Array__Int__Int__)))
(assert (= (select var287!8 7) 99999999)) ; Statement: $r0[7] = 99999999 
(declare-const var287!9 (Array Int Int))
(assert (not (= var287!9 null-__Array__Int__Int__)))
(assert (= (select var287!9 8) 999999999)) ; Statement: $r0[8] = 999999999 
(declare-const var287!10 (Array Int Int))
(assert (not (= var287!10 null-__Array__Int__Int__)))
(assert (= (select var287!10 9) 2147483647)) ; Statement: $r0[9] = 2147483647 
(define-const var3538 (Array Int Int) var287!10) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] sizeTable> = $r0 
(define-const var1554 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[1000] 
(define-const var77 (Array Int Int) var1554) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32> = $r1 
(define-const var2226 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (long)[1000] 
(define-const var3153 (Array Int Int) var2226) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64> = $r2 
(define-const var499 String "-2147483648") ; Statement: $r3 = "-2147483648" 
(assert true)
(define-const var2340 (Array Int Int) (getBytes/1068683673 var499)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes()>() 
(define-const var2906 (Array Int Int) var2340) ; Statement: <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES> = $r4 
(define-const var393 String "-2147483648") ; Statement: $r5 = "-2147483648" 
(assert true)
(define-const var3242 (Array Int Int) (toCharArray/415275702 var393)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: char[] toCharArray()>() 
(define-const var2651 (Array Int Int) var3242) ; Statement: <com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS> = $r6 
(define-const var3712 String "-9223372036854775808") ; Statement: $r7 = "-9223372036854775808" 
(assert true)
(define-const var343 (Array Int Int) (getBytes/1068683673 var3712)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>() 
(define-const var272 (Array Int Int) var343) ; Statement: <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG> = $r8 
(define-const var3800 (Array Int Int) arr-Int-init) ; Statement: $r9 = newarray (long)[18] 
(declare-const var3800!1 (Array Int Int))
(assert (not (= var3800!1 null-__Array__Int__Int__)))
(assert (= (select var3800!1 0) 10)) ; Statement: $r9[0] = 10L 
(declare-const var3800!2 (Array Int Int))
(assert (not (= var3800!2 null-__Array__Int__Int__)))
(assert (= (select var3800!2 1) 100)) ; Statement: $r9[1] = 100L 
(declare-const var3800!3 (Array Int Int))
(assert (not (= var3800!3 null-__Array__Int__Int__)))
(assert (= (select var3800!3 2) 1000)) ; Statement: $r9[2] = 1000L 
(declare-const var3800!4 (Array Int Int))
(assert (not (= var3800!4 null-__Array__Int__Int__)))
(assert (= (select var3800!4 3) 10000)) ; Statement: $r9[3] = 10000L 
(declare-const var3800!5 (Array Int Int))
(assert (not (= var3800!5 null-__Array__Int__Int__)))
(assert (= (select var3800!5 4) 100000)) ; Statement: $r9[4] = 100000L 
(declare-const var3800!6 (Array Int Int))
(assert (not (= var3800!6 null-__Array__Int__Int__)))
(assert (= (select var3800!6 5) 1000000)) ; Statement: $r9[5] = 1000000L 
(declare-const var3800!7 (Array Int Int))
(assert (not (= var3800!7 null-__Array__Int__Int__)))
(assert (= (select var3800!7 6) 10000000)) ; Statement: $r9[6] = 10000000L 
(declare-const var3800!8 (Array Int Int))
(assert (not (= var3800!8 null-__Array__Int__Int__)))
(assert (= (select var3800!8 7) 100000000)) ; Statement: $r9[7] = 100000000L 
(declare-const var3800!9 (Array Int Int))
(assert (not (= var3800!9 null-__Array__Int__Int__)))
(assert (= (select var3800!9 8) 1000000000)) ; Statement: $r9[8] = 1000000000L 
(declare-const var3800!10 (Array Int Int))
(assert (not (= var3800!10 null-__Array__Int__Int__)))
(assert (= (select var3800!10 9) 10000000000)) ; Statement: $r9[9] = 10000000000L 
(declare-const var3800!11 (Array Int Int))
(assert (not (= var3800!11 null-__Array__Int__Int__)))
(assert (= (select var3800!11 10) 100000000000)) ; Statement: $r9[10] = 100000000000L 
(declare-const var3800!12 (Array Int Int))
(assert (not (= var3800!12 null-__Array__Int__Int__)))
(assert (= (select var3800!12 11) 1000000000000)) ; Statement: $r9[11] = 1000000000000L 
(declare-const var3800!13 (Array Int Int))
(assert (not (= var3800!13 null-__Array__Int__Int__)))
(assert (= (select var3800!13 12) 10000000000000)) ; Statement: $r9[12] = 10000000000000L 
(declare-const var3800!14 (Array Int Int))
(assert (not (= var3800!14 null-__Array__Int__Int__)))
(assert (= (select var3800!14 13) 100000000000000)) ; Statement: $r9[13] = 100000000000000L 
(declare-const var3800!15 (Array Int Int))
(assert (not (= var3800!15 null-__Array__Int__Int__)))
(assert (= (select var3800!15 14) 1000000000000000)) ; Statement: $r9[14] = 1000000000000000L 
(declare-const var3800!16 (Array Int Int))
(assert (not (= var3800!16 null-__Array__Int__Int__)))
(assert (= (select var3800!16 15) 10000000000000000)) ; Statement: $r9[15] = 10000000000000000L 
(declare-const var3800!17 (Array Int Int))
(assert (not (= var3800!17 null-__Array__Int__Int__)))
(assert (= (select var3800!17 16) 100000000000000000)) ; Statement: $r9[16] = 100000000000000000L 
(declare-const var3800!18 (Array Int Int))
(assert (not (= var3800!18 null-__Array__Int__Int__)))
(assert (= (select var3800!18 17) 1000000000000000000)) ; Statement: $r9[17] = 1000000000000000000L 
(define-const var1201 (Array Int Int) var3800!18) ; Statement: <com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN> = $r9 
(define-const var589 (Array Int Int) arr-Int-init) ; Statement: $r10 = newarray (short)[100] 
(declare-const var589!1 (Array Int Int))
(assert (not (= var589!1 null-__Array__Int__Int__)))
(assert (= (select var589!1 0) 12336)) ; Statement: $r10[0] = 12336 
(declare-const var589!2 (Array Int Int))
(assert (not (= var589!2 null-__Array__Int__Int__)))
(assert (= (select var589!2 1) 12592)) ; Statement: $r10[1] = 12592 
(declare-const var589!3 (Array Int Int))
(assert (not (= var589!3 null-__Array__Int__Int__)))
(assert (= (select var589!3 2) 12848)) ; Statement: $r10[2] = 12848 
(declare-const var589!4 (Array Int Int))
(assert (not (= var589!4 null-__Array__Int__Int__)))
(assert (= (select var589!4 3) 13104)) ; Statement: $r10[3] = 13104 
(declare-const var589!5 (Array Int Int))
(assert (not (= var589!5 null-__Array__Int__Int__)))
(assert (= (select var589!5 4) 13360)) ; Statement: $r10[4] = 13360 
(declare-const var589!6 (Array Int Int))
(assert (not (= var589!6 null-__Array__Int__Int__)))
(assert (= (select var589!6 5) 13616)) ; Statement: $r10[5] = 13616 
(declare-const var589!7 (Array Int Int))
(assert (not (= var589!7 null-__Array__Int__Int__)))
(assert (= (select var589!7 6) 13872)) ; Statement: $r10[6] = 13872 
(declare-const var589!8 (Array Int Int))
(assert (not (= var589!8 null-__Array__Int__Int__)))
(assert (= (select var589!8 7) 14128)) ; Statement: $r10[7] = 14128 
(declare-const var589!9 (Array Int Int))
(assert (not (= var589!9 null-__Array__Int__Int__)))
(assert (= (select var589!9 8) 14384)) ; Statement: $r10[8] = 14384 
(declare-const var589!10 (Array Int Int))
(assert (not (= var589!10 null-__Array__Int__Int__)))
(assert (= (select var589!10 9) 14640)) ; Statement: $r10[9] = 14640 
(declare-const var589!11 (Array Int Int))
(assert (not (= var589!11 null-__Array__Int__Int__)))
(assert (= (select var589!11 10) 12337)) ; Statement: $r10[10] = 12337 
(declare-const var589!12 (Array Int Int))
(assert (not (= var589!12 null-__Array__Int__Int__)))
(assert (= (select var589!12 11) 12593)) ; Statement: $r10[11] = 12593 
(declare-const var589!13 (Array Int Int))
(assert (not (= var589!13 null-__Array__Int__Int__)))
(assert (= (select var589!13 12) 12849)) ; Statement: $r10[12] = 12849 
(declare-const var589!14 (Array Int Int))
(assert (not (= var589!14 null-__Array__Int__Int__)))
(assert (= (select var589!14 13) 13105)) ; Statement: $r10[13] = 13105 
(declare-const var589!15 (Array Int Int))
(assert (not (= var589!15 null-__Array__Int__Int__)))
(assert (= (select var589!15 14) 13361)) ; Statement: $r10[14] = 13361 
(declare-const var589!16 (Array Int Int))
(assert (not (= var589!16 null-__Array__Int__Int__)))
(assert (= (select var589!16 15) 13617)) ; Statement: $r10[15] = 13617 
(declare-const var589!17 (Array Int Int))
(assert (not (= var589!17 null-__Array__Int__Int__)))
(assert (= (select var589!17 16) 13873)) ; Statement: $r10[16] = 13873 
(declare-const var589!18 (Array Int Int))
(assert (not (= var589!18 null-__Array__Int__Int__)))
(assert (= (select var589!18 17) 14129)) ; Statement: $r10[17] = 14129 
(declare-const var589!19 (Array Int Int))
(assert (not (= var589!19 null-__Array__Int__Int__)))
(assert (= (select var589!19 18) 14385)) ; Statement: $r10[18] = 14385 
(declare-const var589!20 (Array Int Int))
(assert (not (= var589!20 null-__Array__Int__Int__)))
(assert (= (select var589!20 19) 14641)) ; Statement: $r10[19] = 14641 
(declare-const var589!21 (Array Int Int))
(assert (not (= var589!21 null-__Array__Int__Int__)))
(assert (= (select var589!21 20) 12338)) ; Statement: $r10[20] = 12338 
(declare-const var589!22 (Array Int Int))
(assert (not (= var589!22 null-__Array__Int__Int__)))
(assert (= (select var589!22 21) 12594)) ; Statement: $r10[21] = 12594 
(declare-const var589!23 (Array Int Int))
(assert (not (= var589!23 null-__Array__Int__Int__)))
(assert (= (select var589!23 22) 12850)) ; Statement: $r10[22] = 12850 
(declare-const var589!24 (Array Int Int))
(assert (not (= var589!24 null-__Array__Int__Int__)))
(assert (= (select var589!24 23) 13106)) ; Statement: $r10[23] = 13106 
(declare-const var589!25 (Array Int Int))
(assert (not (= var589!25 null-__Array__Int__Int__)))
(assert (= (select var589!25 24) 13362)) ; Statement: $r10[24] = 13362 
(declare-const var589!26 (Array Int Int))
(assert (not (= var589!26 null-__Array__Int__Int__)))
(assert (= (select var589!26 25) 13618)) ; Statement: $r10[25] = 13618 
(declare-const var589!27 (Array Int Int))
(assert (not (= var589!27 null-__Array__Int__Int__)))
(assert (= (select var589!27 26) 13874)) ; Statement: $r10[26] = 13874 
(declare-const var589!28 (Array Int Int))
(assert (not (= var589!28 null-__Array__Int__Int__)))
(assert (= (select var589!28 27) 14130)) ; Statement: $r10[27] = 14130 
(declare-const var589!29 (Array Int Int))
(assert (not (= var589!29 null-__Array__Int__Int__)))
(assert (= (select var589!29 28) 14386)) ; Statement: $r10[28] = 14386 
(declare-const var589!30 (Array Int Int))
(assert (not (= var589!30 null-__Array__Int__Int__)))
(assert (= (select var589!30 29) 14642)) ; Statement: $r10[29] = 14642 
(declare-const var589!31 (Array Int Int))
(assert (not (= var589!31 null-__Array__Int__Int__)))
(assert (= (select var589!31 30) 12339)) ; Statement: $r10[30] = 12339 
(declare-const var589!32 (Array Int Int))
(assert (not (= var589!32 null-__Array__Int__Int__)))
(assert (= (select var589!32 31) 12595)) ; Statement: $r10[31] = 12595 
(declare-const var589!33 (Array Int Int))
(assert (not (= var589!33 null-__Array__Int__Int__)))
(assert (= (select var589!33 32) 12851)) ; Statement: $r10[32] = 12851 
(declare-const var589!34 (Array Int Int))
(assert (not (= var589!34 null-__Array__Int__Int__)))
(assert (= (select var589!34 33) 13107)) ; Statement: $r10[33] = 13107 
(declare-const var589!35 (Array Int Int))
(assert (not (= var589!35 null-__Array__Int__Int__)))
(assert (= (select var589!35 34) 13363)) ; Statement: $r10[34] = 13363 
(declare-const var589!36 (Array Int Int))
(assert (not (= var589!36 null-__Array__Int__Int__)))
(assert (= (select var589!36 35) 13619)) ; Statement: $r10[35] = 13619 
(declare-const var589!37 (Array Int Int))
(assert (not (= var589!37 null-__Array__Int__Int__)))
(assert (= (select var589!37 36) 13875)) ; Statement: $r10[36] = 13875 
(declare-const var589!38 (Array Int Int))
(assert (not (= var589!38 null-__Array__Int__Int__)))
(assert (= (select var589!38 37) 14131)) ; Statement: $r10[37] = 14131 
(declare-const var589!39 (Array Int Int))
(assert (not (= var589!39 null-__Array__Int__Int__)))
(assert (= (select var589!39 38) 14387)) ; Statement: $r10[38] = 14387 
(declare-const var589!40 (Array Int Int))
(assert (not (= var589!40 null-__Array__Int__Int__)))
(assert (= (select var589!40 39) 14643)) ; Statement: $r10[39] = 14643 
(declare-const var589!41 (Array Int Int))
(assert (not (= var589!41 null-__Array__Int__Int__)))
(assert (= (select var589!41 40) 12340)) ; Statement: $r10[40] = 12340 
(declare-const var589!42 (Array Int Int))
(assert (not (= var589!42 null-__Array__Int__Int__)))
(assert (= (select var589!42 41) 12596)) ; Statement: $r10[41] = 12596 
(declare-const var589!43 (Array Int Int))
(assert (not (= var589!43 null-__Array__Int__Int__)))
(assert (= (select var589!43 42) 12852)) ; Statement: $r10[42] = 12852 
(declare-const var589!44 (Array Int Int))
(assert (not (= var589!44 null-__Array__Int__Int__)))
(assert (= (select var589!44 43) 13108)) ; Statement: $r10[43] = 13108 
(declare-const var589!45 (Array Int Int))
(assert (not (= var589!45 null-__Array__Int__Int__)))
(assert (= (select var589!45 44) 13364)) ; Statement: $r10[44] = 13364 
(declare-const var589!46 (Array Int Int))
(assert (not (= var589!46 null-__Array__Int__Int__)))
(assert (= (select var589!46 45) 13620)) ; Statement: $r10[45] = 13620 
(declare-const var589!47 (Array Int Int))
(assert (not (= var589!47 null-__Array__Int__Int__)))
(assert (= (select var589!47 46) 13876)) ; Statement: $r10[46] = 13876 
(declare-const var589!48 (Array Int Int))
(assert (not (= var589!48 null-__Array__Int__Int__)))
(assert (= (select var589!48 47) 14132)) ; Statement: $r10[47] = 14132 
(declare-const var589!49 (Array Int Int))
(assert (not (= var589!49 null-__Array__Int__Int__)))
(assert (= (select var589!49 48) 14388)) ; Statement: $r10[48] = 14388 
(declare-const var589!50 (Array Int Int))
(assert (not (= var589!50 null-__Array__Int__Int__)))
(assert (= (select var589!50 49) 14644)) ; Statement: $r10[49] = 14644 
(declare-const var589!51 (Array Int Int))
(assert (not (= var589!51 null-__Array__Int__Int__)))
(assert (= (select var589!51 50) 12341)) ; Statement: $r10[50] = 12341 
(declare-const var589!52 (Array Int Int))
(assert (not (= var589!52 null-__Array__Int__Int__)))
(assert (= (select var589!52 51) 12597)) ; Statement: $r10[51] = 12597 
(declare-const var589!53 (Array Int Int))
(assert (not (= var589!53 null-__Array__Int__Int__)))
(assert (= (select var589!53 52) 12853)) ; Statement: $r10[52] = 12853 
(declare-const var589!54 (Array Int Int))
(assert (not (= var589!54 null-__Array__Int__Int__)))
(assert (= (select var589!54 53) 13109)) ; Statement: $r10[53] = 13109 
(declare-const var589!55 (Array Int Int))
(assert (not (= var589!55 null-__Array__Int__Int__)))
(assert (= (select var589!55 54) 13365)) ; Statement: $r10[54] = 13365 
(declare-const var589!56 (Array Int Int))
(assert (not (= var589!56 null-__Array__Int__Int__)))
(assert (= (select var589!56 55) 13621)) ; Statement: $r10[55] = 13621 
(declare-const var589!57 (Array Int Int))
(assert (not (= var589!57 null-__Array__Int__Int__)))
(assert (= (select var589!57 56) 13877)) ; Statement: $r10[56] = 13877 
(declare-const var589!58 (Array Int Int))
(assert (not (= var589!58 null-__Array__Int__Int__)))
(assert (= (select var589!58 57) 14133)) ; Statement: $r10[57] = 14133 
(declare-const var589!59 (Array Int Int))
(assert (not (= var589!59 null-__Array__Int__Int__)))
(assert (= (select var589!59 58) 14389)) ; Statement: $r10[58] = 14389 
(declare-const var589!60 (Array Int Int))
(assert (not (= var589!60 null-__Array__Int__Int__)))
(assert (= (select var589!60 59) 14645)) ; Statement: $r10[59] = 14645 
(declare-const var589!61 (Array Int Int))
(assert (not (= var589!61 null-__Array__Int__Int__)))
(assert (= (select var589!61 60) 12342)) ; Statement: $r10[60] = 12342 
(declare-const var589!62 (Array Int Int))
(assert (not (= var589!62 null-__Array__Int__Int__)))
(assert (= (select var589!62 61) 12598)) ; Statement: $r10[61] = 12598 
(declare-const var589!63 (Array Int Int))
(assert (not (= var589!63 null-__Array__Int__Int__)))
(assert (= (select var589!63 62) 12854)) ; Statement: $r10[62] = 12854 
(declare-const var589!64 (Array Int Int))
(assert (not (= var589!64 null-__Array__Int__Int__)))
(assert (= (select var589!64 63) 13110)) ; Statement: $r10[63] = 13110 
(declare-const var589!65 (Array Int Int))
(assert (not (= var589!65 null-__Array__Int__Int__)))
(assert (= (select var589!65 64) 13366)) ; Statement: $r10[64] = 13366 
(declare-const var589!66 (Array Int Int))
(assert (not (= var589!66 null-__Array__Int__Int__)))
(assert (= (select var589!66 65) 13622)) ; Statement: $r10[65] = 13622 
(declare-const var589!67 (Array Int Int))
(assert (not (= var589!67 null-__Array__Int__Int__)))
(assert (= (select var589!67 66) 13878)) ; Statement: $r10[66] = 13878 
(declare-const var589!68 (Array Int Int))
(assert (not (= var589!68 null-__Array__Int__Int__)))
(assert (= (select var589!68 67) 14134)) ; Statement: $r10[67] = 14134 
(declare-const var589!69 (Array Int Int))
(assert (not (= var589!69 null-__Array__Int__Int__)))
(assert (= (select var589!69 68) 14390)) ; Statement: $r10[68] = 14390 
(declare-const var589!70 (Array Int Int))
(assert (not (= var589!70 null-__Array__Int__Int__)))
(assert (= (select var589!70 69) 14646)) ; Statement: $r10[69] = 14646 
(declare-const var589!71 (Array Int Int))
(assert (not (= var589!71 null-__Array__Int__Int__)))
(assert (= (select var589!71 70) 12343)) ; Statement: $r10[70] = 12343 
(declare-const var589!72 (Array Int Int))
(assert (not (= var589!72 null-__Array__Int__Int__)))
(assert (= (select var589!72 71) 12599)) ; Statement: $r10[71] = 12599 
(declare-const var589!73 (Array Int Int))
(assert (not (= var589!73 null-__Array__Int__Int__)))
(assert (= (select var589!73 72) 12855)) ; Statement: $r10[72] = 12855 
(declare-const var589!74 (Array Int Int))
(assert (not (= var589!74 null-__Array__Int__Int__)))
(assert (= (select var589!74 73) 13111)) ; Statement: $r10[73] = 13111 
(declare-const var589!75 (Array Int Int))
(assert (not (= var589!75 null-__Array__Int__Int__)))
(assert (= (select var589!75 74) 13367)) ; Statement: $r10[74] = 13367 
(declare-const var589!76 (Array Int Int))
(assert (not (= var589!76 null-__Array__Int__Int__)))
(assert (= (select var589!76 75) 13623)) ; Statement: $r10[75] = 13623 
(declare-const var589!77 (Array Int Int))
(assert (not (= var589!77 null-__Array__Int__Int__)))
(assert (= (select var589!77 76) 13879)) ; Statement: $r10[76] = 13879 
(declare-const var589!78 (Array Int Int))
(assert (not (= var589!78 null-__Array__Int__Int__)))
(assert (= (select var589!78 77) 14135)) ; Statement: $r10[77] = 14135 
(declare-const var589!79 (Array Int Int))
(assert (not (= var589!79 null-__Array__Int__Int__)))
(assert (= (select var589!79 78) 14391)) ; Statement: $r10[78] = 14391 
(declare-const var589!80 (Array Int Int))
(assert (not (= var589!80 null-__Array__Int__Int__)))
(assert (= (select var589!80 79) 14647)) ; Statement: $r10[79] = 14647 
(declare-const var589!81 (Array Int Int))
(assert (not (= var589!81 null-__Array__Int__Int__)))
(assert (= (select var589!81 80) 12344)) ; Statement: $r10[80] = 12344 
(declare-const var589!82 (Array Int Int))
(assert (not (= var589!82 null-__Array__Int__Int__)))
(assert (= (select var589!82 81) 12600)) ; Statement: $r10[81] = 12600 
(declare-const var589!83 (Array Int Int))
(assert (not (= var589!83 null-__Array__Int__Int__)))
(assert (= (select var589!83 82) 12856)) ; Statement: $r10[82] = 12856 
(declare-const var589!84 (Array Int Int))
(assert (not (= var589!84 null-__Array__Int__Int__)))
(assert (= (select var589!84 83) 13112)) ; Statement: $r10[83] = 13112 
(declare-const var589!85 (Array Int Int))
(assert (not (= var589!85 null-__Array__Int__Int__)))
(assert (= (select var589!85 84) 13368)) ; Statement: $r10[84] = 13368 
(declare-const var589!86 (Array Int Int))
(assert (not (= var589!86 null-__Array__Int__Int__)))
(assert (= (select var589!86 85) 13624)) ; Statement: $r10[85] = 13624 
(declare-const var589!87 (Array Int Int))
(assert (not (= var589!87 null-__Array__Int__Int__)))
(assert (= (select var589!87 86) 13880)) ; Statement: $r10[86] = 13880 
(declare-const var589!88 (Array Int Int))
(assert (not (= var589!88 null-__Array__Int__Int__)))
(assert (= (select var589!88 87) 14136)) ; Statement: $r10[87] = 14136 
(declare-const var589!89 (Array Int Int))
(assert (not (= var589!89 null-__Array__Int__Int__)))
(assert (= (select var589!89 88) 14392)) ; Statement: $r10[88] = 14392 
(declare-const var589!90 (Array Int Int))
(assert (not (= var589!90 null-__Array__Int__Int__)))
(assert (= (select var589!90 89) 14648)) ; Statement: $r10[89] = 14648 
(declare-const var589!91 (Array Int Int))
(assert (not (= var589!91 null-__Array__Int__Int__)))
(assert (= (select var589!91 90) 12345)) ; Statement: $r10[90] = 12345 
(declare-const var589!92 (Array Int Int))
(assert (not (= var589!92 null-__Array__Int__Int__)))
(assert (= (select var589!92 91) 12601)) ; Statement: $r10[91] = 12601 
(declare-const var589!93 (Array Int Int))
(assert (not (= var589!93 null-__Array__Int__Int__)))
(assert (= (select var589!93 92) 12857)) ; Statement: $r10[92] = 12857 
(declare-const var589!94 (Array Int Int))
(assert (not (= var589!94 null-__Array__Int__Int__)))
(assert (= (select var589!94 93) 13113)) ; Statement: $r10[93] = 13113 
(declare-const var589!95 (Array Int Int))
(assert (not (= var589!95 null-__Array__Int__Int__)))
(assert (= (select var589!95 94) 13369)) ; Statement: $r10[94] = 13369 
(declare-const var589!96 (Array Int Int))
(assert (not (= var589!96 null-__Array__Int__Int__)))
(assert (= (select var589!96 95) 13625)) ; Statement: $r10[95] = 13625 
(declare-const var589!97 (Array Int Int))
(assert (not (= var589!97 null-__Array__Int__Int__)))
(assert (= (select var589!97 96) 13881)) ; Statement: $r10[96] = 13881 
(declare-const var589!98 (Array Int Int))
(assert (not (= var589!98 null-__Array__Int__Int__)))
(assert (= (select var589!98 97) 14137)) ; Statement: $r10[97] = 14137 
(declare-const var589!99 (Array Int Int))
(assert (not (= var589!99 null-__Array__Int__Int__)))
(assert (= (select var589!99 98) 14393)) ; Statement: $r10[98] = 14393 
(declare-const var589!100 (Array Int Int))
(assert (not (= var589!100 null-__Array__Int__Int__)))
(assert (= (select var589!100 99) 14649)) ; Statement: $r10[99] = 14649 
(define-const var3908 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (int)[100] 
(declare-const var3908!1 (Array Int Int))
(assert (not (= var3908!1 null-__Array__Int__Int__)))
(assert (= (select var3908!1 0) 3145776)) ; Statement: $r11[0] = 3145776 
(declare-const var3908!2 (Array Int Int))
(assert (not (= var3908!2 null-__Array__Int__Int__)))
(assert (= (select var3908!2 1) 3211312)) ; Statement: $r11[1] = 3211312 
(declare-const var3908!3 (Array Int Int))
(assert (not (= var3908!3 null-__Array__Int__Int__)))
(assert (= (select var3908!3 2) 3276848)) ; Statement: $r11[2] = 3276848 
(declare-const var3908!4 (Array Int Int))
(assert (not (= var3908!4 null-__Array__Int__Int__)))
(assert (= (select var3908!4 3) 3342384)) ; Statement: $r11[3] = 3342384 
(declare-const var3908!5 (Array Int Int))
(assert (not (= var3908!5 null-__Array__Int__Int__)))
(assert (= (select var3908!5 4) 3407920)) ; Statement: $r11[4] = 3407920 
(declare-const var3908!6 (Array Int Int))
(assert (not (= var3908!6 null-__Array__Int__Int__)))
(assert (= (select var3908!6 5) 3473456)) ; Statement: $r11[5] = 3473456 
(declare-const var3908!7 (Array Int Int))
(assert (not (= var3908!7 null-__Array__Int__Int__)))
(assert (= (select var3908!7 6) 3538992)) ; Statement: $r11[6] = 3538992 
(declare-const var3908!8 (Array Int Int))
(assert (not (= var3908!8 null-__Array__Int__Int__)))
(assert (= (select var3908!8 7) 3604528)) ; Statement: $r11[7] = 3604528 
(declare-const var3908!9 (Array Int Int))
(assert (not (= var3908!9 null-__Array__Int__Int__)))
(assert (= (select var3908!9 8) 3670064)) ; Statement: $r11[8] = 3670064 
(declare-const var3908!10 (Array Int Int))
(assert (not (= var3908!10 null-__Array__Int__Int__)))
(assert (= (select var3908!10 9) 3735600)) ; Statement: $r11[9] = 3735600 
(declare-const var3908!11 (Array Int Int))
(assert (not (= var3908!11 null-__Array__Int__Int__)))
(assert (= (select var3908!11 10) 3145777)) ; Statement: $r11[10] = 3145777 
(declare-const var3908!12 (Array Int Int))
(assert (not (= var3908!12 null-__Array__Int__Int__)))
(assert (= (select var3908!12 11) 3211313)) ; Statement: $r11[11] = 3211313 
(declare-const var3908!13 (Array Int Int))
(assert (not (= var3908!13 null-__Array__Int__Int__)))
(assert (= (select var3908!13 12) 3276849)) ; Statement: $r11[12] = 3276849 
(declare-const var3908!14 (Array Int Int))
(assert (not (= var3908!14 null-__Array__Int__Int__)))
(assert (= (select var3908!14 13) 3342385)) ; Statement: $r11[13] = 3342385 
(declare-const var3908!15 (Array Int Int))
(assert (not (= var3908!15 null-__Array__Int__Int__)))
(assert (= (select var3908!15 14) 3407921)) ; Statement: $r11[14] = 3407921 
(declare-const var3908!16 (Array Int Int))
(assert (not (= var3908!16 null-__Array__Int__Int__)))
(assert (= (select var3908!16 15) 3473457)) ; Statement: $r11[15] = 3473457 
(declare-const var3908!17 (Array Int Int))
(assert (not (= var3908!17 null-__Array__Int__Int__)))
(assert (= (select var3908!17 16) 3538993)) ; Statement: $r11[16] = 3538993 
(declare-const var3908!18 (Array Int Int))
(assert (not (= var3908!18 null-__Array__Int__Int__)))
(assert (= (select var3908!18 17) 3604529)) ; Statement: $r11[17] = 3604529 
(declare-const var3908!19 (Array Int Int))
(assert (not (= var3908!19 null-__Array__Int__Int__)))
(assert (= (select var3908!19 18) 3670065)) ; Statement: $r11[18] = 3670065 
(declare-const var3908!20 (Array Int Int))
(assert (not (= var3908!20 null-__Array__Int__Int__)))
(assert (= (select var3908!20 19) 3735601)) ; Statement: $r11[19] = 3735601 
(declare-const var3908!21 (Array Int Int))
(assert (not (= var3908!21 null-__Array__Int__Int__)))
(assert (= (select var3908!21 20) 3145778)) ; Statement: $r11[20] = 3145778 
(declare-const var3908!22 (Array Int Int))
(assert (not (= var3908!22 null-__Array__Int__Int__)))
(assert (= (select var3908!22 21) 3211314)) ; Statement: $r11[21] = 3211314 
(declare-const var3908!23 (Array Int Int))
(assert (not (= var3908!23 null-__Array__Int__Int__)))
(assert (= (select var3908!23 22) 3276850)) ; Statement: $r11[22] = 3276850 
(declare-const var3908!24 (Array Int Int))
(assert (not (= var3908!24 null-__Array__Int__Int__)))
(assert (= (select var3908!24 23) 3342386)) ; Statement: $r11[23] = 3342386 
(declare-const var3908!25 (Array Int Int))
(assert (not (= var3908!25 null-__Array__Int__Int__)))
(assert (= (select var3908!25 24) 3407922)) ; Statement: $r11[24] = 3407922 
(declare-const var3908!26 (Array Int Int))
(assert (not (= var3908!26 null-__Array__Int__Int__)))
(assert (= (select var3908!26 25) 3473458)) ; Statement: $r11[25] = 3473458 
(declare-const var3908!27 (Array Int Int))
(assert (not (= var3908!27 null-__Array__Int__Int__)))
(assert (= (select var3908!27 26) 3538994)) ; Statement: $r11[26] = 3538994 
(declare-const var3908!28 (Array Int Int))
(assert (not (= var3908!28 null-__Array__Int__Int__)))
(assert (= (select var3908!28 27) 3604530)) ; Statement: $r11[27] = 3604530 
(declare-const var3908!29 (Array Int Int))
(assert (not (= var3908!29 null-__Array__Int__Int__)))
(assert (= (select var3908!29 28) 3670066)) ; Statement: $r11[28] = 3670066 
(declare-const var3908!30 (Array Int Int))
(assert (not (= var3908!30 null-__Array__Int__Int__)))
(assert (= (select var3908!30 29) 3735602)) ; Statement: $r11[29] = 3735602 
(declare-const var3908!31 (Array Int Int))
(assert (not (= var3908!31 null-__Array__Int__Int__)))
(assert (= (select var3908!31 30) 3145779)) ; Statement: $r11[30] = 3145779 
(declare-const var3908!32 (Array Int Int))
(assert (not (= var3908!32 null-__Array__Int__Int__)))
(assert (= (select var3908!32 31) 3211315)) ; Statement: $r11[31] = 3211315 
(declare-const var3908!33 (Array Int Int))
(assert (not (= var3908!33 null-__Array__Int__Int__)))
(assert (= (select var3908!33 32) 3276851)) ; Statement: $r11[32] = 3276851 
(declare-const var3908!34 (Array Int Int))
(assert (not (= var3908!34 null-__Array__Int__Int__)))
(assert (= (select var3908!34 33) 3342387)) ; Statement: $r11[33] = 3342387 
(declare-const var3908!35 (Array Int Int))
(assert (not (= var3908!35 null-__Array__Int__Int__)))
(assert (= (select var3908!35 34) 3407923)) ; Statement: $r11[34] = 3407923 
(declare-const var3908!36 (Array Int Int))
(assert (not (= var3908!36 null-__Array__Int__Int__)))
(assert (= (select var3908!36 35) 3473459)) ; Statement: $r11[35] = 3473459 
(declare-const var3908!37 (Array Int Int))
(assert (not (= var3908!37 null-__Array__Int__Int__)))
(assert (= (select var3908!37 36) 3538995)) ; Statement: $r11[36] = 3538995 
(declare-const var3908!38 (Array Int Int))
(assert (not (= var3908!38 null-__Array__Int__Int__)))
(assert (= (select var3908!38 37) 3604531)) ; Statement: $r11[37] = 3604531 
(declare-const var3908!39 (Array Int Int))
(assert (not (= var3908!39 null-__Array__Int__Int__)))
(assert (= (select var3908!39 38) 3670067)) ; Statement: $r11[38] = 3670067 
(declare-const var3908!40 (Array Int Int))
(assert (not (= var3908!40 null-__Array__Int__Int__)))
(assert (= (select var3908!40 39) 3735603)) ; Statement: $r11[39] = 3735603 
(declare-const var3908!41 (Array Int Int))
(assert (not (= var3908!41 null-__Array__Int__Int__)))
(assert (= (select var3908!41 40) 3145780)) ; Statement: $r11[40] = 3145780 
(declare-const var3908!42 (Array Int Int))
(assert (not (= var3908!42 null-__Array__Int__Int__)))
(assert (= (select var3908!42 41) 3211316)) ; Statement: $r11[41] = 3211316 
(declare-const var3908!43 (Array Int Int))
(assert (not (= var3908!43 null-__Array__Int__Int__)))
(assert (= (select var3908!43 42) 3276852)) ; Statement: $r11[42] = 3276852 
(declare-const var3908!44 (Array Int Int))
(assert (not (= var3908!44 null-__Array__Int__Int__)))
(assert (= (select var3908!44 43) 3342388)) ; Statement: $r11[43] = 3342388 
(declare-const var3908!45 (Array Int Int))
(assert (not (= var3908!45 null-__Array__Int__Int__)))
(assert (= (select var3908!45 44) 3407924)) ; Statement: $r11[44] = 3407924 
(declare-const var3908!46 (Array Int Int))
(assert (not (= var3908!46 null-__Array__Int__Int__)))
(assert (= (select var3908!46 45) 3473460)) ; Statement: $r11[45] = 3473460 
(declare-const var3908!47 (Array Int Int))
(assert (not (= var3908!47 null-__Array__Int__Int__)))
(assert (= (select var3908!47 46) 3538996)) ; Statement: $r11[46] = 3538996 
(declare-const var3908!48 (Array Int Int))
(assert (not (= var3908!48 null-__Array__Int__Int__)))
(assert (= (select var3908!48 47) 3604532)) ; Statement: $r11[47] = 3604532 
(declare-const var3908!49 (Array Int Int))
(assert (not (= var3908!49 null-__Array__Int__Int__)))
(assert (= (select var3908!49 48) 3670068)) ; Statement: $r11[48] = 3670068 
(declare-const var3908!50 (Array Int Int))
(assert (not (= var3908!50 null-__Array__Int__Int__)))
(assert (= (select var3908!50 49) 3735604)) ; Statement: $r11[49] = 3735604 
(declare-const var3908!51 (Array Int Int))
(assert (not (= var3908!51 null-__Array__Int__Int__)))
(assert (= (select var3908!51 50) 3145781)) ; Statement: $r11[50] = 3145781 
(declare-const var3908!52 (Array Int Int))
(assert (not (= var3908!52 null-__Array__Int__Int__)))
(assert (= (select var3908!52 51) 3211317)) ; Statement: $r11[51] = 3211317 
(declare-const var3908!53 (Array Int Int))
(assert (not (= var3908!53 null-__Array__Int__Int__)))
(assert (= (select var3908!53 52) 3276853)) ; Statement: $r11[52] = 3276853 
(declare-const var3908!54 (Array Int Int))
(assert (not (= var3908!54 null-__Array__Int__Int__)))
(assert (= (select var3908!54 53) 3342389)) ; Statement: $r11[53] = 3342389 
(declare-const var3908!55 (Array Int Int))
(assert (not (= var3908!55 null-__Array__Int__Int__)))
(assert (= (select var3908!55 54) 3407925)) ; Statement: $r11[54] = 3407925 
(declare-const var3908!56 (Array Int Int))
(assert (not (= var3908!56 null-__Array__Int__Int__)))
(assert (= (select var3908!56 55) 3473461)) ; Statement: $r11[55] = 3473461 
(declare-const var3908!57 (Array Int Int))
(assert (not (= var3908!57 null-__Array__Int__Int__)))
(assert (= (select var3908!57 56) 3538997)) ; Statement: $r11[56] = 3538997 
(declare-const var3908!58 (Array Int Int))
(assert (not (= var3908!58 null-__Array__Int__Int__)))
(assert (= (select var3908!58 57) 3604533)) ; Statement: $r11[57] = 3604533 
(declare-const var3908!59 (Array Int Int))
(assert (not (= var3908!59 null-__Array__Int__Int__)))
(assert (= (select var3908!59 58) 3670069)) ; Statement: $r11[58] = 3670069 
(declare-const var3908!60 (Array Int Int))
(assert (not (= var3908!60 null-__Array__Int__Int__)))
(assert (= (select var3908!60 59) 3735605)) ; Statement: $r11[59] = 3735605 
(declare-const var3908!61 (Array Int Int))
(assert (not (= var3908!61 null-__Array__Int__Int__)))
(assert (= (select var3908!61 60) 3145782)) ; Statement: $r11[60] = 3145782 
(declare-const var3908!62 (Array Int Int))
(assert (not (= var3908!62 null-__Array__Int__Int__)))
(assert (= (select var3908!62 61) 3211318)) ; Statement: $r11[61] = 3211318 
(declare-const var3908!63 (Array Int Int))
(assert (not (= var3908!63 null-__Array__Int__Int__)))
(assert (= (select var3908!63 62) 3276854)) ; Statement: $r11[62] = 3276854 
(declare-const var3908!64 (Array Int Int))
(assert (not (= var3908!64 null-__Array__Int__Int__)))
(assert (= (select var3908!64 63) 3342390)) ; Statement: $r11[63] = 3342390 
(declare-const var3908!65 (Array Int Int))
(assert (not (= var3908!65 null-__Array__Int__Int__)))
(assert (= (select var3908!65 64) 3407926)) ; Statement: $r11[64] = 3407926 
(declare-const var3908!66 (Array Int Int))
(assert (not (= var3908!66 null-__Array__Int__Int__)))
(assert (= (select var3908!66 65) 3473462)) ; Statement: $r11[65] = 3473462 
(declare-const var3908!67 (Array Int Int))
(assert (not (= var3908!67 null-__Array__Int__Int__)))
(assert (= (select var3908!67 66) 3538998)) ; Statement: $r11[66] = 3538998 
(declare-const var3908!68 (Array Int Int))
(assert (not (= var3908!68 null-__Array__Int__Int__)))
(assert (= (select var3908!68 67) 3604534)) ; Statement: $r11[67] = 3604534 
(declare-const var3908!69 (Array Int Int))
(assert (not (= var3908!69 null-__Array__Int__Int__)))
(assert (= (select var3908!69 68) 3670070)) ; Statement: $r11[68] = 3670070 
(declare-const var3908!70 (Array Int Int))
(assert (not (= var3908!70 null-__Array__Int__Int__)))
(assert (= (select var3908!70 69) 3735606)) ; Statement: $r11[69] = 3735606 
(declare-const var3908!71 (Array Int Int))
(assert (not (= var3908!71 null-__Array__Int__Int__)))
(assert (= (select var3908!71 70) 3145783)) ; Statement: $r11[70] = 3145783 
(declare-const var3908!72 (Array Int Int))
(assert (not (= var3908!72 null-__Array__Int__Int__)))
(assert (= (select var3908!72 71) 3211319)) ; Statement: $r11[71] = 3211319 
(declare-const var3908!73 (Array Int Int))
(assert (not (= var3908!73 null-__Array__Int__Int__)))
(assert (= (select var3908!73 72) 3276855)) ; Statement: $r11[72] = 3276855 
(declare-const var3908!74 (Array Int Int))
(assert (not (= var3908!74 null-__Array__Int__Int__)))
(assert (= (select var3908!74 73) 3342391)) ; Statement: $r11[73] = 3342391 
(declare-const var3908!75 (Array Int Int))
(assert (not (= var3908!75 null-__Array__Int__Int__)))
(assert (= (select var3908!75 74) 3407927)) ; Statement: $r11[74] = 3407927 
(declare-const var3908!76 (Array Int Int))
(assert (not (= var3908!76 null-__Array__Int__Int__)))
(assert (= (select var3908!76 75) 3473463)) ; Statement: $r11[75] = 3473463 
(declare-const var3908!77 (Array Int Int))
(assert (not (= var3908!77 null-__Array__Int__Int__)))
(assert (= (select var3908!77 76) 3538999)) ; Statement: $r11[76] = 3538999 
(declare-const var3908!78 (Array Int Int))
(assert (not (= var3908!78 null-__Array__Int__Int__)))
(assert (= (select var3908!78 77) 3604535)) ; Statement: $r11[77] = 3604535 
(declare-const var3908!79 (Array Int Int))
(assert (not (= var3908!79 null-__Array__Int__Int__)))
(assert (= (select var3908!79 78) 3670071)) ; Statement: $r11[78] = 3670071 
(declare-const var3908!80 (Array Int Int))
(assert (not (= var3908!80 null-__Array__Int__Int__)))
(assert (= (select var3908!80 79) 3735607)) ; Statement: $r11[79] = 3735607 
(declare-const var3908!81 (Array Int Int))
(assert (not (= var3908!81 null-__Array__Int__Int__)))
(assert (= (select var3908!81 80) 3145784)) ; Statement: $r11[80] = 3145784 
(declare-const var3908!82 (Array Int Int))
(assert (not (= var3908!82 null-__Array__Int__Int__)))
(assert (= (select var3908!82 81) 3211320)) ; Statement: $r11[81] = 3211320 
(declare-const var3908!83 (Array Int Int))
(assert (not (= var3908!83 null-__Array__Int__Int__)))
(assert (= (select var3908!83 82) 3276856)) ; Statement: $r11[82] = 3276856 
(declare-const var3908!84 (Array Int Int))
(assert (not (= var3908!84 null-__Array__Int__Int__)))
(assert (= (select var3908!84 83) 3342392)) ; Statement: $r11[83] = 3342392 
(declare-const var3908!85 (Array Int Int))
(assert (not (= var3908!85 null-__Array__Int__Int__)))
(assert (= (select var3908!85 84) 3407928)) ; Statement: $r11[84] = 3407928 
(declare-const var3908!86 (Array Int Int))
(assert (not (= var3908!86 null-__Array__Int__Int__)))
(assert (= (select var3908!86 85) 3473464)) ; Statement: $r11[85] = 3473464 
(declare-const var3908!87 (Array Int Int))
(assert (not (= var3908!87 null-__Array__Int__Int__)))
(assert (= (select var3908!87 86) 3539000)) ; Statement: $r11[86] = 3539000 
(declare-const var3908!88 (Array Int Int))
(assert (not (= var3908!88 null-__Array__Int__Int__)))
(assert (= (select var3908!88 87) 3604536)) ; Statement: $r11[87] = 3604536 
(declare-const var3908!89 (Array Int Int))
(assert (not (= var3908!89 null-__Array__Int__Int__)))
(assert (= (select var3908!89 88) 3670072)) ; Statement: $r11[88] = 3670072 
(declare-const var3908!90 (Array Int Int))
(assert (not (= var3908!90 null-__Array__Int__Int__)))
(assert (= (select var3908!90 89) 3735608)) ; Statement: $r11[89] = 3735608 
(declare-const var3908!91 (Array Int Int))
(assert (not (= var3908!91 null-__Array__Int__Int__)))
(assert (= (select var3908!91 90) 3145785)) ; Statement: $r11[90] = 3145785 
(declare-const var3908!92 (Array Int Int))
(assert (not (= var3908!92 null-__Array__Int__Int__)))
(assert (= (select var3908!92 91) 3211321)) ; Statement: $r11[91] = 3211321 
(declare-const var3908!93 (Array Int Int))
(assert (not (= var3908!93 null-__Array__Int__Int__)))
(assert (= (select var3908!93 92) 3276857)) ; Statement: $r11[92] = 3276857 
(declare-const var3908!94 (Array Int Int))
(assert (not (= var3908!94 null-__Array__Int__Int__)))
(assert (= (select var3908!94 93) 3342393)) ; Statement: $r11[93] = 3342393 
(declare-const var3908!95 (Array Int Int))
(assert (not (= var3908!95 null-__Array__Int__Int__)))
(assert (= (select var3908!95 94) 3407929)) ; Statement: $r11[94] = 3407929 
(declare-const var3908!96 (Array Int Int))
(assert (not (= var3908!96 null-__Array__Int__Int__)))
(assert (= (select var3908!96 95) 3473465)) ; Statement: $r11[95] = 3473465 
(declare-const var3908!97 (Array Int Int))
(assert (not (= var3908!97 null-__Array__Int__Int__)))
(assert (= (select var3908!97 96) 3539001)) ; Statement: $r11[96] = 3539001 
(declare-const var3908!98 (Array Int Int))
(assert (not (= var3908!98 null-__Array__Int__Int__)))
(assert (= (select var3908!98 97) 3604537)) ; Statement: $r11[97] = 3604537 
(declare-const var3908!99 (Array Int Int))
(assert (not (= var3908!99 null-__Array__Int__Int__)))
(assert (= (select var3908!99 98) 3670073)) ; Statement: $r11[98] = 3670073 
(declare-const var3908!100 (Array Int Int))
(assert (not (= var3908!100 null-__Array__Int__Int__)))
(assert (= (select var3908!100 99) 3735609)) ; Statement: $r11[99] = 3735609 
(define-const var2255 Bool var1796-BIG_ENDIAN) ; Statement: $z7 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z7 == 0 goto <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10 
(assert (= (ite var2255 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3305 (Array Int Int) var589!100) ; Statement: <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10 
(define-const var1750 (Array Int Int) var3908!100) ; Statement: <com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16> = $r11 
(define-const var1124 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
 ; Statement: if i19 >= 1000 goto return 
(assert (>= var1124 1000)) ; Cond: i19 >= 1000 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), getBytes/1068683673=([java.lang.String], byte[]), toCharArray/415275702=([java.lang.String], char[])}
; {var1796=com.alibaba.fastjson2.util.JDKUtils, var3996=$z0, var1426=$i10, var2086=<com.alibaba.fastjson2.util.IOUtils: int NULL_32>, var1720=$z1, var2864=$l11, var1763=<com.alibaba.fastjson2.util.IOUtils: long NULL_64>, var1257=$z2, var2684=$i12, var1552=<com.alibaba.fastjson2.util.IOUtils: int TRUE>, var2901=$z3, var302=$l13, var1385=<com.alibaba.fastjson2.util.IOUtils: long TRUE_64>, var196=$z4, var105=$i14, var2895=<com.alibaba.fastjson2.util.IOUtils: int ALSE>, var153=$z5, var1088=$l15, var3384=<com.alibaba.fastjson2.util.IOUtils: long ALSE_64>, var309=$z6, var1901=$l16, var366=<com.alibaba.fastjson2.util.IOUtils: long DOT_X0>, var287=$r0, var3538=<com.alibaba.fastjson2.util.IOUtils: int[] sizeTable>, var1554=$r1, var77=<com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32>, var2226=$r2, var3153=<com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64>, var499=$r3, var2340=$r4, var2906=<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES>, var393=$r5, var3242=$r6, var2651=<com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS>, var3712=$r7, var343=$r8, var272=<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG>, var3800=$r9, var1201=<com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN>, var589=$r10, var3908=$r11, var2255=$z7, var3305=<com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS>, var1750=<com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16>, var1124=i19}
; {com.alibaba.fastjson2.util.JDKUtils=var1796, $z0=var3996, $i10=var1426, <com.alibaba.fastjson2.util.IOUtils: int NULL_32>=var2086, $z1=var1720, $l11=var2864, <com.alibaba.fastjson2.util.IOUtils: long NULL_64>=var1763, $z2=var1257, $i12=var2684, <com.alibaba.fastjson2.util.IOUtils: int TRUE>=var1552, $z3=var2901, $l13=var302, <com.alibaba.fastjson2.util.IOUtils: long TRUE_64>=var1385, $z4=var196, $i14=var105, <com.alibaba.fastjson2.util.IOUtils: int ALSE>=var2895, $z5=var153, $l15=var1088, <com.alibaba.fastjson2.util.IOUtils: long ALSE_64>=var3384, $z6=var309, $l16=var1901, <com.alibaba.fastjson2.util.IOUtils: long DOT_X0>=var366, $r0=var287, <com.alibaba.fastjson2.util.IOUtils: int[] sizeTable>=var3538, $r1=var1554, <com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32>=var77, $r2=var2226, <com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64>=var3153, $r3=var499, $r4=var2340, <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES>=var2906, $r5=var393, $r6=var3242, <com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS>=var2651, $r7=var3712, $r8=var343, <com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG>=var272, $r9=var3800, <com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN>=var1201, $r10=var589, $r11=var3908, $z7=var2255, <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS>=var3305, <com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16>=var1750, i19=var1124}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 2,"<java.lang.String: char[] toCharArray()>": 1}
;stmts $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z0 == 0 goto $i10 = 1819047278;	$i10 = 1819047278;	<com.alibaba.fastjson2.util.IOUtils: int NULL_32> = $i10;	$z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z1 == 0 goto $l11 = 30399761348886638L;	$l11 = 30399761348886638L;	<com.alibaba.fastjson2.util.IOUtils: long NULL_64> = $l11;	$z2 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z2 == 0 goto $i12 = 1702195828;	$i12 = 1702195828;	<com.alibaba.fastjson2.util.IOUtils: int TRUE> = $i12;	$z3 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z3 == 0 goto $l13 = 28429475166421108L;	$l13 = 32651586932375653L;	goto [?= <com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13];	<com.alibaba.fastjson2.util.IOUtils: long TRUE_64> = $l13;	$z4 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z4 == 0 goto $i14 = 1702063201;	$i14 = 1634497381;	goto [?= <com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14];	<com.alibaba.fastjson2.util.IOUtils: int ALSE> = $i14;	$z5 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z5 == 0 goto $l15 = 28429466576093281L;	$l15 = 28429466576093281L;	<com.alibaba.fastjson2.util.IOUtils: long ALSE_64> = $l15;	$z6 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z6 == 0 goto $l16 = 46L;	$l16 = 11776L;	goto [?= <com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16];	<com.alibaba.fastjson2.util.IOUtils: long DOT_X0> = $l16;	$r0 = newarray (int)[10];	$r0[0] = 9;	$r0[1] = 99;	$r0[2] = 999;	$r0[3] = 9999;	$r0[4] = 99999;	$r0[5] = 999999;	$r0[6] = 9999999;	$r0[7] = 99999999;	$r0[8] = 999999999;	$r0[9] = 2147483647;	<com.alibaba.fastjson2.util.IOUtils: int[] sizeTable> = $r0;	$r1 = newarray (int)[1000];	<com.alibaba.fastjson2.util.IOUtils: int[] DIGITS_K_32> = $r1;	$r2 = newarray (long)[1000];	<com.alibaba.fastjson2.util.IOUtils: long[] DIGITS_K_64> = $r2;	$r3 = "-2147483648";	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_INT_BYTES> = $r4;	$r5 = "-2147483648";	$r6 = virtualinvoke $r5.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.util.IOUtils: char[] MIN_INT_CHARS> = $r6;	$r7 = "-9223372036854775808";	$r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>();	<com.alibaba.fastjson2.util.IOUtils: byte[] MIN_LONG> = $r8;	$r9 = newarray (long)[18];	$r9[0] = 10L;	$r9[1] = 100L;	$r9[2] = 1000L;	$r9[3] = 10000L;	$r9[4] = 100000L;	$r9[5] = 1000000L;	$r9[6] = 10000000L;	$r9[7] = 100000000L;	$r9[8] = 1000000000L;	$r9[9] = 10000000000L;	$r9[10] = 100000000000L;	$r9[11] = 1000000000000L;	$r9[12] = 10000000000000L;	$r9[13] = 100000000000000L;	$r9[14] = 1000000000000000L;	$r9[15] = 10000000000000000L;	$r9[16] = 100000000000000000L;	$r9[17] = 1000000000000000000L;	<com.alibaba.fastjson2.util.IOUtils: long[] POWER_TEN> = $r9;	$r10 = newarray (short)[100];	$r10[0] = 12336;	$r10[1] = 12592;	$r10[2] = 12848;	$r10[3] = 13104;	$r10[4] = 13360;	$r10[5] = 13616;	$r10[6] = 13872;	$r10[7] = 14128;	$r10[8] = 14384;	$r10[9] = 14640;	$r10[10] = 12337;	$r10[11] = 12593;	$r10[12] = 12849;	$r10[13] = 13105;	$r10[14] = 13361;	$r10[15] = 13617;	$r10[16] = 13873;	$r10[17] = 14129;	$r10[18] = 14385;	$r10[19] = 14641;	$r10[20] = 12338;	$r10[21] = 12594;	$r10[22] = 12850;	$r10[23] = 13106;	$r10[24] = 13362;	$r10[25] = 13618;	$r10[26] = 13874;	$r10[27] = 14130;	$r10[28] = 14386;	$r10[29] = 14642;	$r10[30] = 12339;	$r10[31] = 12595;	$r10[32] = 12851;	$r10[33] = 13107;	$r10[34] = 13363;	$r10[35] = 13619;	$r10[36] = 13875;	$r10[37] = 14131;	$r10[38] = 14387;	$r10[39] = 14643;	$r10[40] = 12340;	$r10[41] = 12596;	$r10[42] = 12852;	$r10[43] = 13108;	$r10[44] = 13364;	$r10[45] = 13620;	$r10[46] = 13876;	$r10[47] = 14132;	$r10[48] = 14388;	$r10[49] = 14644;	$r10[50] = 12341;	$r10[51] = 12597;	$r10[52] = 12853;	$r10[53] = 13109;	$r10[54] = 13365;	$r10[55] = 13621;	$r10[56] = 13877;	$r10[57] = 14133;	$r10[58] = 14389;	$r10[59] = 14645;	$r10[60] = 12342;	$r10[61] = 12598;	$r10[62] = 12854;	$r10[63] = 13110;	$r10[64] = 13366;	$r10[65] = 13622;	$r10[66] = 13878;	$r10[67] = 14134;	$r10[68] = 14390;	$r10[69] = 14646;	$r10[70] = 12343;	$r10[71] = 12599;	$r10[72] = 12855;	$r10[73] = 13111;	$r10[74] = 13367;	$r10[75] = 13623;	$r10[76] = 13879;	$r10[77] = 14135;	$r10[78] = 14391;	$r10[79] = 14647;	$r10[80] = 12344;	$r10[81] = 12600;	$r10[82] = 12856;	$r10[83] = 13112;	$r10[84] = 13368;	$r10[85] = 13624;	$r10[86] = 13880;	$r10[87] = 14136;	$r10[88] = 14392;	$r10[89] = 14648;	$r10[90] = 12345;	$r10[91] = 12601;	$r10[92] = 12857;	$r10[93] = 13113;	$r10[94] = 13369;	$r10[95] = 13625;	$r10[96] = 13881;	$r10[97] = 14137;	$r10[98] = 14393;	$r10[99] = 14649;	$r11 = newarray (int)[100];	$r11[0] = 3145776;	$r11[1] = 3211312;	$r11[2] = 3276848;	$r11[3] = 3342384;	$r11[4] = 3407920;	$r11[5] = 3473456;	$r11[6] = 3538992;	$r11[7] = 3604528;	$r11[8] = 3670064;	$r11[9] = 3735600;	$r11[10] = 3145777;	$r11[11] = 3211313;	$r11[12] = 3276849;	$r11[13] = 3342385;	$r11[14] = 3407921;	$r11[15] = 3473457;	$r11[16] = 3538993;	$r11[17] = 3604529;	$r11[18] = 3670065;	$r11[19] = 3735601;	$r11[20] = 3145778;	$r11[21] = 3211314;	$r11[22] = 3276850;	$r11[23] = 3342386;	$r11[24] = 3407922;	$r11[25] = 3473458;	$r11[26] = 3538994;	$r11[27] = 3604530;	$r11[28] = 3670066;	$r11[29] = 3735602;	$r11[30] = 3145779;	$r11[31] = 3211315;	$r11[32] = 3276851;	$r11[33] = 3342387;	$r11[34] = 3407923;	$r11[35] = 3473459;	$r11[36] = 3538995;	$r11[37] = 3604531;	$r11[38] = 3670067;	$r11[39] = 3735603;	$r11[40] = 3145780;	$r11[41] = 3211316;	$r11[42] = 3276852;	$r11[43] = 3342388;	$r11[44] = 3407924;	$r11[45] = 3473460;	$r11[46] = 3538996;	$r11[47] = 3604532;	$r11[48] = 3670068;	$r11[49] = 3735604;	$r11[50] = 3145781;	$r11[51] = 3211317;	$r11[52] = 3276853;	$r11[53] = 3342389;	$r11[54] = 3407925;	$r11[55] = 3473461;	$r11[56] = 3538997;	$r11[57] = 3604533;	$r11[58] = 3670069;	$r11[59] = 3735605;	$r11[60] = 3145782;	$r11[61] = 3211318;	$r11[62] = 3276854;	$r11[63] = 3342390;	$r11[64] = 3407926;	$r11[65] = 3473462;	$r11[66] = 3538998;	$r11[67] = 3604534;	$r11[68] = 3670070;	$r11[69] = 3735606;	$r11[70] = 3145783;	$r11[71] = 3211319;	$r11[72] = 3276855;	$r11[73] = 3342391;	$r11[74] = 3407927;	$r11[75] = 3473463;	$r11[76] = 3538999;	$r11[77] = 3604535;	$r11[78] = 3670071;	$r11[79] = 3735607;	$r11[80] = 3145784;	$r11[81] = 3211320;	$r11[82] = 3276856;	$r11[83] = 3342392;	$r11[84] = 3407928;	$r11[85] = 3473464;	$r11[86] = 3539000;	$r11[87] = 3604536;	$r11[88] = 3670072;	$r11[89] = 3735608;	$r11[90] = 3145785;	$r11[91] = 3211321;	$r11[92] = 3276857;	$r11[93] = 3342393;	$r11[94] = 3407929;	$r11[95] = 3473465;	$r11[96] = 3539001;	$r11[97] = 3604537;	$r11[98] = 3670073;	$r11[99] = 3735609;	$z7 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z7 == 0 goto <com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10;	<com.alibaba.fastjson2.util.IOUtils: short[] PACKED_DIGITS> = $r10;	<com.alibaba.fastjson2.util.IOUtils: int[] PACKED_DIGITS_UTF16> = $r11;	i19 = 0;	if i19 >= 1000 goto return;	return
;block_num 18