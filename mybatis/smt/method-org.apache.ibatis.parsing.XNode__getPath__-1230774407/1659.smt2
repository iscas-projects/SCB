(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2507 0)
(declare-sort var3707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun node/1763767194 (var2507) var3707)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2507 var2507)
(declare-const var2724 var2507) ; Statement: r1 := @this: org.apache.ibatis.parsing.XNode 
(assert (not (= var2724 null-var2507)))
(define-const var1655 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1655)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1655!1 String)
(assert (= var1655!1 ""))
(define-const var510 var3707 (node/1763767194 var2724)) ; Statement: r5 = r1.<org.apache.ibatis.parsing.XNode: org.w3c.dom.Node node> 
(assert true) ; Non Conditional
(define-const var2608 Bool true) ; Statement: $z0 = r5 instanceof org.w3c.dom.Element 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2608 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1007 String (toString/-2075883882 var1655!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), node/1763767194=([org.apache.ibatis.parsing.XNode], org.w3c.dom.Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2507=org.apache.ibatis.parsing.XNode, var2724=r1, var1655=$r0, var3707=org.w3c.dom.Node, var510=r5, var2608=$z0, var1007=$r2}
; {org.apache.ibatis.parsing.XNode=var2507, r1=var2724, $r0=var1655, org.w3c.dom.Node=var3707, r5=var510, $z0=var2608, $r2=var1007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.parsing.XNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r5 = r1.<org.apache.ibatis.parsing.XNode: org.w3c.dom.Node node>;	$z0 = r5 instanceof org.w3c.dom.Element;	if $z0 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3