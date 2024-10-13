(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3223-hex (Array Int Int))
(declare-const var2957 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2957 null-Int)))
(define-const var1981 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1981 4)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>(4) 

(declare-const var1981!1 String)
(declare-const var3047 Int)
(define-const var1143 (Array Int Int) var3223-hex) ; Statement: $r1 = <org.apache.tomcat.util.buf.HexUtils: char[] hex> 
(define-const var3580 Int (bv2nat (bvand ((_ int2bv 64) var2957) ((_ int2bv 64) 61440)))) ; Statement: $c1 = c0 & 61440 
(define-const var436 Int (cast-from-Int-to-Int var3580)) ; Statement: $i12 = (int) $c1 
(define-const var3856 Int (div var436 (to_int (^ 2 12)))) ; Statement: $i2 = $i12 >> 12 
(define-const var3785 Int (select var1143 var3856)) ; Statement: $c3 = $r1[$i2] 
(assert true)
;(assert (append/-1166366385 var1981!1 var3785)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var1981!2 String)
(assert (str.prefixof var1981!1 var1981!2))
(define-const var3042 (Array Int Int) var3223-hex) ; Statement: $r2 = <org.apache.tomcat.util.buf.HexUtils: char[] hex> 
(define-const var1943 Int (bv2nat (bvand ((_ int2bv 64) var2957) ((_ int2bv 64) 3840)))) ; Statement: $c4 = c0 & 3840 
(define-const var2123 Int (cast-from-Int-to-Int var1943)) ; Statement: $i13 = (int) $c4 
(define-const var259 Int (div var2123 (to_int (^ 2 8)))) ; Statement: $i5 = $i13 >> 8 
(define-const var2634 Int (select var3042 var259)) ; Statement: $c6 = $r2[$i5] 
(assert true)
;(assert (append/-1166366385 var1981!2 var2634)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var1981!3 String)
(assert (str.prefixof var1981!2 var1981!3))
(define-const var322 (Array Int Int) var3223-hex) ; Statement: $r3 = <org.apache.tomcat.util.buf.HexUtils: char[] hex> 
(define-const var2871 Int (bv2nat (bvand ((_ int2bv 64) var2957) ((_ int2bv 64) 240)))) ; Statement: $c7 = c0 & 240 
(define-const var2109 Int (cast-from-Int-to-Int var2871)) ; Statement: $i14 = (int) $c7 
(define-const var2011 Int (div var2109 (to_int (^ 2 4)))) ; Statement: $i8 = $i14 >> 4 
(define-const var185 Int (select var322 var2011)) ; Statement: $c9 = $r3[$i8] 
(assert true)
;(assert (append/-1166366385 var1981!3 var185)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9) 
(declare-const var1981!4 String)
(assert (str.prefixof var1981!3 var1981!4))
(define-const var1061 (Array Int Int) var3223-hex) ; Statement: $r4 = <org.apache.tomcat.util.buf.HexUtils: char[] hex> 
(define-const var192 Int (bv2nat (bvand ((_ int2bv 64) var2957) ((_ int2bv 64) 15)))) ; Statement: $c10 = c0 & 15 
(define-const var2997 Int (cast-from-Int-to-Int var192)) ; Statement: $i15 = (int) $c10 
(define-const var2359 Int (select var1061 var2997)) ; Statement: $c11 = $r4[$i15] 
(assert true)
;(assert (append/-1166366385 var1981!4 var2359)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11) 
(declare-const var1981!5 String)
(assert (str.prefixof var1981!4 var1981!5))
(assert true)
(define-const var3303 String (toString/-2075883882 var1981!5)) ; Statement: $r5 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2957=c0, var1981=$r6, var3047=4, var3223=org.apache.tomcat.util.buf.HexUtils, var1143=$r1, var3580=$c1, var436=$i12, var3856=$i2, var3785=$c3, var3042=$r2, var1943=$c4, var2123=$i13, var259=$i5, var2634=$c6, var322=$r3, var2871=$c7, var2109=$i14, var2011=$i8, var185=$c9, var1061=$r4, var192=$c10, var2997=$i15, var2359=$c11, var3303=$r5}
; {c0=var2957, $r6=var1981, 4=var3047, org.apache.tomcat.util.buf.HexUtils=var3223, $r1=var1143, $c1=var3580, $i12=var436, $i2=var3856, $c3=var3785, $r2=var3042, $c4=var1943, $i13=var2123, $i5=var259, $c6=var2634, $r3=var322, $c7=var2871, $i14=var2109, $i8=var2011, $c9=var185, $r4=var1061, $c10=var192, $i15=var2997, $c11=var2359, $r5=var3303}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>(4);	$r1 = <org.apache.tomcat.util.buf.HexUtils: char[] hex>;	$c1 = c0 & 61440;	$i12 = (int) $c1;	$i2 = $i12 >> 12;	$c3 = $r1[$i2];	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r2 = <org.apache.tomcat.util.buf.HexUtils: char[] hex>;	$c4 = c0 & 3840;	$i13 = (int) $c4;	$i5 = $i13 >> 8;	$c6 = $r2[$i5];	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	$r3 = <org.apache.tomcat.util.buf.HexUtils: char[] hex>;	$c7 = c0 & 240;	$i14 = (int) $c7;	$i8 = $i14 >> 4;	$c9 = $r3[$i8];	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9);	$r4 = <org.apache.tomcat.util.buf.HexUtils: char[] hex>;	$c10 = c0 & 15;	$i15 = (int) $c10;	$c11 = $r4[$i15];	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c11);	$r5 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1