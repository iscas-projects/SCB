(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1010 0)
(declare-sort var3448 0)
(declare-sort var146 0)
(declare-sort var2162 0)
(declare-sort var2592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isRelationshipExists/-599975542 (var1010 var3448) Bool)
(declare-fun var146-init () var146)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2162) String)
(declare-fun cast-from-var3448-to-var2162 (var3448) var2162)
(declare-fun _partName/-1441654136 (var1010) var2592)
(declare-fun cast-from-var2592-to-var2162 (var2592) var2162)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var146 String) void)
(declare-const null-var1010 var1010)
(declare-const null-var3448 var3448)
(declare-const var3580 var1010) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var3580 null-var1010)))
(declare-const var339 var3448) ; Statement: r1 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var339 null-var3448)))
(assert true)
(define-const var3146 Bool (isRelationshipExists/-599975542 var3580 var339)) ; Statement: $z0 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePart: boolean isRelationshipExists(org.apache.poi.openxml4j.opc.PackageRelationship)>(r1) 
 ; Statement: if $z0 != 0 goto r27 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>() 
(assert (not (not (= (ite var3146 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var651 var146 var146-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var1500 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1500)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1500!1 String)
(assert (= var1500!1 ""))
(assert true)
(define-const var583 String (append/672562846 var1500!1 "Relationship ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Relationship ") 
(declare-const var1500!2 String)
(assert (= var1500!2 (str.++ var1500!1 "Relationship ")))
(assert true)
(define-const var1753 String (append/-1031950772 var583 (cast-from-var3448-to-var2162 var339))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var583!1 String)
(assert (str.prefixof var583 var583!1))
(assert true)
(define-const var3290 String (append/672562846 var1753 " doesn\u0027t start with this part ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t start with this part ") 
(declare-const var1753!1 String)
(assert (= var1753!1 (str.++ var1753 " doesn\u0027t start with this part ")))
(define-const var1199 var2592 (_partName/-1441654136 var3580)) ; Statement: $r17 = r0.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName _partName> 
(assert true)
(define-const var1406 String (append/-1031950772 var3290 (cast-from-var2592-to-var2162 var1199))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var3290!1 String)
(assert (str.prefixof var3290 var3290!1))
(assert true)
(define-const var387 String (toString/-2075883882 var1406)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var651 var387)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20) 

(declare-const var651!1 var146)
(declare-const var387!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {isRelationshipExists/-599975542=([org.apache.poi.openxml4j.opc.PackagePart, org.apache.poi.openxml4j.opc.PackageRelationship], boolean), var146-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3448-to-var2162=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.Object), _partName/-1441654136=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), cast-from-var2592-to-var2162=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1010=org.apache.poi.openxml4j.opc.PackagePart, var3580=r0, var3448=org.apache.poi.openxml4j.opc.PackageRelationship, var339=r1, var3146=$z0, var146=java.lang.IllegalArgumentException, var651=$r13, var1500=$r14, var583=$r15, var2162=java.lang.Object, var1753=$r16, var3290=$r18, var2592=org.apache.poi.openxml4j.opc.PackagePartName, var1199=$r17, var1406=$r19, var387=$r20}
; {org.apache.poi.openxml4j.opc.PackagePart=var1010, r0=var3580, org.apache.poi.openxml4j.opc.PackageRelationship=var3448, r1=var339, $z0=var3146, java.lang.IllegalArgumentException=var146, $r13=var651, $r14=var1500, $r15=var583, java.lang.Object=var2162, $r16=var1753, $r18=var3290, org.apache.poi.openxml4j.opc.PackagePartName=var2592, $r17=var1199, $r19=var1406, $r20=var387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.PackagePart;	r1 := @parameter0: org.apache.poi.openxml4j.opc.PackageRelationship;	$z0 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePart: boolean isRelationshipExists(org.apache.poi.openxml4j.opc.PackageRelationship)>(r1);	if $z0 != 0 goto r27 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>();	$r13 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Relationship ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t start with this part ");	$r17 = r0.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName _partName>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r20);	throw $r13
;block_num 2