(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2131 0)
(declare-sort var195 0)
(declare-sort var3825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun jpa10/241842713 (var2131) var3825)
(declare-const null-var2131 var2131)
(declare-const null-String String)
(declare-const var2588 var2131) ; Statement: r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport 
(assert (not (= var2588 null-var2131)))
(declare-const var3416 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3416 null-String)))
(define-const var1985 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3077 Int (hashCode/-467973558 var3416)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3077 1565093)) (and (not (= var3077 49526)) (and (not (= var3077 49525)) (and (not (= var3077 49524)) (and (not (= var3077 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 1565093   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1985 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var217 var3825 (jpa10/241842713 var2588)) ; Statement: $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10> 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), jpa10/241842713=([org.hibernate.boot.xsd.MappingXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var2131=org.hibernate.boot.xsd.MappingXsdSupport, var2588=r1, var3416=r0, var195=null_type, var1985=b1, var3077=$i0, var3825=org.hibernate.boot.xsd.XsdDescriptor, var217=$r6}
; {org.hibernate.boot.xsd.MappingXsdSupport=var2131, r1=var2588, r0=var3416, null_type=var195, b1=var1985, $i0=var3077, org.hibernate.boot.xsd.XsdDescriptor=var3825, $r6=var217}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;	return $r6
;block_num 3