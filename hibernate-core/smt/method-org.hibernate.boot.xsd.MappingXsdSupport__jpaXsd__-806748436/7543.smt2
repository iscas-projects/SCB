(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort var2275 0)
(declare-sort var114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun jpa30/241842713 (var136) var114)
(declare-const null-var136 var136)
(declare-const null-String String)
(declare-const var2774 var136) ; Statement: r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport 
(assert (not (= var2774 null-var136)))
(declare-const var40 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var40 null-String)))
(define-const var734 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3443 Int (hashCode/-467973558 var40)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3443 1565093)) (and (not (= var3443 49526)) (and (not (= var3443 49525)) (and (not (= var3443 49524)) (and (not (= var3443 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 1565093   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var734 4) (and (not (= var734 3)) (and (not (= var734 2)) (and (not (= var734 1)) (and (not (= var734 0)) true)))))) ; Intersect: Cond: b1 == 4  and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional     
(define-const var537 var114 (jpa30/241842713 var2774)) ; Statement: $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), jpa30/241842713=([org.hibernate.boot.xsd.MappingXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var136=org.hibernate.boot.xsd.MappingXsdSupport, var2774=r1, var40=r0, var2275=null_type, var734=b1, var3443=$i0, var114=org.hibernate.boot.xsd.XsdDescriptor, var537=$r2}
; {org.hibernate.boot.xsd.MappingXsdSupport=var136, r1=var2774, r0=var40, null_type=var2275, b1=var734, $i0=var3443, org.hibernate.boot.xsd.XsdDescriptor=var114, $r2=var537}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;	return $r2
;block_num 3