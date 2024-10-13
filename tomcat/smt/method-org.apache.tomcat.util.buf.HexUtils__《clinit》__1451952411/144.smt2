(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2780 0)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var91!class ClassObject)
(declare-fun var2780_getManager/-2041865158 (ClassObject) var2780)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var1298 var2780 (var2780_getManager/-2041865158 var91!class)) ; Statement: $r0 = staticinvoke <org.apache.tomcat.util.res.StringManager: org.apache.tomcat.util.res.StringManager getManager(java.lang.Class)>(class "Lorg/apache/tomcat/util/buf/HexUtils;") 
(define-const var3884 var2780 var1298) ; Statement: <org.apache.tomcat.util.buf.HexUtils: org.apache.tomcat.util.res.StringManager sm> = $r0 
(define-const var3341 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[55] 
(declare-const var3341!1 (Array Int Int))
(assert (not (= var3341!1 null-__Array__Int__Int__)))
(assert (= (select var3341!1 0) 0)) ; Statement: $r1[0] = 0 
(declare-const var3341!2 (Array Int Int))
(assert (not (= var3341!2 null-__Array__Int__Int__)))
(assert (= (select var3341!2 1) 1)) ; Statement: $r1[1] = 1 
(declare-const var3341!3 (Array Int Int))
(assert (not (= var3341!3 null-__Array__Int__Int__)))
(assert (= (select var3341!3 2) 2)) ; Statement: $r1[2] = 2 
(declare-const var3341!4 (Array Int Int))
(assert (not (= var3341!4 null-__Array__Int__Int__)))
(assert (= (select var3341!4 3) 3)) ; Statement: $r1[3] = 3 
(declare-const var3341!5 (Array Int Int))
(assert (not (= var3341!5 null-__Array__Int__Int__)))
(assert (= (select var3341!5 4) 4)) ; Statement: $r1[4] = 4 
(declare-const var3341!6 (Array Int Int))
(assert (not (= var3341!6 null-__Array__Int__Int__)))
(assert (= (select var3341!6 5) 5)) ; Statement: $r1[5] = 5 
(declare-const var3341!7 (Array Int Int))
(assert (not (= var3341!7 null-__Array__Int__Int__)))
(assert (= (select var3341!7 6) 6)) ; Statement: $r1[6] = 6 
(declare-const var3341!8 (Array Int Int))
(assert (not (= var3341!8 null-__Array__Int__Int__)))
(assert (= (select var3341!8 7) 7)) ; Statement: $r1[7] = 7 
(declare-const var3341!9 (Array Int Int))
(assert (not (= var3341!9 null-__Array__Int__Int__)))
(assert (= (select var3341!9 8) 8)) ; Statement: $r1[8] = 8 
(declare-const var3341!10 (Array Int Int))
(assert (not (= var3341!10 null-__Array__Int__Int__)))
(assert (= (select var3341!10 9) 9)) ; Statement: $r1[9] = 9 
(define-const var1488 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(declare-const var3341!11 (Array Int Int))
(assert (not (= var3341!11 null-__Array__Int__Int__)))
(assert (= (select var3341!11 10) var1488)) ; Statement: $r1[10] = $i1 
(define-const var1588 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(declare-const var3341!12 (Array Int Int))
(assert (not (= var3341!12 null-__Array__Int__Int__)))
(assert (= (select var3341!12 11) var1588)) ; Statement: $r1[11] = $i3 
(define-const var3927 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(declare-const var3341!13 (Array Int Int))
(assert (not (= var3341!13 null-__Array__Int__Int__)))
(assert (= (select var3341!13 12) var3927)) ; Statement: $r1[12] = $i5 
(define-const var2429 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(declare-const var3341!14 (Array Int Int))
(assert (not (= var3341!14 null-__Array__Int__Int__)))
(assert (= (select var3341!14 13) var2429)) ; Statement: $r1[13] = $i7 
(define-const var470 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(declare-const var3341!15 (Array Int Int))
(assert (not (= var3341!15 null-__Array__Int__Int__)))
(assert (= (select var3341!15 14) var470)) ; Statement: $r1[14] = $i9 
(define-const var2058 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
(declare-const var3341!16 (Array Int Int))
(assert (not (= var3341!16 null-__Array__Int__Int__)))
(assert (= (select var3341!16 15) var2058)) ; Statement: $r1[15] = $i11 
(define-const var2355 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(declare-const var3341!17 (Array Int Int))
(assert (not (= var3341!17 null-__Array__Int__Int__)))
(assert (= (select var3341!17 16) var2355)) ; Statement: $r1[16] = $i13 
(declare-const var3341!18 (Array Int Int))
(assert (not (= var3341!18 null-__Array__Int__Int__)))
(assert (= (select var3341!18 17) 10)) ; Statement: $r1[17] = 10 
(declare-const var3341!19 (Array Int Int))
(assert (not (= var3341!19 null-__Array__Int__Int__)))
(assert (= (select var3341!19 18) 11)) ; Statement: $r1[18] = 11 
(declare-const var3341!20 (Array Int Int))
(assert (not (= var3341!20 null-__Array__Int__Int__)))
(assert (= (select var3341!20 19) 12)) ; Statement: $r1[19] = 12 
(declare-const var3341!21 (Array Int Int))
(assert (not (= var3341!21 null-__Array__Int__Int__)))
(assert (= (select var3341!21 20) 13)) ; Statement: $r1[20] = 13 
(declare-const var3341!22 (Array Int Int))
(assert (not (= var3341!22 null-__Array__Int__Int__)))
(assert (= (select var3341!22 21) 14)) ; Statement: $r1[21] = 14 
(declare-const var3341!23 (Array Int Int))
(assert (not (= var3341!23 null-__Array__Int__Int__)))
(assert (= (select var3341!23 22) 15)) ; Statement: $r1[22] = 15 
(define-const var3433 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
(declare-const var3341!24 (Array Int Int))
(assert (not (= var3341!24 null-__Array__Int__Int__)))
(assert (= (select var3341!24 23) var3433)) ; Statement: $r1[23] = $i15 
(define-const var2759 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i17 = (int) -1 
(declare-const var3341!25 (Array Int Int))
(assert (not (= var3341!25 null-__Array__Int__Int__)))
(assert (= (select var3341!25 24) var2759)) ; Statement: $r1[24] = $i17 
(define-const var3963 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i19 = (int) -1 
(declare-const var3341!26 (Array Int Int))
(assert (not (= var3341!26 null-__Array__Int__Int__)))
(assert (= (select var3341!26 25) var3963)) ; Statement: $r1[25] = $i19 
(define-const var3886 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i21 = (int) -1 
(declare-const var3341!27 (Array Int Int))
(assert (not (= var3341!27 null-__Array__Int__Int__)))
(assert (= (select var3341!27 26) var3886)) ; Statement: $r1[26] = $i21 
(define-const var55 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i23 = (int) -1 
(declare-const var3341!28 (Array Int Int))
(assert (not (= var3341!28 null-__Array__Int__Int__)))
(assert (= (select var3341!28 27) var55)) ; Statement: $r1[27] = $i23 
(define-const var671 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i25 = (int) -1 
(declare-const var3341!29 (Array Int Int))
(assert (not (= var3341!29 null-__Array__Int__Int__)))
(assert (= (select var3341!29 28) var671)) ; Statement: $r1[28] = $i25 
(define-const var1745 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i27 = (int) -1 
(declare-const var3341!30 (Array Int Int))
(assert (not (= var3341!30 null-__Array__Int__Int__)))
(assert (= (select var3341!30 29) var1745)) ; Statement: $r1[29] = $i27 
(define-const var3155 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i29 = (int) -1 
(declare-const var3341!31 (Array Int Int))
(assert (not (= var3341!31 null-__Array__Int__Int__)))
(assert (= (select var3341!31 30) var3155)) ; Statement: $r1[30] = $i29 
(define-const var1102 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i31 = (int) -1 
(declare-const var3341!32 (Array Int Int))
(assert (not (= var3341!32 null-__Array__Int__Int__)))
(assert (= (select var3341!32 31) var1102)) ; Statement: $r1[31] = $i31 
(define-const var2931 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i33 = (int) -1 
(declare-const var3341!33 (Array Int Int))
(assert (not (= var3341!33 null-__Array__Int__Int__)))
(assert (= (select var3341!33 32) var2931)) ; Statement: $r1[32] = $i33 
(define-const var1227 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i35 = (int) -1 
(declare-const var3341!34 (Array Int Int))
(assert (not (= var3341!34 null-__Array__Int__Int__)))
(assert (= (select var3341!34 33) var1227)) ; Statement: $r1[33] = $i35 
(define-const var2922 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i37 = (int) -1 
(declare-const var3341!35 (Array Int Int))
(assert (not (= var3341!35 null-__Array__Int__Int__)))
(assert (= (select var3341!35 34) var2922)) ; Statement: $r1[34] = $i37 
(define-const var3020 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i39 = (int) -1 
(declare-const var3341!36 (Array Int Int))
(assert (not (= var3341!36 null-__Array__Int__Int__)))
(assert (= (select var3341!36 35) var3020)) ; Statement: $r1[35] = $i39 
(define-const var2103 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i41 = (int) -1 
(declare-const var3341!37 (Array Int Int))
(assert (not (= var3341!37 null-__Array__Int__Int__)))
(assert (= (select var3341!37 36) var2103)) ; Statement: $r1[36] = $i41 
(define-const var1871 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i43 = (int) -1 
(declare-const var3341!38 (Array Int Int))
(assert (not (= var3341!38 null-__Array__Int__Int__)))
(assert (= (select var3341!38 37) var1871)) ; Statement: $r1[37] = $i43 
(define-const var2441 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i45 = (int) -1 
(declare-const var3341!39 (Array Int Int))
(assert (not (= var3341!39 null-__Array__Int__Int__)))
(assert (= (select var3341!39 38) var2441)) ; Statement: $r1[38] = $i45 
(define-const var2860 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i47 = (int) -1 
(declare-const var3341!40 (Array Int Int))
(assert (not (= var3341!40 null-__Array__Int__Int__)))
(assert (= (select var3341!40 39) var2860)) ; Statement: $r1[39] = $i47 
(define-const var3441 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i49 = (int) -1 
(declare-const var3341!41 (Array Int Int))
(assert (not (= var3341!41 null-__Array__Int__Int__)))
(assert (= (select var3341!41 40) var3441)) ; Statement: $r1[40] = $i49 
(define-const var378 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i51 = (int) -1 
(declare-const var3341!42 (Array Int Int))
(assert (not (= var3341!42 null-__Array__Int__Int__)))
(assert (= (select var3341!42 41) var378)) ; Statement: $r1[41] = $i51 
(define-const var2682 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i53 = (int) -1 
(declare-const var3341!43 (Array Int Int))
(assert (not (= var3341!43 null-__Array__Int__Int__)))
(assert (= (select var3341!43 42) var2682)) ; Statement: $r1[42] = $i53 
(define-const var61 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i55 = (int) -1 
(declare-const var3341!44 (Array Int Int))
(assert (not (= var3341!44 null-__Array__Int__Int__)))
(assert (= (select var3341!44 43) var61)) ; Statement: $r1[43] = $i55 
(define-const var787 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i57 = (int) -1 
(declare-const var3341!45 (Array Int Int))
(assert (not (= var3341!45 null-__Array__Int__Int__)))
(assert (= (select var3341!45 44) var787)) ; Statement: $r1[44] = $i57 
(define-const var2613 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i59 = (int) -1 
(declare-const var3341!46 (Array Int Int))
(assert (not (= var3341!46 null-__Array__Int__Int__)))
(assert (= (select var3341!46 45) var2613)) ; Statement: $r1[45] = $i59 
(define-const var84 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i61 = (int) -1 
(declare-const var3341!47 (Array Int Int))
(assert (not (= var3341!47 null-__Array__Int__Int__)))
(assert (= (select var3341!47 46) var84)) ; Statement: $r1[46] = $i61 
(define-const var1353 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i63 = (int) -1 
(declare-const var3341!48 (Array Int Int))
(assert (not (= var3341!48 null-__Array__Int__Int__)))
(assert (= (select var3341!48 47) var1353)) ; Statement: $r1[47] = $i63 
(define-const var153 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i65 = (int) -1 
(declare-const var3341!49 (Array Int Int))
(assert (not (= var3341!49 null-__Array__Int__Int__)))
(assert (= (select var3341!49 48) var153)) ; Statement: $r1[48] = $i65 
(declare-const var3341!50 (Array Int Int))
(assert (not (= var3341!50 null-__Array__Int__Int__)))
(assert (= (select var3341!50 49) 10)) ; Statement: $r1[49] = 10 
(declare-const var3341!51 (Array Int Int))
(assert (not (= var3341!51 null-__Array__Int__Int__)))
(assert (= (select var3341!51 50) 11)) ; Statement: $r1[50] = 11 
(declare-const var3341!52 (Array Int Int))
(assert (not (= var3341!52 null-__Array__Int__Int__)))
(assert (= (select var3341!52 51) 12)) ; Statement: $r1[51] = 12 
(declare-const var3341!53 (Array Int Int))
(assert (not (= var3341!53 null-__Array__Int__Int__)))
(assert (= (select var3341!53 52) 13)) ; Statement: $r1[52] = 13 
(declare-const var3341!54 (Array Int Int))
(assert (not (= var3341!54 null-__Array__Int__Int__)))
(assert (= (select var3341!54 53) 14)) ; Statement: $r1[53] = 14 
(declare-const var3341!55 (Array Int Int))
(assert (not (= var3341!55 null-__Array__Int__Int__)))
(assert (= (select var3341!55 54) 15)) ; Statement: $r1[54] = 15 
(define-const var1197 (Array Int Int) var3341!55) ; Statement: <org.apache.tomcat.util.buf.HexUtils: int[] DEC> = $r1 
(define-const var1564 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (byte)[16] 
(declare-const var1564!1 (Array Int Int))
(assert (not (= var1564!1 null-__Array__Int__Int__)))
(assert (= (select var1564!1 0) 48)) ; Statement: $r2[0] = 48 
(declare-const var1564!2 (Array Int Int))
(assert (not (= var1564!2 null-__Array__Int__Int__)))
(assert (= (select var1564!2 1) 49)) ; Statement: $r2[1] = 49 
(declare-const var1564!3 (Array Int Int))
(assert (not (= var1564!3 null-__Array__Int__Int__)))
(assert (= (select var1564!3 2) 50)) ; Statement: $r2[2] = 50 
(declare-const var1564!4 (Array Int Int))
(assert (not (= var1564!4 null-__Array__Int__Int__)))
(assert (= (select var1564!4 3) 51)) ; Statement: $r2[3] = 51 
(declare-const var1564!5 (Array Int Int))
(assert (not (= var1564!5 null-__Array__Int__Int__)))
(assert (= (select var1564!5 4) 52)) ; Statement: $r2[4] = 52 
(declare-const var1564!6 (Array Int Int))
(assert (not (= var1564!6 null-__Array__Int__Int__)))
(assert (= (select var1564!6 5) 53)) ; Statement: $r2[5] = 53 
(declare-const var1564!7 (Array Int Int))
(assert (not (= var1564!7 null-__Array__Int__Int__)))
(assert (= (select var1564!7 6) 54)) ; Statement: $r2[6] = 54 
(declare-const var1564!8 (Array Int Int))
(assert (not (= var1564!8 null-__Array__Int__Int__)))
(assert (= (select var1564!8 7) 55)) ; Statement: $r2[7] = 55 
(declare-const var1564!9 (Array Int Int))
(assert (not (= var1564!9 null-__Array__Int__Int__)))
(assert (= (select var1564!9 8) 56)) ; Statement: $r2[8] = 56 
(declare-const var1564!10 (Array Int Int))
(assert (not (= var1564!10 null-__Array__Int__Int__)))
(assert (= (select var1564!10 9) 57)) ; Statement: $r2[9] = 57 
(declare-const var1564!11 (Array Int Int))
(assert (not (= var1564!11 null-__Array__Int__Int__)))
(assert (= (select var1564!11 10) 97)) ; Statement: $r2[10] = 97 
(declare-const var1564!12 (Array Int Int))
(assert (not (= var1564!12 null-__Array__Int__Int__)))
(assert (= (select var1564!12 11) 98)) ; Statement: $r2[11] = 98 
(declare-const var1564!13 (Array Int Int))
(assert (not (= var1564!13 null-__Array__Int__Int__)))
(assert (= (select var1564!13 12) 99)) ; Statement: $r2[12] = 99 
(declare-const var1564!14 (Array Int Int))
(assert (not (= var1564!14 null-__Array__Int__Int__)))
(assert (= (select var1564!14 13) 100)) ; Statement: $r2[13] = 100 
(declare-const var1564!15 (Array Int Int))
(assert (not (= var1564!15 null-__Array__Int__Int__)))
(assert (= (select var1564!15 14) 101)) ; Statement: $r2[14] = 101 
(declare-const var1564!16 (Array Int Int))
(assert (not (= var1564!16 null-__Array__Int__Int__)))
(assert (= (select var1564!16 15) 102)) ; Statement: $r2[15] = 102 
(define-const var1343 (Array Int Int) var1564!16) ; Statement: <org.apache.tomcat.util.buf.HexUtils: byte[] HEX> = $r2 
(define-const var1179 String "0123456789abcdef") ; Statement: $r3 = "0123456789abcdef" 
(assert true)
(define-const var3885 (Array Int Int) (toCharArray/415275702 var1179)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>() 
(define-const var3935 (Array Int Int) var3885) ; Statement: <org.apache.tomcat.util.buf.HexUtils: char[] hex> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2780_getManager/-2041865158=([java.lang.Class], org.apache.tomcat.util.res.StringManager), arr-Int-init=([], int[]), cast-from-Int-to-Int=([int], int), toCharArray/415275702=([java.lang.String], char[])}
; {var2780=org.apache.tomcat.util.res.StringManager, var91=org.apache.tomcat.util.buf.HexUtils, var1298=$r0, var3884=<org.apache.tomcat.util.buf.HexUtils: org.apache.tomcat.util.res.StringManager sm>, var3341=$r1, var1488=$i1, var1588=$i3, var3927=$i5, var2429=$i7, var470=$i9, var2058=$i11, var2355=$i13, var3433=$i15, var2759=$i17, var3963=$i19, var3886=$i21, var55=$i23, var671=$i25, var1745=$i27, var3155=$i29, var1102=$i31, var2931=$i33, var1227=$i35, var2922=$i37, var3020=$i39, var2103=$i41, var1871=$i43, var2441=$i45, var2860=$i47, var3441=$i49, var378=$i51, var2682=$i53, var61=$i55, var787=$i57, var2613=$i59, var84=$i61, var1353=$i63, var153=$i65, var1197=<org.apache.tomcat.util.buf.HexUtils: int[] DEC>, var1564=$r2, var1343=<org.apache.tomcat.util.buf.HexUtils: byte[] HEX>, var1179=$r3, var3885=$r4, var3935=<org.apache.tomcat.util.buf.HexUtils: char[] hex>}
; {org.apache.tomcat.util.res.StringManager=var2780, org.apache.tomcat.util.buf.HexUtils=var91, $r0=var1298, <org.apache.tomcat.util.buf.HexUtils: org.apache.tomcat.util.res.StringManager sm>=var3884, $r1=var3341, $i1=var1488, $i3=var1588, $i5=var3927, $i7=var2429, $i9=var470, $i11=var2058, $i13=var2355, $i15=var3433, $i17=var2759, $i19=var3963, $i21=var3886, $i23=var55, $i25=var671, $i27=var1745, $i29=var3155, $i31=var1102, $i33=var2931, $i35=var1227, $i37=var2922, $i39=var3020, $i41=var2103, $i43=var1871, $i45=var2441, $i47=var2860, $i49=var3441, $i51=var378, $i53=var2682, $i55=var61, $i57=var787, $i59=var2613, $i61=var84, $i63=var1353, $i65=var153, <org.apache.tomcat.util.buf.HexUtils: int[] DEC>=var1197, $r2=var1564, <org.apache.tomcat.util.buf.HexUtils: byte[] HEX>=var1343, $r3=var1179, $r4=var3885, <org.apache.tomcat.util.buf.HexUtils: char[] hex>=var3935}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = staticinvoke <org.apache.tomcat.util.res.StringManager: org.apache.tomcat.util.res.StringManager getManager(java.lang.Class)>(class "Lorg/apache/tomcat/util/buf/HexUtils;");	<org.apache.tomcat.util.buf.HexUtils: org.apache.tomcat.util.res.StringManager sm> = $r0;	$r1 = newarray (int)[55];	$r1[0] = 0;	$r1[1] = 1;	$r1[2] = 2;	$r1[3] = 3;	$r1[4] = 4;	$r1[5] = 5;	$r1[6] = 6;	$r1[7] = 7;	$r1[8] = 8;	$r1[9] = 9;	$i1 = (int) -1;	$r1[10] = $i1;	$i3 = (int) -1;	$r1[11] = $i3;	$i5 = (int) -1;	$r1[12] = $i5;	$i7 = (int) -1;	$r1[13] = $i7;	$i9 = (int) -1;	$r1[14] = $i9;	$i11 = (int) -1;	$r1[15] = $i11;	$i13 = (int) -1;	$r1[16] = $i13;	$r1[17] = 10;	$r1[18] = 11;	$r1[19] = 12;	$r1[20] = 13;	$r1[21] = 14;	$r1[22] = 15;	$i15 = (int) -1;	$r1[23] = $i15;	$i17 = (int) -1;	$r1[24] = $i17;	$i19 = (int) -1;	$r1[25] = $i19;	$i21 = (int) -1;	$r1[26] = $i21;	$i23 = (int) -1;	$r1[27] = $i23;	$i25 = (int) -1;	$r1[28] = $i25;	$i27 = (int) -1;	$r1[29] = $i27;	$i29 = (int) -1;	$r1[30] = $i29;	$i31 = (int) -1;	$r1[31] = $i31;	$i33 = (int) -1;	$r1[32] = $i33;	$i35 = (int) -1;	$r1[33] = $i35;	$i37 = (int) -1;	$r1[34] = $i37;	$i39 = (int) -1;	$r1[35] = $i39;	$i41 = (int) -1;	$r1[36] = $i41;	$i43 = (int) -1;	$r1[37] = $i43;	$i45 = (int) -1;	$r1[38] = $i45;	$i47 = (int) -1;	$r1[39] = $i47;	$i49 = (int) -1;	$r1[40] = $i49;	$i51 = (int) -1;	$r1[41] = $i51;	$i53 = (int) -1;	$r1[42] = $i53;	$i55 = (int) -1;	$r1[43] = $i55;	$i57 = (int) -1;	$r1[44] = $i57;	$i59 = (int) -1;	$r1[45] = $i59;	$i61 = (int) -1;	$r1[46] = $i61;	$i63 = (int) -1;	$r1[47] = $i63;	$i65 = (int) -1;	$r1[48] = $i65;	$r1[49] = 10;	$r1[50] = 11;	$r1[51] = 12;	$r1[52] = 13;	$r1[53] = 14;	$r1[54] = 15;	<org.apache.tomcat.util.buf.HexUtils: int[] DEC> = $r1;	$r2 = newarray (byte)[16];	$r2[0] = 48;	$r2[1] = 49;	$r2[2] = 50;	$r2[3] = 51;	$r2[4] = 52;	$r2[5] = 53;	$r2[6] = 54;	$r2[7] = 55;	$r2[8] = 56;	$r2[9] = 57;	$r2[10] = 97;	$r2[11] = 98;	$r2[12] = 99;	$r2[13] = 100;	$r2[14] = 101;	$r2[15] = 102;	<org.apache.tomcat.util.buf.HexUtils: byte[] HEX> = $r2;	$r3 = "0123456789abcdef";	$r4 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	<org.apache.tomcat.util.buf.HexUtils: char[] hex> = $r4;	return
;block_num 1