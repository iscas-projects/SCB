(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1937 0)
(declare-sort var2997 0)
(declare-sort var1907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getJPA22/-683710910 (var1937) var1907)
(declare-const null-var1937 var1937)
(declare-const null-String String)
(declare-const var3528 var1937) ; Statement: r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport 
(assert (not (= var3528 null-var1937)))
(declare-const var1606 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1606 null-String)))
(define-const var748 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3185 Int (hashCode/-467973558 var1606)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3185 50485)) (and (not (= var3185 49526)) (and (not (= var3185 49525)) (and (not (= var3185 49524)) (and (not (= var3185 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 50485   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var748 3) (and (not (= var748 2)) (and (not (= var748 1)) (and (not (= var748 0)) true))))) ; Intersect: Cond: b1 == 3  and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional    
(assert true)
(define-const var3992 var1907 (getJPA22/-683710910 var3528)) ; Statement: $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getJPA22/-683710910=([org.hibernate.boot.xsd.ConfigXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var1937=org.hibernate.boot.xsd.ConfigXsdSupport, var3528=r1, var1606=r0, var2997=null_type, var748=b1, var3185=$i0, var1907=org.hibernate.boot.xsd.XsdDescriptor, var3992=$r3}
; {org.hibernate.boot.xsd.ConfigXsdSupport=var1937, r1=var3528, r0=var1606, null_type=var2997, b1=var748, $i0=var3185, org.hibernate.boot.xsd.XsdDescriptor=var1907, $r3=var3992}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();	return $r3
;block_num 3