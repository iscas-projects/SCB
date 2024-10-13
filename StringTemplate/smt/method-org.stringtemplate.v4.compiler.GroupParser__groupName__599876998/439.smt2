(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var773 0)
(declare-sort var2219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var773 var773)
(declare-const null-var2219 var2219)
(declare-const var2410 var773) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.GroupParser 
(assert (not (= var2410 null-var773)))
(define-const var767 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var767)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var767!1 String)
(assert (= var767!1 ""))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var207 var2219) ; Statement: $r10 := @caughtexception 
(assert (not (= var207 null-var2219)))
(assert true) ; Non Conditional
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var773=org.stringtemplate.v4.compiler.GroupParser, var2410=r1, var767=$r18, var2219=java.lang.Throwable, var207=$r10}
; {org.stringtemplate.v4.compiler.GroupParser=var773, r1=var2410, $r18=var767, java.lang.Throwable=var2219, $r10=var207}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.GroupParser;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r10 := @caughtexception;	throw $r10
;block_num 3