(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var734 0)
(declare-sort var1489 0)
(declare-sort var3268 0)
(declare-sort var1798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3268-init () var3268)
(declare-fun <init>/109150314 (var3268 var734 var1489 var1798 Bool) void)
(declare-fun cast-from-String-to-var1798 (String) var1798)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var734 var734)
(declare-const null-var1489 var1489)
(declare-const var3452 var734) ; Statement: r2 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3452 null-var734)))
(declare-const var1208 var1489) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ControlFlowGraph 
(assert (not (= var1208 null-var1489)))
(define-const var1591 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1591)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1591!1 String)
(assert (= var1591!1 ""))
(define-const var2123 var3268 var3268-init) ; Statement: $r1 = new com.google.javascript.jscomp.DotFormatter 
(assert true)
;(assert (<init>/109150314 var2123 var3452 var1208 (cast-from-String-to-var1798 var1591!1) (ite (= 1 0) true false))) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.DotFormatter: void <init>(com.google.javascript.rhino.Node,com.google.javascript.jscomp.ControlFlowGraph,java.lang.Appendable,boolean)>(r2, r3, $r0, 0) 

(declare-const var2123!1 var3268)
(declare-const var3452!1 var734)
(declare-const var1208!1 var1489)
(declare-const var1591!2 String)
(declare-const var1702 Int)
(assert true)
(define-const var2410 String (toString/-2075883882 var1591!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3268-init=([], com.google.javascript.jscomp.DotFormatter), <init>/109150314=([com.google.javascript.jscomp.DotFormatter, com.google.javascript.rhino.Node, com.google.javascript.jscomp.ControlFlowGraph, java.lang.Appendable, boolean], void), cast-from-String-to-var1798=([java.lang.StringBuilder], java.lang.Appendable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var734=com.google.javascript.rhino.Node, var3452=r2, var1489=com.google.javascript.jscomp.ControlFlowGraph, var1208=r3, var1591=$r0, var3268=com.google.javascript.jscomp.DotFormatter, var2123=$r1, var1798=java.lang.Appendable, var1702=0, var2410=$r4}
; {com.google.javascript.rhino.Node=var734, r2=var3452, com.google.javascript.jscomp.ControlFlowGraph=var1489, r3=var1208, $r0=var1591, com.google.javascript.jscomp.DotFormatter=var3268, $r1=var2123, java.lang.Appendable=var1798, 0=var1702, $r4=var2410}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ControlFlowGraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new com.google.javascript.jscomp.DotFormatter;	specialinvoke $r1.<com.google.javascript.jscomp.DotFormatter: void <init>(com.google.javascript.rhino.Node,com.google.javascript.jscomp.ControlFlowGraph,java.lang.Appendable,boolean)>(r2, r3, $r0, 0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1