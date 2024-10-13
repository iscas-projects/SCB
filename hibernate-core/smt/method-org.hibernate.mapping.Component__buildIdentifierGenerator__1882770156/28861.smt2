(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1049 0)
(declare-sort var1552 0)
(declare-sort var243 0)
(declare-sort var1703 0)
(declare-sort var3332 0)
(declare-sort var38 0)
(declare-sort var2773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierGeneratorStrategy/638985054 (var38) String)
(declare-fun cast-from-var1049-to-var38 (var1049) var38)
(declare-fun createIdentifierGenerator/-1438897604 (var38 var1552 var243 String String var3332) var2773)
(declare-const null-var1049 var1049)
(declare-const null-var1552 var1552)
(declare-const null-var243 var243)
(declare-const null-String String)
(declare-const null-var3332 var3332)
(declare-const var757 var1049) ; Statement: r0 := @this: org.hibernate.mapping.Component 
(assert (not (= var757 null-var1049)))
(declare-const var2781 var1552) ; Statement: r14 := @parameter0: org.hibernate.id.factory.IdentifierGeneratorFactory 
(assert (not (= var2781 null-var1552)))
(declare-const var1068 var243) ; Statement: r15 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var1068 null-var243)))
(declare-const var3161 String) ; Statement: r16 := @parameter2: java.lang.String 
(assert (not (= var3161 null-String)))
(declare-const var455 String) ; Statement: r17 := @parameter3: java.lang.String 
(assert (not (= var455 null-String)))
(declare-const var36 var3332) ; Statement: r3 := @parameter4: org.hibernate.mapping.RootClass 
(assert (not (= var36 null-var3332)))
(define-const var745 String "assigned") ; Statement: $r2 = "assigned" 
(assert true)
(define-const var2492 String (getIdentifierGeneratorStrategy/638985054 (cast-from-var1049-to-var38 var757))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Component: java.lang.String getIdentifierGeneratorStrategy()>() 
(assert true)
(define-const var2875 Bool (= var745 var2492)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (= (ite var2875 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1856 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z3 == 0 goto r4 = virtualinvoke r3.<org.hibernate.mapping.RootClass: java.lang.Class getMappedClass()>() 
(assert (not (= (ite var1856 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
(define-const var1374 var2773 (createIdentifierGenerator/-1438897604 (cast-from-var1049-to-var38 var757) var2781 var1068 var3161 var455 var36)) ; Statement: $r21 = specialinvoke r0.<org.hibernate.mapping.SimpleValue: org.hibernate.id.IdentifierGenerator createIdentifierGenerator(org.hibernate.id.factory.IdentifierGeneratorFactory,org.hibernate.dialect.Dialect,java.lang.String,java.lang.String,org.hibernate.mapping.RootClass)>(r14, r15, r16, r17, r3) 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierGeneratorStrategy/638985054=([org.hibernate.mapping.SimpleValue], java.lang.String), cast-from-var1049-to-var38=([org.hibernate.mapping.Component], org.hibernate.mapping.SimpleValue), createIdentifierGenerator/-1438897604=([org.hibernate.mapping.SimpleValue, org.hibernate.id.factory.IdentifierGeneratorFactory, org.hibernate.dialect.Dialect, java.lang.String, java.lang.String, org.hibernate.mapping.RootClass], org.hibernate.id.IdentifierGenerator)}
; {var1049=org.hibernate.mapping.Component, var757=r0, var1552=org.hibernate.id.factory.IdentifierGeneratorFactory, var2781=r14, var243=org.hibernate.dialect.Dialect, var1068=r15, var3161=r16, var1703=null_type, var455=r17, var3332=org.hibernate.mapping.RootClass, var36=r3, var745=$r2, var38=org.hibernate.mapping.SimpleValue, var2492=$r1, var2875=$z0, var1856=$z3, var2773=org.hibernate.id.IdentifierGenerator, var1374=$r21}
; {org.hibernate.mapping.Component=var1049, r0=var757, org.hibernate.id.factory.IdentifierGeneratorFactory=var1552, r14=var2781, org.hibernate.dialect.Dialect=var243, r15=var1068, r16=var3161, null_type=var1703, r17=var455, org.hibernate.mapping.RootClass=var3332, r3=var36, $r2=var745, org.hibernate.mapping.SimpleValue=var38, $r1=var2492, $z0=var2875, $z3=var1856, org.hibernate.id.IdentifierGenerator=var2773, $r21=var1374}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.mapping.Component;	r14 := @parameter0: org.hibernate.id.factory.IdentifierGeneratorFactory;	r15 := @parameter1: org.hibernate.dialect.Dialect;	r16 := @parameter2: java.lang.String;	r17 := @parameter3: java.lang.String;	r3 := @parameter4: org.hibernate.mapping.RootClass;	$r2 = "assigned";	$r1 = virtualinvoke r0.<org.hibernate.mapping.Component: java.lang.String getIdentifierGeneratorStrategy()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z3 = 0;	$z3 = 0;	if $z3 == 0 goto r4 = virtualinvoke r3.<org.hibernate.mapping.RootClass: java.lang.Class getMappedClass()>();	$r21 = specialinvoke r0.<org.hibernate.mapping.SimpleValue: org.hibernate.id.IdentifierGenerator createIdentifierGenerator(org.hibernate.id.factory.IdentifierGeneratorFactory,org.hibernate.dialect.Dialect,java.lang.String,java.lang.String,org.hibernate.mapping.RootClass)>(r14, r15, r16, r17, r3);	return $r21
;block_num 4