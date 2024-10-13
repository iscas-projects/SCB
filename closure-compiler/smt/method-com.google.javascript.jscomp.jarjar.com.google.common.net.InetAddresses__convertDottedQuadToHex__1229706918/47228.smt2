(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var36 0)
(declare-sort var632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var632_textToNumericFormatV4/888634563 (String) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2027 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2027 null-String)))
(assert true)
(define-const var2552 Int (lastIndexOf/-1292097097 var2027 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58) 
(define-const var3832 Int (+ var2552 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= 0 0) (>= (str.len var2027) var3832) (>= var3832 0))))
(define-const var2727 String (substring/-1240304868 var2027 0 var3832)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(define-const var2464 Int (+ var2552 1)) ; Statement: $i2 = i0 + 1 
(assert (and true (and (>= var2464 0) (>= (str.len var2027) var2464))))
(define-const var1740 String (substring/850833817 var2027 var2464)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2) 
(define-const var2311 (Array Int Int) (var632_textToNumericFormatV4/888634563 var1740)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: byte[] textToNumericFormatV4(java.lang.String)>(r2) 
 ; Statement: if r3 != null goto $b3 = r3[0] 
(assert (not (= var2311 null-__Array__Int__Int__))) ; Cond: r3 != null 
(define-const var1526 Int (select var2311 0)) ; Statement: $b3 = r3[0] 
(define-const var1040 Int (cast-from-Int-to-Int var1526)) ; Statement: $s15 = (short) $b3 
(define-const var3992 Int (bv2nat (bvand ((_ int2bv 64) var1040) ((_ int2bv 64) 255)))) ; Statement: $s4 = $s15 & 255 
(define-const var2596 Int (cast-from-Int-to-Int var3992)) ; Statement: $i16 = (int) $s4 
(define-const var1292 Int (* var2596 (to_int (^ 2 8)))) ; Statement: $i7 = $i16 << 8 
(define-const var3250 Int (select var2311 1)) ; Statement: $b5 = r3[1] 
(define-const var3060 Int (cast-from-Int-to-Int var3250)) ; Statement: $s17 = (short) $b5 
(define-const var3977 Int (bv2nat (bvand ((_ int2bv 64) var3060) ((_ int2bv 64) 255)))) ; Statement: $s6 = $s17 & 255 
(define-const var1576 Int (cast-from-Int-to-Int var3977)) ; Statement: $i18 = (int) $s6 
(define-const var3053 Int (bv2nat (bvor ((_ int2bv 64) var1292) ((_ int2bv 64) var1576)))) ; Statement: $i8 = $i7 | $i18 
(define-const var3697 String (Int_toHexString/1865784998 var3053)) ; Statement: r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i8) 
(define-const var2857 Int (select var2311 2)) ; Statement: $b9 = r3[2] 
(define-const var20 Int (cast-from-Int-to-Int var2857)) ; Statement: $s19 = (short) $b9 
(define-const var359 Int (bv2nat (bvand ((_ int2bv 64) var20) ((_ int2bv 64) 255)))) ; Statement: $s10 = $s19 & 255 
(define-const var1547 Int (cast-from-Int-to-Int var359)) ; Statement: $i20 = (int) $s10 
(define-const var1777 Int (* var1547 (to_int (^ 2 8)))) ; Statement: $i13 = $i20 << 8 
(define-const var1800 Int (select var2311 3)) ; Statement: $b11 = r3[3] 
(define-const var130 Int (cast-from-Int-to-Int var1800)) ; Statement: $s21 = (short) $b11 
(define-const var2598 Int (bv2nat (bvand ((_ int2bv 64) var130) ((_ int2bv 64) 255)))) ; Statement: $s12 = $s21 & 255 
(define-const var254 Int (cast-from-Int-to-Int var2598)) ; Statement: $i22 = (int) $s12 
(define-const var2037 Int (bv2nat (bvor ((_ int2bv 64) var1777) ((_ int2bv 64) var254)))) ; Statement: $i14 = $i13 | $i22 
(define-const var466 String (Int_toHexString/1865784998 var2037)) ; Statement: r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i14) 
(define-const var557 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var557)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var557!1 String)
(assert (= var557!1 ""))
(assert true)
(define-const var1901 String (append/672562846 var557!1 var2727)) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var557!2 String)
(assert (= var557!2 (str.++ var557!1 var2727)))
(assert true)
(define-const var1782 String (append/672562846 var1901 var3697)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1901!1 String)
(assert (= var1901!1 (str.++ var1901 var3697)))
(assert true)
(define-const var2875 String (append/672562846 var1782 ":")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1782!1 String)
(assert (= var1782!1 (str.++ var1782 ":")))
(assert true)
(define-const var3194 String (append/672562846 var2875 var466)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2875!1 String)
(assert (= var2875!1 (str.++ var2875 var466)))
(assert true)
(define-const var3153 String (toString/-2075883882 var3194)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var632_textToNumericFormatV4/888634563=([java.lang.String], byte[]), cast-from-Int-to-Int=([byte], short), Int_toHexString/1865784998=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2027=r0, var36=null_type, var2552=i0, var3832=$i1, var2727=r1, var2464=$i2, var1740=r2, var632=com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses, var2311=r3, var1526=$b3, var1040=$s15, var3992=$s4, var2596=$i16, var1292=$i7, var3250=$b5, var3060=$s17, var3977=$s6, var1576=$i18, var3053=$i8, var3697=r4, var2857=$b9, var20=$s19, var359=$s10, var1547=$i20, var1777=$i13, var1800=$b11, var130=$s21, var2598=$s12, var254=$i22, var2037=$i14, var466=r5, var557=$r12, var1901=$r7, var1782=$r8, var2875=$r9, var3194=$r10, var3153=$r11}
; {r0=var2027, null_type=var36, i0=var2552, $i1=var3832, r1=var2727, $i2=var2464, r2=var1740, com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses=var632, r3=var2311, $b3=var1526, $s15=var1040, $s4=var3992, $i16=var2596, $i7=var1292, $b5=var3250, $s17=var3060, $s6=var3977, $i18=var1576, $i8=var3053, r4=var3697, $b9=var2857, $s19=var20, $s10=var359, $i20=var1547, $i13=var1777, $b11=var1800, $s21=var130, $s12=var2598, $i22=var254, $i14=var2037, r5=var466, $r12=var557, $r7=var1901, $r8=var1782, $r9=var2875, $r10=var3194, $r11=var3153}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58);	$i1 = i0 + 1;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$i2 = i0 + 1;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2);	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: byte[] textToNumericFormatV4(java.lang.String)>(r2);	if r3 != null goto $b3 = r3[0];	$b3 = r3[0];	$s15 = (short) $b3;	$s4 = $s15 & 255;	$i16 = (int) $s4;	$i7 = $i16 << 8;	$b5 = r3[1];	$s17 = (short) $b5;	$s6 = $s17 & 255;	$i18 = (int) $s6;	$i8 = $i7 | $i18;	r4 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i8);	$b9 = r3[2];	$s19 = (short) $b9;	$s10 = $s19 & 255;	$i20 = (int) $s10;	$i13 = $i20 << 8;	$b11 = r3[3];	$s21 = (short) $b11;	$s12 = $s21 & 255;	$i22 = (int) $s12;	$i14 = $i13 | $i22;	r5 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i14);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2