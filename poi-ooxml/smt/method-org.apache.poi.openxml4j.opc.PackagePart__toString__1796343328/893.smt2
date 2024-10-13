(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var166 0)
(declare-sort var2442 0)
(declare-sort var354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _partName/-1441654136 (var2019) var166)
(declare-fun append/-1031950772 (String var2442) String)
(declare-fun cast-from-var166-to-var2442 (var166) var2442)
(declare-fun _contentType/-1441654136 (var2019) var354)
(declare-fun cast-from-var354-to-var2442 (var354) var2442)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2019 var2019)
(declare-const var2119 var2019) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var2119 null-var2019)))
(define-const var1363 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1363)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1363!1 String)
(assert (= var1363!1 ""))
(assert true)
(define-const var1247 String (append/672562846 var1363!1 "Name: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name: ") 
(declare-const var1363!2 String)
(assert (= var1363!2 (str.++ var1363!1 "Name: ")))
(define-const var3860 var166 (_partName/-1441654136 var2119)) ; Statement: $r2 = r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName _partName> 
(assert true)
(define-const var886 String (append/-1031950772 var1247 (cast-from-var166-to-var2442 var3860))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1247!1 String)
(assert (str.prefixof var1247 var1247!1))
(assert true)
(define-const var1178 String (append/672562846 var886 " - Content Type: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - Content Type: ") 
(declare-const var886!1 String)
(assert (= var886!1 (str.++ var886 " - Content Type: ")))
(define-const var3031 var354 (_contentType/-1441654136 var2119)) ; Statement: $r5 = r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.internal.ContentType _contentType> 
(assert true)
(define-const var1542 String (append/-1031950772 var1178 (cast-from-var354-to-var2442 var3031))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1178!1 String)
(assert (str.prefixof var1178 var1178!1))
(assert true)
(define-const var971 String (toString/-2075883882 var1542)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), _partName/-1441654136=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var166-to-var2442=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.Object), _contentType/-1441654136=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.internal.ContentType), cast-from-var354-to-var2442=([org.apache.poi.openxml4j.opc.internal.ContentType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2019=org.apache.poi.openxml4j.opc.PackagePart, var2119=r1, var1363=$r0, var1247=$r3, var166=org.apache.poi.openxml4j.opc.PackagePartName, var3860=$r2, var2442=java.lang.Object, var886=$r4, var1178=$r6, var354=org.apache.poi.openxml4j.opc.internal.ContentType, var3031=$r5, var1542=$r7, var971=$r8}
; {org.apache.poi.openxml4j.opc.PackagePart=var2019, r1=var2119, $r0=var1363, $r3=var1247, org.apache.poi.openxml4j.opc.PackagePartName=var166, $r2=var3860, java.lang.Object=var2442, $r4=var886, $r6=var1178, org.apache.poi.openxml4j.opc.internal.ContentType=var354, $r5=var3031, $r7=var1542, $r8=var971}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackagePart;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name: ");	$r2 = r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName _partName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - Content Type: ");	$r5 = r1.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.internal.ContentType _contentType>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1