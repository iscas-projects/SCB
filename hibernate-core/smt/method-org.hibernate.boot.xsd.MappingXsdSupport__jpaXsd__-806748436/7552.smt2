(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1606 0)
(declare-sort var970 0)
(declare-sort var3699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3699-init () var3699)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3699 String) void)
(declare-const null-var1606 var1606)
(declare-const null-String String)
(declare-const var1157 var1606) ; Statement: r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport 
(assert (not (= var1157 null-var1606)))
(declare-const var1560 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1560 null-String)))
(define-const var1819 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2669 Int (hashCode/-467973558 var1560)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; } 
(assert (and (not (= var2669 1565093)) (and (not (= var2669 49526)) (and (not (= var2669 49525)) (and (not (= var2669 49524)) (and (not (= var2669 48563)) true)))))) ; Intersect: Negate: Cond: $i0 == 1565093   and Intersect: Negate: Cond: $i0 == 49526   and Intersect: Negate: Cond: $i0 == 49525   and Intersect: Negate: Cond: $i0 == 49524   and Intersect: Negate: Cond: $i0 == 48563   and Non Conditional     
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1819 4)) (and (not (= var1819 3)) (and (not (= var1819 2)) (and (not (= var1819 1)) (and (not (= var1819 0)) true)))))) ; Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional     
(define-const var1139 var3699 var3699-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var3689 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3689)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3689!1 String)
(assert (= var3689!1 ""))
(assert true)
(define-const var1876 String (append/672562846 var3689!1 "Unrecognized JPA orm.xml XSD version : `")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized JPA orm.xml XSD version : `") 
(declare-const var3689!2 String)
(assert (= var3689!2 (str.++ var3689!1 "Unrecognized JPA orm.xml XSD version : `")))
(assert true)
(define-const var3573 String (append/672562846 var1876 var1560)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1876!1 String)
(assert (= var1876!1 (str.++ var1876 var1560)))
(assert true)
(define-const var449 String (append/672562846 var3573 "`")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var3573!1 String)
(assert (= var3573!1 (str.++ var3573 "`")))
(assert true)
(define-const var3205 String (toString/-2075883882 var449)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1139 var3205)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1139!1 var3699)
(declare-const var3205!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3699-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1606=org.hibernate.boot.xsd.MappingXsdSupport, var1157=r1, var1560=r0, var970=null_type, var1819=b1, var2669=$i0, var3699=java.lang.IllegalArgumentException, var1139=$r7, var3689=$r8, var1876=$r9, var3573=$r10, var449=$r11, var3205=$r12}
; {org.hibernate.boot.xsd.MappingXsdSupport=var1606, r1=var1157, r0=var1560, null_type=var970, b1=var1819, $i0=var2669, java.lang.IllegalArgumentException=var3699, $r7=var1139, $r8=var3689, $r9=var1876, $r10=var3573, $r11=var449, $r12=var3205}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.xsd.MappingXsdSupport;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 48563: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("1.0");     case 49524: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.0");     case 49525: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.1");     case 49526: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("2.2");     case 1565093: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("3.0:");     default: goto tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; }; };	tableswitch(b1) {     case 0: goto $r6 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa10>;     case 1: goto $r5 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa20>;     case 2: goto $r4 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa21>;     case 3: goto $r3 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa22>;     case 4: goto $r2 = r1.<org.hibernate.boot.xsd.MappingXsdSupport: org.hibernate.boot.xsd.XsdDescriptor jpa30>;     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized JPA orm.xml XSD version : `");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 3