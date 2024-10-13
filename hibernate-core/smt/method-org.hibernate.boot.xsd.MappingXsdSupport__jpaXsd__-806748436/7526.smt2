(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var518 0)
(declare-sort var2017 0)
(declare-sort var2473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun jpa21/241842713 (var518) var2473)
(declare-const null-var518 var518)
(declare-const null-String String)
(declare-const var1987 var518) ; Statement: r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport 
(assert (not (= var1987 null-var518)))
(declare-const var1854 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1854 null-String)))
(define-const var1408 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1321 Int (hashCode/-467973558 var1854)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1321 1565093)) (and (not (= var1321 49526)) (and (not (= var1321 49525)) (and (not (= var1321 49524)) (and (not (= var1321 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 1565093   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1408 2) (and (not (= var1408 1)) (and (not (= var1408 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var3296 var2473 (jpa21/241842713 var1987)) ; Statement: $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), jpa21/241842713=([org.hibernate.boot.xsd.MappingXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var518=org.hibernate.boot.xsd.MappingXsdSupport, var1987=r1, var1854=r0, var2017=null_type, var1408=b1, var1321=$i0, var2473=org.hibernate.boot.xsd.XsdDescriptor, var3296=$r4}
; {org.hibernate.boot.xsd.MappingXsdSupport=var518, r1=var1987, r0=var1854, null_type=var2017, b1=var1408, $i0=var1321, org.hibernate.boot.xsd.XsdDescriptor=var2473, $r4=var3296}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;	return $r4
;block_num 3