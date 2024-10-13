(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2606 0)
(declare-sort var1713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var2606) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1713-ISO_8859_1 var2606)
(declare-const var608 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var608 null-Int)))
(define-const var880 Int (cast-from-Int-to-Int var608)) ; Statement: $i2 = (int) b0 
 ; Statement: if $i2 < 0 goto $r6 = new java.lang.String 
(assert (< var880 0)) ; Cond: $i2 < 0 
(define-const var1683 String String-init) ; Statement: $r6 = new java.lang.String 
(define-const var1689 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (byte)[1] 
(declare-const var1689!1 (Array Int Int))
(assert (not (= var1689!1 null-__Array__Int__Int__)))
(assert (= (select var1689!1 0) var608)) ; Statement: $r1[0] = b0 
(define-const var2374 var2606 var1713-ISO_8859_1) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-2015205558 var1683 var1689!1 var2374)) ; Statement: specialinvoke $r6.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r1, $r2) 

(declare-const var1683!1 String)
(declare-const var1689!2 (Array Int Int))
(declare-const var2374!1 var2606)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.String), arr-Int-init=([], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var608=b0, var880=$i2, var1683=$r6, var1689=$r1, var2606=java.nio.charset.Charset, var1713=java.nio.charset.StandardCharsets, var2374=$r2}
; {b0=var608, $i2=var880, $r6=var1683, $r1=var1689, java.nio.charset.Charset=var2606, java.nio.charset.StandardCharsets=var1713, $r2=var2374}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts b0 := @parameter0: byte;	$i2 = (int) b0;	if $i2 < 0 goto $r6 = new java.lang.String;	$r6 = new java.lang.String;	$r1 = newarray (byte)[1];	$r1[0] = b0;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r6.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r1, $r2);	return $r6
;block_num 2