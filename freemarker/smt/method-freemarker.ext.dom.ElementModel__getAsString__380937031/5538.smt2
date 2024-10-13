(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1314 0)
(declare-sort var1507 0)
(declare-sort var484 0)
(declare-sort var616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node/1974960422 (var484) var1507)
(declare-fun cast-from-var1314-to-var484 (var1314) var484)
(declare-fun var1507_getChildNodes/-162022572 (var1507) var616)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var616_getLength/224812497 (var616) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1314 var1314)
(declare-const var1172 var1314) ; Statement: r0 := @this: freemarker.ext.dom.ElementModel 
(assert (not (= var1172 null-var1314)))
(define-const var3378 var1507 (node/1974960422 (cast-from-var1314-to-var484 var1172))) ; Statement: $r1 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node> 
(define-const var346 var616 (var1507_getChildNodes/-162022572 var3378)) ; Statement: r2 = interfaceinvoke $r1.<org.w3c.dom.Node: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var682 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var682)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var682!1 String)
(assert (= var682!1 ""))
(define-const var1392 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1111 Int (var616_getLength/224812497 var346)) ; Statement: $i0 = interfaceinvoke r2.<org.w3c.dom.NodeList: int getLength()>() 
 ; Statement: if i2 >= $i0 goto $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1392 var1111)) ; Cond: i2 >= $i0 
(assert true)
(define-const var3997 String (toString/-2075883882 var682!1)) ; Statement: $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var1314-to-var484=([freemarker.ext.dom.ElementModel], freemarker.ext.dom.NodeModel), var1507_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var616_getLength/224812497=([org.w3c.dom.NodeList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1314=freemarker.ext.dom.ElementModel, var1172=r0, var1507=org.w3c.dom.Node, var484=freemarker.ext.dom.NodeModel, var3378=$r1, var616=org.w3c.dom.NodeList, var346=r2, var682=$r17, var1392=i2, var1111=$i0, var3997=$r4}
; {freemarker.ext.dom.ElementModel=var1314, r0=var1172, org.w3c.dom.Node=var1507, freemarker.ext.dom.NodeModel=var484, $r1=var3378, org.w3c.dom.NodeList=var616, r2=var346, $r17=var682, i2=var1392, $i0=var1111, $r4=var3997}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.dom.ElementModel;	$r1 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node>;	r2 = interfaceinvoke $r1.<org.w3c.dom.Node: org.w3c.dom.NodeList getChildNodes()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i0 = interfaceinvoke r2.<org.w3c.dom.NodeList: int getLength()>();	if i2 >= $i0 goto $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3