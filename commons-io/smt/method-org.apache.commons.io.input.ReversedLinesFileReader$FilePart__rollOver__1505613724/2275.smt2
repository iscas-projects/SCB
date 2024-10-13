(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2752 0)
(declare-sort var1994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentLastBytePos/-1627741209 (var2752) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1994-init () var1994)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1994 String) void)
(declare-const null-var2752 var2752)
(declare-const var1668 var2752) ; Statement: r0 := @this: org.apache.commons.io.input.ReversedLinesFileReader$FilePart 
(assert (not (= var1668 null-var2752)))
(define-const var897 Int (currentLastBytePos/-1627741209 var1668)) ; Statement: $i0 = r0.<org.apache.commons.io.input.ReversedLinesFileReader$FilePart: int currentLastBytePos> 
(define-const var3443 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i0 <= $i8 goto $l1 = r0.<org.apache.commons.io.input.ReversedLinesFileReader$FilePart: long no> 
(assert (not (<= var897 var3443))) ; Negate: Cond: $i0 <= $i8  
(define-const var1691 var1994 var1994-init) ; Statement: $r21 = new java.lang.IllegalStateException 
(define-const var59 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var59)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var59!1 String)
(assert (= var59!1 ""))
(assert true)
(define-const var2158 String (append/672562846 var59!1 "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=")) ; Statement: $r17 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=") 
(declare-const var59!2 String)
(assert (= var59!2 (str.++ var59!1 "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=")))
(define-const var2969 Int (currentLastBytePos/-1627741209 var1668)) ; Statement: $i6 = r0.<org.apache.commons.io.input.ReversedLinesFileReader$FilePart: int currentLastBytePos> 
(assert true)
(define-const var3596 String (append/-1001720160 var2158 var2969)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var2158!1 String)
(assert (str.prefixof var2158 var2158!1))
(assert true)
(define-const var343 String (toString/-2075883882 var3596)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1691 var343)) ; Statement: specialinvoke $r21.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19) 

(declare-const var1691!1 var1994)
(declare-const var343!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {currentLastBytePos/-1627741209=([org.apache.commons.io.input.ReversedLinesFileReader$FilePart], int), cast-from-Int-to-Int=([int], int), var1994-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2752=org.apache.commons.io.input.ReversedLinesFileReader$FilePart, var1668=r0, var897=$i0, var3443=$i8, var1994=java.lang.IllegalStateException, var1691=$r21, var59=$r20, var2158=$r17, var2969=$i6, var3596=$r18, var343=$r19}
; {org.apache.commons.io.input.ReversedLinesFileReader$FilePart=var2752, r0=var1668, $i0=var897, $i8=var3443, java.lang.IllegalStateException=var1994, $r21=var1691, $r20=var59, $r17=var2158, $i6=var2969, $r18=var3596, $r19=var343}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.ReversedLinesFileReader$FilePart;	$i0 = r0.<org.apache.commons.io.input.ReversedLinesFileReader$FilePart: int currentLastBytePos>;	$i8 = (int) -1;	if $i0 <= $i8 goto $l1 = r0.<org.apache.commons.io.input.ReversedLinesFileReader$FilePart: long no>;	$r21 = new java.lang.IllegalStateException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=");	$i6 = r0.<org.apache.commons.io.input.ReversedLinesFileReader$FilePart: int currentLastBytePos>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19);	throw $r21
;block_num 2