(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1272 0)
(declare-sort var27 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var1272) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var27-ISO_8859_1 var1272)
(declare-const var1936 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var1936 null-Int)))
(declare-const var985 Int) ; Statement: b1 := @parameter1: byte 
(assert (not (= var985 null-Int)))
(define-const var2604 Int (cast-from-Int-to-Int var1936)) ; Statement: $i6 = (int) b0 
 ; Statement: if $i6 < 32 goto $r5 = new java.lang.String 
(assert (< var2604 32)) ; Cond: $i6 < 32 
(define-const var357 String String-init) ; Statement: $r5 = new java.lang.String 
(define-const var425 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (byte)[2] 
(declare-const var425!1 (Array Int Int))
(assert (not (= var425!1 null-__Array__Int__Int__)))
(assert (= (select var425!1 0) var1936)) ; Statement: $r3[0] = b0 
(declare-const var425!2 (Array Int Int))
(assert (not (= var425!2 null-__Array__Int__Int__)))
(assert (= (select var425!2 1) var985)) ; Statement: $r3[1] = b1 
(define-const var1274 var1272 var27-ISO_8859_1) ; Statement: $r4 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1> 
(assert true)
;(assert (<init>/-2015205558 var357 var425!2 var1274)) ; Statement: specialinvoke $r5.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r4) 

(declare-const var357!1 String)
(declare-const var425!3 (Array Int Int))
(declare-const var1274!1 var1272)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.String), arr-Int-init=([], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1936=b0, var985=b1, var2604=$i6, var357=$r5, var425=$r3, var1272=java.nio.charset.Charset, var27=java.nio.charset.StandardCharsets, var1274=$r4}
; {b0=var1936, b1=var985, $i6=var2604, $r5=var357, $r3=var425, java.nio.charset.Charset=var1272, java.nio.charset.StandardCharsets=var27, $r4=var1274}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts b0 := @parameter0: byte;	b1 := @parameter1: byte;	$i6 = (int) b0;	if $i6 < 32 goto $r5 = new java.lang.String;	$r5 = new java.lang.String;	$r3 = newarray (byte)[2];	$r3[0] = b0;	$r3[1] = b1;	$r4 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset ISO_8859_1>;	specialinvoke $r5.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r4);	return $r5
;block_num 2