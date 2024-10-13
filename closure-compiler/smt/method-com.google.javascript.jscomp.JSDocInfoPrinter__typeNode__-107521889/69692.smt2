(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1238 0)
(declare-sort var3300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendTypeNode/-548978742 (var1238 String var3300) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1238 var1238)
(declare-const null-var3300 var3300)
(declare-const var2319 var1238) ; Statement: r1 := @this: com.google.javascript.jscomp.JSDocInfoPrinter 
(assert (not (= var2319 null-var1238)))
(declare-const var377 var3300) ; Statement: r2 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var377 null-var3300)))
(define-const var2403 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2403)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2403!1 String)
(assert (= var2403!1 ""))
(assert true)
;(assert (appendTypeNode/-548978742 var2319 var2403!1 var377)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.JSDocInfoPrinter: void appendTypeNode(java.lang.StringBuilder,com.google.javascript.rhino.Node)>($r0, r2) 

(declare-const var2319!1 var1238)
(declare-const var2403!2 String)
(declare-const var377!1 var3300)
(assert true)
(define-const var3003 String (toString/-2075883882 var2403!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendTypeNode/-548978742=([com.google.javascript.jscomp.JSDocInfoPrinter, java.lang.StringBuilder, com.google.javascript.rhino.Node], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1238=com.google.javascript.jscomp.JSDocInfoPrinter, var2319=r1, var3300=com.google.javascript.rhino.Node, var377=r2, var2403=$r0, var3003=$r3}
; {com.google.javascript.jscomp.JSDocInfoPrinter=var1238, r1=var2319, com.google.javascript.rhino.Node=var3300, r2=var377, $r0=var2403, $r3=var3003}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.JSDocInfoPrinter;	r2 := @parameter0: com.google.javascript.rhino.Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<com.google.javascript.jscomp.JSDocInfoPrinter: void appendTypeNode(java.lang.StringBuilder,com.google.javascript.rhino.Node)>($r0, r2);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1