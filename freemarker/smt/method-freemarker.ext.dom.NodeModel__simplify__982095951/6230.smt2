(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1139 0)
(declare-sort var2372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var2372_simplify/-346852455 (var1139 String) void)
(declare-const null-var1139 var1139)
(declare-const var3321 var1139) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var3321 null-var1139)))
(define-const var2602 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2602 0)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(0) 

(declare-const var2602!1 String)
(declare-const var1148 Int)
;(assert (var2372_simplify/-346852455 var3321 var2602!1)) ; Statement: staticinvoke <freemarker.ext.dom.NodeModel: void simplify(org.w3c.dom.Node,java.lang.StringBuilder)>(r0, $r1) 

(declare-const var3321!1 var1139)
(declare-const var2602!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), var2372_simplify/-346852455=([org.w3c.dom.Node, java.lang.StringBuilder], void)}
; {var1139=org.w3c.dom.Node, var3321=r0, var2602=$r1, var1148=0, var2372=freemarker.ext.dom.NodeModel}
; {org.w3c.dom.Node=var1139, r0=var3321, $r1=var2602, 0=var1148, freemarker.ext.dom.NodeModel=var2372}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Node;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(0);	staticinvoke <freemarker.ext.dom.NodeModel: void simplify(org.w3c.dom.Node,java.lang.StringBuilder)>(r0, $r1);	return
;block_num 1