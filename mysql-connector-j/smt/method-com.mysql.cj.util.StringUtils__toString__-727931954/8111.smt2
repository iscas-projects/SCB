(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var12 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var12) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var12 var12)
(declare-const var1102 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1102 null-__Array__Int__Int__)))
(declare-const var1667 var12) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var1667 null-var12)))
(define-const var2775 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-2015205558 var2775 var1102 var1667)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, r2) 

(declare-const var2775!1 String)
(declare-const var1102!1 (Array Int Int))
(declare-const var1667!1 var12)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1102=r1, var12=java.nio.charset.Charset, var1667=r2, var2775=$r0}
; {r1=var1102, java.nio.charset.Charset=var12, r2=var1667, $r0=var2775}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: byte[];	r2 := @parameter1: java.nio.charset.Charset;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, r2);	return $r0
;block_num 1