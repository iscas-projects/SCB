(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun data/1908198296 (var233) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var233 var233)
(declare-const var806 var233) ; Statement: r1 := @this: org.antlr.v4.runtime.ANTLRInputStream 
(assert (not (= var806 null-var233)))
(define-const var3397 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3251 (Array Int Int) (data/1908198296 var806)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.ANTLRInputStream: char[] data> 
(assert true)
;(assert (<init>/-915723298 var3397 var3251)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var3397!1 String)
(declare-const var3251!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), data/1908198296=([org.antlr.v4.runtime.ANTLRInputStream], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var233=org.antlr.v4.runtime.ANTLRInputStream, var806=r1, var3397=$r0, var3251=$r2}
; {org.antlr.v4.runtime.ANTLRInputStream=var233, r1=var806, $r0=var3397, $r2=var3251}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.ANTLRInputStream;	$r0 = new java.lang.String;	$r2 = r1.<org.antlr.v4.runtime.ANTLRInputStream: char[] data>;	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 1