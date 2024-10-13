(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1656 0)
(declare-sort var3416 0)
(declare-sort var692 0)
(declare-sort var114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var692-init () var692)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getId/-2087847944 (var3416) String)
(declare-fun append/-1031950772 (String var114) String)
(declare-fun cast-from-var3416-to-var114 (var3416) var114)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var692 String) void)
(declare-const null-var1656 var1656)
(declare-const null-var3416 var3416)
(declare-const var413 var1656) ; Statement: r9 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var413 null-var1656)))
(declare-const var2955 var3416) ; Statement: r0 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var2955 null-var3416)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (= var2955 null-var3416)) ; Cond: r0 == null 
(define-const var3315 var692 var692-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2235 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2235)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2235!1 String)
(assert (= var2235!1 ""))
(assert true)
(define-const var797 String (append/672562846 var2235!1 "invalid relationship part/id: ")) ; Statement: $r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid relationship part/id: ") 
(declare-const var2235!2 String)
(assert (= var2235!2 (str.++ var2235!1 "invalid relationship part/id: ")))
 ; Statement: if r0 != null goto $r13 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>() 
(assert (not (= var2955 null-var3416))) ; Cond: r0 != null 
(assert true)
(define-const var1560 String (getId/-2087847944 var2955)) ; Statement: $r13 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1633 String (append/672562846 var797 var1560)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var797!1 String)
(assert (= var797!1 (str.++ var797 var1560)))
(assert true)
(define-const var2731 String (append/672562846 var1633 " for relationship: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for relationship: ") 
(declare-const var1633!1 String)
(assert (= var1633!1 (str.++ var1633 " for relationship: ")))
(assert true)
(define-const var971 String (append/-1031950772 var2731 (cast-from-var3416-to-var114 var2955))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2731!1 String)
(assert (str.prefixof var2731 var2731!1))
(assert true)
(define-const var668 String (toString/-2075883882 var971)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3315 var668)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3315!1 var692)
(declare-const var668!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var692-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getId/-2087847944=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3416-to-var114=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1656=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var413=r9, var3416=org.apache.poi.openxml4j.opc.PackageRelationship, var2955=r0, var692=java.lang.IllegalArgumentException, var3315=$r1, var2235=$r12, var797=$r2, var1560=$r13, var1633=$r3, var2731=$r4, var114=java.lang.Object, var971=$r5, var668=$r6}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var1656, r9=var413, org.apache.poi.openxml4j.opc.PackageRelationship=var3416, r0=var2955, java.lang.IllegalArgumentException=var692, $r1=var3315, $r12=var2235, $r2=var797, $r13=var1560, $r3=var1633, $r4=var2731, java.lang.Object=var114, $r5=var971, $r6=var668}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	r0 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid relationship part/id: ");	if r0 != null goto $r13 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>();	$r13 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for relationship: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 4