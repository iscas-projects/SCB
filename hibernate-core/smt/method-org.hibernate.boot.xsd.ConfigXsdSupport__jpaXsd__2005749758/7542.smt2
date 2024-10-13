(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3184 0)
(declare-sort var3146 0)
(declare-sort var1108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1108-init () var1108)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1108 String) void)
(declare-const null-var3184 var3184)
(declare-const null-String String)
(declare-const var3865 var3184) ; Statement: r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport 
(assert (not (= var3865 null-var3184)))
(declare-const var1537 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1537 null-String)))
(define-const var1503 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var816 Int (hashCode/-467973558 var1537)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var816 50485)) (and (not (= var816 49526)) (and (not (= var816 49525)) (and (not (= var816 49524)) (and (not (= var816 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 50485   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1503 4)) (and (not (= var1503 3)) (and (not (= var1503 2)) (and (not (= var1503 1)) (and (not (= var1503 0)) true)))))) ; Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional     
(define-const var2843 var1108 var1108-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2040 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2040)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2040!1 String)
(assert (= var2040!1 ""))
(assert true)
(define-const var849 String (append/672562846 var2040!1 "Unrecognized JPA persistence.xml XSD version : `")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized JPA persistence.xml XSD version : `") 
(declare-const var2040!2 String)
(assert (= var2040!2 (str.++ var2040!1 "Unrecognized JPA persistence.xml XSD version : `")))
(assert true)
(define-const var1576 String (append/672562846 var849 var1537)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var849!1 String)
(assert (= var849!1 (str.++ var849 var1537)))
(assert true)
(define-const var699 String (append/672562846 var1576 "`")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var1576!1 String)
(assert (= var1576!1 (str.++ var1576 "`")))
(assert true)
(define-const var340 String (toString/-2075883882 var699)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2843 var340)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var2843!1 var1108)
(declare-const var340!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1108-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3184=org.hibernate.boot.xsd.ConfigXsdSupport, var3865=r1, var1537=r0, var3146=null_type, var1503=b1, var816=$i0, var1108=java.lang.IllegalArgumentException, var2843=$r7, var2040=$r8, var849=$r9, var1576=$r10, var699=$r11, var340=$r12}
; {org.hibernate.boot.xsd.ConfigXsdSupport=var3184, r1=var3865, r0=var1537, null_type=var3146, b1=var1503, $i0=var816, java.lang.IllegalArgumentException=var1108, $r7=var2843, $r8=var2040, $r9=var849, $r10=var1576, $r11=var699, $r12=var340}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.ConfigXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 50485: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0");     default: goto tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA10()>();     case 1: goto $r5 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA20()>();     case 2: goto $r4 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA21()>();     case 3: goto $r3 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA22()>();     case 4: goto $r2 = specialinvoke r1.<org.hibernate.boot.xsd.ConfigXsdSupport: org.hibernate.boot.xsd.XsdDescriptor getJPA30()>();     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized JPA persistence.xml XSD version : `");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 3