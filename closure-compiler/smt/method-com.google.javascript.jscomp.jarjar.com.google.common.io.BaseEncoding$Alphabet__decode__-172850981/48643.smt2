(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var337 0)
(declare-sort var1809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1809-init () var1809)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2135481038 (var1809 String) void)
(declare-const null-var337 var337)
(declare-const null-Int Int)
(declare-const var3735 var337) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet 
(assert (not (= var3735 null-var337)))
(declare-const var2479 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2479 null-Int)))
(define-const var2731 Int (cast-from-Int-to-Int var2479)) ; Statement: $i2 = (int) c0 
 ; Statement: if $i2 <= 127 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: byte[] decodabet> 
(assert (not (<= var2731 127))) ; Negate: Cond: $i2 <= 127  
(define-const var1236 var1809 var1809-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException 
(define-const var2300 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2300)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2300!1 String)
(assert (= var2300!1 ""))
(assert true)
(define-const var3047 String (append/672562846 var2300!1 "Unrecognized character: 0x")) ; Statement: $r16 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized character: 0x") 
(declare-const var2300!2 String)
(assert (= var2300!2 (str.++ var2300!1 "Unrecognized character: 0x")))
(define-const var1652 Int (cast-from-Int-to-Int var2479)) ; Statement: $i3 = (int) c0 
(define-const var130 String (Int_toHexString/1865784998 var1652)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3) 
(assert true)
(define-const var2759 String (append/672562846 var3047 var130)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3047!1 String)
(assert (= var3047!1 (str.++ var3047 var130)))
(assert true)
(define-const var1125 String (toString/-2075883882 var2759)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2135481038 var1236 var1125)) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r18) 

(declare-const var1236!1 var1809)
(declare-const var1125!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var1809-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2135481038=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, java.lang.String], void)}
; {var337=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var3735=r0, var2479=c0, var2731=$i2, var1809=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, var1236=$r20, var2300=$r19, var3047=$r16, var1652=$i3, var130=$r15, var2759=$r17, var1125=$r18}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var337, r0=var3735, c0=var2479, $i2=var2731, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException=var1809, $r20=var1236, $r19=var2300, $r16=var3047, $i3=var1652, $r15=var130, $r17=var2759, $r18=var1125}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet;	c0 := @parameter0: char;	$i2 = (int) c0;	if $i2 <= 127 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: byte[] decodabet>;	$r20 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized character: 0x");	$i3 = (int) c0;	$r15 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r18);	throw $r20
;block_num 2