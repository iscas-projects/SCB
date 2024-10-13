(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2318 0)
(declare-sort var2231 0)
(declare-sort var964 0)
(declare-sort var2405 0)
(declare-sort var2200 0)
(declare-sort var3791 0)
(declare-sort var2058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierGeneratorStrategy/638985054 (var3791) String)
(declare-fun cast-from-var2318-to-var3791 (var2318) var3791)
(declare-fun createIdentifierGenerator/-1438897604 (var3791 var2231 var964 String String var2200) var2058)
(declare-const null-var2318 var2318)
(declare-const null-var2231 var2231)
(declare-const null-var964 var964)
(declare-const null-String String)
(declare-const null-var2200 var2200)
(declare-const var394 var2318) ; Statement: r0 := @this: org.hibernate.mapping.Component 
(assert (not (= var394 null-var2318)))
(declare-const var678 var2231) ; Statement: r14 := @parameter0: org.hibernate.id.factory.IdentifierGeneratorFactory 
(assert (not (= var678 null-var2231)))
(declare-const var2538 var964) ; Statement: r15 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var2538 null-var964)))
(declare-const var583 String) ; Statement: r16 := @parameter2: java.lang.String 
(assert (not (= var583 null-String)))
(declare-const var3320 String) ; Statement: r17 := @parameter3: java.lang.String 
(assert (not (= var3320 null-String)))
(declare-const var3051 var2200) ; Statement: r3 := @parameter4: org.hibernate.mapping.RootClass 
(assert (not (= var3051 null-var2200)))
(define-const var498 String "assigned") ; Statement: $r2 = "assigned" 
(assert true)
(define-const var2080 String (getIdentifierGeneratorStrategy/638985054 (cast-from-var2318-to-var3791 var394))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Component: java.lang.String getIdentifierGeneratorStrategy()>() 
(assert true)
(define-const var195 Bool (= var498 var2080)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (not (= (ite var195 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3644 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z3 == 0 goto r4 = virtualinvoke r3.<org.hibernate.mapping.RootClass: java.lang.Class getMappedClass()>() 
(assert (not (= (ite var3644 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
(define-const var231 var2058 (createIdentifierGenerator/-1438897604 (cast-from-var2318-to-var3791 var394) var678 var2538 var583 var3320 var3051)) ; Statement: $r21 = specialinvoke r0.<org.hibernate.mapping.SimpleValue: org.hibernate.id.IdentifierGenerator createIdentifierGenerator(org.hibernate.id.factory.IdentifierGeneratorFactory,org.hibernate.dialect.Dialect,java.lang.String,java.lang.String,org.hibernate.mapping.RootClass)>(r14, r15, r16, r17, r3) 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierGeneratorStrategy/638985054=([org.hibernate.mapping.SimpleValue], java.lang.String), cast-from-var2318-to-var3791=([org.hibernate.mapping.Component], org.hibernate.mapping.SimpleValue), createIdentifierGenerator/-1438897604=([org.hibernate.mapping.SimpleValue, org.hibernate.id.factory.IdentifierGeneratorFactory, org.hibernate.dialect.Dialect, java.lang.String, java.lang.String, org.hibernate.mapping.RootClass], org.hibernate.id.IdentifierGenerator)}
; {var2318=org.hibernate.mapping.Component, var394=r0, var2231=org.hibernate.id.factory.IdentifierGeneratorFactory, var678=r14, var964=org.hibernate.dialect.Dialect, var2538=r15, var583=r16, var2405=null_type, var3320=r17, var2200=org.hibernate.mapping.RootClass, var3051=r3, var498=$r2, var3791=org.hibernate.mapping.SimpleValue, var2080=$r1, var195=$z0, var3644=$z3, var2058=org.hibernate.id.IdentifierGenerator, var231=$r21}
; {org.hibernate.mapping.Component=var2318, r0=var394, org.hibernate.id.factory.IdentifierGeneratorFactory=var2231, r14=var678, org.hibernate.dialect.Dialect=var964, r15=var2538, r16=var583, null_type=var2405, r17=var3320, org.hibernate.mapping.RootClass=var2200, r3=var3051, $r2=var498, org.hibernate.mapping.SimpleValue=var3791, $r1=var2080, $z0=var195, $z3=var3644, org.hibernate.id.IdentifierGenerator=var2058, $r21=var231}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.mapping.Component;	r14 := @parameter0: org.hibernate.id.factory.IdentifierGeneratorFactory;	r15 := @parameter1: org.hibernate.dialect.Dialect;	r16 := @parameter2: java.lang.String;	r17 := @parameter3: java.lang.String;	r3 := @parameter4: org.hibernate.mapping.RootClass;	$r2 = "assigned";	$r1 = virtualinvoke r0.<org.hibernate.mapping.Component: java.lang.String getIdentifierGeneratorStrategy()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z3 = 0;	$z3 = 1;	goto [?= (branch)];	if $z3 == 0 goto r4 = virtualinvoke r3.<org.hibernate.mapping.RootClass: java.lang.Class getMappedClass()>();	$r21 = specialinvoke r0.<org.hibernate.mapping.SimpleValue: org.hibernate.id.IdentifierGenerator createIdentifierGenerator(org.hibernate.id.factory.IdentifierGeneratorFactory,org.hibernate.dialect.Dialect,java.lang.String,java.lang.String,org.hibernate.mapping.RootClass)>(r14, r15, r16, r17, r3);	return $r21
;block_num 4