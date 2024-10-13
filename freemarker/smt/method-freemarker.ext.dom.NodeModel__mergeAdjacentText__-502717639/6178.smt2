(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort var2262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var2262_mergeAdjacentText/-1552195453 (var3362 String) void)
(declare-const null-var3362 var3362)
(declare-const var1162 var3362) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var1162 null-var3362)))
(define-const var2808 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2808 0)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(0) 

(declare-const var2808!1 String)
(declare-const var3374 Int)
;(assert (var2262_mergeAdjacentText/-1552195453 var1162 var2808!1)) ; Statement: staticinvoke <freemarker.ext.dom.NodeModel: void mergeAdjacentText(org.w3c.dom.Node,java.lang.StringBuilder)>(r0, $r1) 

(declare-const var1162!1 var3362)
(declare-const var2808!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), var2262_mergeAdjacentText/-1552195453=([org.w3c.dom.Node, java.lang.StringBuilder], void)}
; {var3362=org.w3c.dom.Node, var1162=r0, var2808=$r1, var3374=0, var2262=freemarker.ext.dom.NodeModel}
; {org.w3c.dom.Node=var3362, r0=var1162, $r1=var2808, 0=var3374, freemarker.ext.dom.NodeModel=var2262}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Node;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>(0);	staticinvoke <freemarker.ext.dom.NodeModel: void mergeAdjacentText(org.w3c.dom.Node,java.lang.StringBuilder)>(r0, $r1);	return
;block_num 1