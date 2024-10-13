(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3502 0)
(declare-sort var961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1282631507 (var961) String)
(declare-const null-var3502 var3502)
(declare-const null-var961 var961)
(declare-const null-ClassObject ClassObject)
(declare-const var947 var3502) ; Statement: r6 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var947 null-var3502)))
(declare-const var3622 var961) ; Statement: r0 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var3622 null-var961)))
(declare-const var1558 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var1558 null-ClassObject)))
(define-const var3909 String "collection") ; Statement: $r2 = "collection" 
(assert true)
(define-const var1511 String (getName/1282631507 var3622)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getName()>() 
(assert true)
(define-const var2021 Bool (= var3909 var1511)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2021 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1282631507=([org.apache.ibatis.parsing.XNode], java.lang.String)}
; {var3502=org.apache.ibatis.builder.xml.XMLMapperBuilder, var947=r6, var961=org.apache.ibatis.parsing.XNode, var3622=r0, var1558=r5, var3909=$r2, var1511=$r1, var2021=$z0}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var3502, r6=var947, org.apache.ibatis.parsing.XNode=var961, r0=var3622, r5=var1558, $r2=var3909, $r1=var1511, $z0=var2021}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r0 := @parameter0: org.apache.ibatis.parsing.XNode;	r5 := @parameter1: java.lang.Class;	$r2 = "collection";	$r1 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto return;	return
;block_num 2