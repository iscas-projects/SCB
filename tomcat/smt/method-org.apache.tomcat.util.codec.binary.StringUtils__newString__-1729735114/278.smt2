(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-2015205558 (String (Array Int Int) var3682) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var3682 var3682)
(declare-const var22 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var22 null-__Array__Int__Int__)))
(declare-const var3771 var3682) ; Statement: r1 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3771 null-var3682)))
 ; Statement: if r0 != null goto $r2 = new java.lang.String 
(assert (not (= var22 null-__Array__Int__Int__))) ; Cond: r0 != null 
(define-const var3121 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-2015205558 var3121 var22 var3771)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r0, r1) 

(declare-const var3121!1 String)
(declare-const var22!1 (Array Int Int))
(declare-const var3771!1 var3682)
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var22=r0, var3682=java.nio.charset.Charset, var3771=r1, var3121=$r2}
; {r0=var22, java.nio.charset.Charset=var3682, r1=var3771, $r2=var3121}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: byte[];	r1 := @parameter1: java.nio.charset.Charset;	if r0 != null goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r0, r1);	return $r2
;block_num 3