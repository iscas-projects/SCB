(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort var1285 0)
(declare-sort var3036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getJPA30/-682846971 (var743) var3036)
(declare-const null-var743 var743)
(declare-const null-String String)
(declare-const var343 var743) ; Statement: r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport 
(assert (not (= var343 null-var743)))
(declare-const var280 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var280 null-String)))
(define-const var1332 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3468 Int (hashCode/-467973558 var280)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3468 50485)) (and (not (= var3468 49526)) (and (not (= var3468 49525)) (and (not (= var3468 49524)) (and (not (= var3468 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 50485   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1332 4) (and (not (= var1332 3)) (and (not (= var1332 2)) (and (not (= var1332 1)) (and (not (= var1332 0)) true)))))) ; Intersect: Cond: b1 == 4  and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional     
(assert true)
(define-const var2200 var3036 (getJPA30/-682846971 var343)) ; Statement: $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getJPA30/-682846971=([org.hibernate.boot.xsd.ConfigXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var743=org.hibernate.boot.xsd.ConfigXsdSupport, var343=r1, var280=r0, var1285=null_type, var1332=b1, var3468=$i0, var3036=org.hibernate.boot.xsd.XsdDescriptor, var2200=$r2}
; {org.hibernate.boot.xsd.ConfigXsdSupport=var743, r1=var343, r0=var280, null_type=var1285, b1=var1332, $i0=var3468, org.hibernate.boot.xsd.XsdDescriptor=var3036, $r2=var2200}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();	return $r2
;block_num 3