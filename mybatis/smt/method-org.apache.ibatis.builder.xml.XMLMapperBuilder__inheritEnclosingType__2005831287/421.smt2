(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var490 0)
(declare-sort var450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1282631507 (var450) String)
(declare-const null-var490 var490)
(declare-const null-var450 var450)
(declare-const null-ClassObject ClassObject)
(declare-const var2387 var490) ; Statement: r9 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var2387 null-var490)))
(declare-const var2944 var450) ; Statement: r0 := @parameter0: org.apache.ibatis.parsing.XNode 
(assert (not (= var2944 null-var450)))
(declare-const var3237 ClassObject) ; Statement: r6 := @parameter1: java.lang.Class 
(assert (not (= var3237 null-ClassObject)))
(define-const var3855 String "association") ; Statement: $r2 = "association" 
(assert true)
(define-const var2570 String (getName/1282631507 var2944)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getName()>() 
(assert true)
(define-const var1400 Bool (= var3855 var2570)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "case" 
(assert (= (ite var1400 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3376 String "case") ; Statement: $r4 = "case" 
(assert true)
(define-const var2693 String (getName/1282631507 var2944)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getName()>() 
(assert true)
(define-const var2976 Bool (= var3376 var2693)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto return null 
(assert (= (ite var2976 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1282631507=([org.apache.ibatis.parsing.XNode], java.lang.String)}
; {var490=org.apache.ibatis.builder.xml.XMLMapperBuilder, var2387=r9, var450=org.apache.ibatis.parsing.XNode, var2944=r0, var3237=r6, var3855=$r2, var2570=$r1, var1400=$z0, var3376=$r4, var2693=$r3, var2976=$z1}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var490, r9=var2387, org.apache.ibatis.parsing.XNode=var450, r0=var2944, r6=var3237, $r2=var3855, $r1=var2570, $z0=var1400, $r4=var3376, $r3=var2693, $z1=var2976}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r9 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r0 := @parameter0: org.apache.ibatis.parsing.XNode;	r6 := @parameter1: java.lang.Class;	$r2 = "association";	$r1 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "case";	$r4 = "case";	$r3 = virtualinvoke r0.<org.apache.ibatis.parsing.XNode: java.lang.String getName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z1 == 0 goto return null;	return null
;block_num 3