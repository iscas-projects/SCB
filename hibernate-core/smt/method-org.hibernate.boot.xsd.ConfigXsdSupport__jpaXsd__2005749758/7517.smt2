(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var969 0)
(declare-sort var1146 0)
(declare-sort var1580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getJPA21/-683740701 (var969) var1580)
(declare-const null-var969 var969)
(declare-const null-String String)
(declare-const var146 var969) ; Statement: r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport 
(assert (not (= var146 null-var969)))
(declare-const var95 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var95 null-String)))
(define-const var1451 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var644 Int (hashCode/-467973558 var95)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var644 50485)) (and (not (= var644 49526)) (and (not (= var644 49525)) (and (not (= var644 49524)) (and (not (= var644 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 50485   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var1451 2) (and (not (= var1451 1)) (and (not (= var1451 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(assert true)
(define-const var3514 var1580 (getJPA21/-683740701 var146)) ; Statement: $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getJPA21/-683740701=([org.hibernate.boot.xsd.ConfigXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var969=org.hibernate.boot.xsd.ConfigXsdSupport, var146=r1, var95=r0, var1146=null_type, var1451=b1, var644=$i0, var1580=org.hibernate.boot.xsd.XsdDescriptor, var3514=$r4}
; {org.hibernate.boot.xsd.ConfigXsdSupport=var969, r1=var146, r0=var95, null_type=var1146, b1=var1451, $i0=var644, org.hibernate.boot.xsd.XsdDescriptor=var1580, $r4=var3514}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();	return $r4
;block_num 3