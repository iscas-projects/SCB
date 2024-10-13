(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var696 0)
(declare-sort var1516 0)
(declare-sort var1698 0)
(declare-sort var847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1698-init () var1698)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var847) String)
(declare-fun cast-from-var1516-to-var847 (var1516) var847)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1698 String) void)
(declare-const null-var696 var696)
(declare-const null-var1516 var1516)
(declare-const var3859 var696) ; Statement: r9 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var3859 null-var696)))
(declare-const var2911 var1516) ; Statement: r0 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var2911 null-var1516)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (= var2911 null-var1516)) ; Cond: r0 == null 
(define-const var3286 var1698 var1698-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var784 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var784)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var784!1 String)
(assert (= var784!1 ""))
(assert true)
(define-const var2728 String (append/672562846 var784!1 "invalid relationship part/id: ")) ; Statement: $r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid relationship part/id: ") 
(declare-const var784!2 String)
(assert (= var784!2 (str.++ var784!1 "invalid relationship part/id: ")))
 ; Statement: if r0 != null goto $r13 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>() 
(assert (not (not (= var2911 null-var1516)))) ; Negate: Cond: r0 != null  
(define-const var896 String "<null>") ; Statement: $r13 = "<null>" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1274 String (append/672562846 var2728 var896)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2728!1 String)
(assert (= var2728!1 (str.++ var2728 var896)))
(assert true)
(define-const var986 String (append/672562846 var1274 " for relationship: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for relationship: ") 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 " for relationship: ")))
(assert true)
(define-const var3894 String (append/-1031950772 var986 (cast-from-var1516-to-var847 var2911))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var986!1 String)
(assert (str.prefixof var986 var986!1))
(assert true)
(define-const var622 String (toString/-2075883882 var3894)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3286 var622)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3286!1 var1698)
(declare-const var622!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1698-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1516-to-var847=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var696=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var3859=r9, var1516=org.apache.poi.openxml4j.opc.PackageRelationship, var2911=r0, var1698=java.lang.IllegalArgumentException, var3286=$r1, var784=$r12, var2728=$r2, var896=$r13, var1274=$r3, var986=$r4, var847=java.lang.Object, var3894=$r5, var622=$r6}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var696, r9=var3859, org.apache.poi.openxml4j.opc.PackageRelationship=var1516, r0=var2911, java.lang.IllegalArgumentException=var1698, $r1=var3286, $r12=var784, $r2=var2728, $r13=var896, $r3=var1274, $r4=var986, java.lang.Object=var847, $r5=var3894, $r6=var622}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	r0 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid relationship part/id: ");	if r0 != null goto $r13 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String getId()>();	$r13 = "<null>";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for relationship: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 4