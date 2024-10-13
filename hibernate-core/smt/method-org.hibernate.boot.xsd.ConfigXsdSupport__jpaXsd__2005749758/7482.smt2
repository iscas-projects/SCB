(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1811 0)
(declare-sort var1451 0)
(declare-sort var458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getJPA10/-684694013 (var1811) var458)
(declare-const null-var1811 var1811)
(declare-const null-String String)
(declare-const var3065 var1811) ; Statement: r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport 
(assert (not (= var3065 null-var1811)))
(declare-const var300 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var300 null-String)))
(define-const var2978 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3780 Int (hashCode/-467973558 var300)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var3780 50485)) (and (not (= var3780 49526)) (and (not (= var3780 49525)) (and (not (= var3780 49524)) (and (not (= var3780 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 50485   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (= var2978 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(assert true)
(define-const var1202 var458 (getJPA10/-684694013 var3065)) ; Statement: $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), getJPA10/-684694013=([org.hibernate.boot.xsd.ConfigXsdSupport], org.hibernate.boot.xsd.XsdDescriptor)}
; {var1811=org.hibernate.boot.xsd.ConfigXsdSupport, var3065=r1, var300=r0, var1451=null_type, var2978=b1, var3780=$i0, var458=org.hibernate.boot.xsd.XsdDescriptor, var1202=$r6}
; {org.hibernate.boot.xsd.ConfigXsdSupport=var1811, r1=var3065, r0=var300, null_type=var1451, b1=var2978, $i0=var3780, org.hibernate.boot.xsd.XsdDescriptor=var458, $r6=var1202}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();	return $r6
;block_num 3