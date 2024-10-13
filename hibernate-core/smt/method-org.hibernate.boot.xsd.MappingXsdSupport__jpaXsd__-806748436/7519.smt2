(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3449 0)
(declare-sort var1145 0)
(declare-sort var112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun jpa20/241842713 (var3449) var112)
(declare-const null-var3449 var3449)
(declare-const null-String String)
(declare-const var3291 var3449) ; Statement: r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport 
(assert (not (= var3291 null-var3449)))
(declare-const var3560 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3560 null-String)))
(define-const var2443 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1061 Int (hashCode/-467973558 var3560)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var1061 1565093)) (and (not (= var1061 49526)) (and (not (= var1061 49525)) (and (not (= var1061 49524)) (and (not (= var1061 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 1565093   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var2443 1) (and (not (= var2443 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var1259 var112 (jpa20/241842713 var3291)) ; Statement: $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), jpa20/241842713=([org.hibernate.boot.xsd.MappingXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var3449=org.hibernate.boot.xsd.MappingXsdSupport, var3291=r1, var3560=r0, var1145=null_type, var2443=b1, var1061=$i0, var112=org.hibernate.boot.xsd.XsdDescriptor, var1259=$r5}
; {org.hibernate.boot.xsd.MappingXsdSupport=var3449, r1=var3291, r0=var3560, null_type=var1145, b1=var2443, $i0=var1061, org.hibernate.boot.xsd.XsdDescriptor=var112, $r5=var1259}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;	return $r5
;block_num 3