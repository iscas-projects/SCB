(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var736 0)
(declare-sort var3653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var736_copy/-1804137453 (var1386 var3653) Int)
(declare-fun cast-from-String-to-var3653 (String) var3653)
(declare-const null-var1386 var1386)
(declare-const var2040 var1386) ; Statement: r1 := @parameter0: java.lang.Readable 
(assert (not (= var2040 null-var1386)))
(define-const var668 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var668)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var668!1 String)
(assert (= var668!1 ""))
(define-const var1098 Bool true) ; Statement: $z0 = r1 instanceof java.io.Reader 
 ; Statement: if $z0 == 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copy(java.lang.Readable,java.lang.Appendable)>(r1, $r0) 
(assert (= (ite var1098 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var736_copy/-1804137453 var2040 (cast-from-String-to-var3653 var668!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copy(java.lang.Readable,java.lang.Appendable)>(r1, $r0) 

(declare-const var2040!1 var1386)
(declare-const var668!2 String)
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var736_copy/-1804137453=([java.lang.Readable, java.lang.Appendable], long), cast-from-String-to-var3653=([java.lang.StringBuilder], java.lang.Appendable)}
; {var1386=java.lang.Readable, var2040=r1, var668=$r0, var1098=$z0, var736=com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams, var3653=java.lang.Appendable}
; {java.lang.Readable=var1386, r1=var2040, $r0=var668, $z0=var1098, com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams=var736, java.lang.Appendable=var3653}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @parameter0: java.lang.Readable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = r1 instanceof java.io.Reader;	if $z0 == 0 goto staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copy(java.lang.Readable,java.lang.Appendable)>(r1, $r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: long copy(java.lang.Readable,java.lang.Appendable)>(r1, $r0);	return $r0
;block_num 3