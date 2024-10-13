(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var755 0)
(declare-sort var3194 0)
(declare-sort var2341 0)
(declare-sort var2275 0)
(declare-sort var2768 0)
(declare-sort var110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1610663885 (var755) String)
(declare-fun container/1610663885 (var755) var3194)
(declare-fun append/-1031950772 (String var2341) String)
(declare-fun cast-from-var3194-to-var2341 (var3194) var2341)
(declare-fun relationshipType/1610663885 (var755) String)
(declare-fun source/1610663885 (var755) var2275)
(declare-fun getTargetURI/-1251399210 (var755) var2768)
(declare-fun toASCIIString/-363261216 (var2768) String)
(declare-fun targetMode/1610663885 (var755) var110)
(declare-fun cast-from-var110-to-var2341 (var110) var2341)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var755 var755)
(declare-const null-var2275 var2275)
(declare-const null-var110 var110)
(declare-const var590 var755) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var590 null-var755)))
(define-const var1497 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1497)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1497!1 String)
(assert (= var1497!1 ""))
(assert true)
(define-const var3952 String (append/672562846 var1497!1 "id=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id=") 
(declare-const var1497!2 String)
(assert (= var1497!2 (str.++ var1497!1 "id=")))
(define-const var2722 String (id/1610663885 var590)) ; Statement: $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String id> 
(assert true)
(define-const var1717 String (append/672562846 var3952 var2722)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3952!1 String)
(assert (= var3952!1 (str.++ var3952 var2722)))
(assert true)
(define-const var814 String (append/672562846 var1717 " - container=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - container=") 
(declare-const var1717!1 String)
(assert (= var1717!1 (str.++ var1717 " - container=")))
(define-const var2037 var3194 (container/1610663885 var590)) ; Statement: $r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.OPCPackage container> 
(assert true)
(define-const var3594 String (append/-1031950772 var814 (cast-from-var3194-to-var2341 var2037))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var814!1 String)
(assert (str.prefixof var814 var814!1))
(assert true)
(define-const var3708 String (append/672562846 var3594 " - relationshipType=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - relationshipType=") 
(declare-const var3594!1 String)
(assert (= var3594!1 (str.++ var3594 " - relationshipType=")))
(define-const var1531 String (relationshipType/1610663885 var590)) ; Statement: $r8 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String relationshipType> 
(assert true)
(define-const var2472 String (append/672562846 var3708 var1531)) ; Statement: $r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3708!1 String)
(assert (= var3708!1 (str.++ var3708 var1531)))
(define-const var509 var2275 (source/1610663885 var590)) ; Statement: $r10 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.PackagePart source> 
 ; Statement: if $r10 != null goto $r11 = new java.lang.StringBuilder 
(assert (not (not (= var509 null-var2275)))) ; Negate: Cond: $r10 != null  
(define-const var1107 String " - source=null") ; Statement: $r29 = " - source=null" 
 ; Statement: goto [?= $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2630 String (append/672562846 var2472 var1107)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2472!1 String)
(assert (= var2472!1 (str.++ var2472 var1107)))
(assert true)
(define-const var1131 String (append/672562846 var2630 " - target=")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - target=") 
(declare-const var2630!1 String)
(assert (= var2630!1 (str.++ var2630 " - target=")))
(assert true)
(define-const var377 var2768 (getTargetURI/-1251399210 var590)) ; Statement: $r18 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>() 
(assert true)
(define-const var269 String (toASCIIString/-363261216 var377)) ; Statement: $r19 = virtualinvoke $r18.<java.net.URI: java.lang.String toASCIIString()>() 
(assert true)
(define-const var3473 String (append/672562846 var1131 var269)) ; Statement: $r26 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 var269)))
(define-const var158 var110 (targetMode/1610663885 var590)) ; Statement: $r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode> 
 ; Statement: if $r21 != null goto $r22 = new java.lang.StringBuilder 
(assert (not (= var158 null-var110))) ; Cond: $r21 != null 
(define-const var178 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var178)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var178!1 String)
(assert (= var178!1 ""))
(assert true)
(define-const var2665 String (append/672562846 var178!1 ",targetMode=")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",targetMode=") 
(declare-const var178!2 String)
(assert (= var178!2 (str.++ var178!1 ",targetMode=")))
(define-const var1437 var110 (targetMode/1610663885 var590)) ; Statement: $r23 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode> 
(assert true)
(define-const var166 String (append/-1031950772 var2665 (cast-from-var110-to-var2341 var1437))) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r23) 
(declare-const var2665!1 String)
(assert (str.prefixof var2665 var2665!1))
(assert true)
(define-const var327 String (toString/-2075883882 var166)) ; Statement: $r30 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2102 String (append/672562846 var3473 var327)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var3473!1 String)
(assert (= var3473!1 (str.++ var3473 var327)))
(assert true)
(define-const var1988 String (toString/-2075883882 var2102)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), id/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), container/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.OPCPackage), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3194-to-var2341=([org.apache.poi.openxml4j.opc.OPCPackage], java.lang.Object), relationshipType/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), source/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.PackagePart), getTargetURI/-1251399210=([org.apache.poi.openxml4j.opc.PackageRelationship], java.net.URI), toASCIIString/-363261216=([java.net.URI], java.lang.String), targetMode/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.TargetMode), cast-from-var110-to-var2341=([org.apache.poi.openxml4j.opc.TargetMode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var755=org.apache.poi.openxml4j.opc.PackageRelationship, var590=r1, var1497=$r0, var3952=$r3, var2722=$r2, var1717=$r4, var814=$r6, var3194=org.apache.poi.openxml4j.opc.OPCPackage, var2037=$r5, var2341=java.lang.Object, var3594=$r7, var3708=$r9, var1531=$r8, var2472=$r16, var2275=org.apache.poi.openxml4j.opc.PackagePart, var509=$r10, var1107=$r29, var2630=$r17, var1131=$r20, var2768=java.net.URI, var377=$r18, var269=$r19, var3473=$r26, var110=org.apache.poi.openxml4j.opc.TargetMode, var158=$r21, var178=$r22, var2665=$r24, var1437=$r23, var166=$r25, var327=$r30, var2102=$r27, var1988=$r28}
; {org.apache.poi.openxml4j.opc.PackageRelationship=var755, r1=var590, $r0=var1497, $r3=var3952, $r2=var2722, $r4=var1717, $r6=var814, org.apache.poi.openxml4j.opc.OPCPackage=var3194, $r5=var2037, java.lang.Object=var2341, $r7=var3594, $r9=var3708, $r8=var1531, $r16=var2472, org.apache.poi.openxml4j.opc.PackagePart=var2275, $r10=var509, $r29=var1107, $r17=var2630, $r20=var1131, java.net.URI=var2768, $r18=var377, $r19=var269, $r26=var3473, org.apache.poi.openxml4j.opc.TargetMode=var110, $r21=var158, $r22=var178, $r24=var2665, $r23=var1437, $r25=var166, $r30=var327, $r27=var2102, $r28=var1988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationship;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id=");	$r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String id>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - container=");	$r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.OPCPackage container>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - relationshipType=");	$r8 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String relationshipType>;	$r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.PackagePart source>;	if $r10 != null goto $r11 = new java.lang.StringBuilder;	$r29 = " - source=null";	goto [?= $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)];	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - target=");	$r18 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>();	$r19 = virtualinvoke $r18.<java.net.URI: java.lang.String toASCIIString()>();	$r26 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode>;	if $r21 != null goto $r22 = new java.lang.StringBuilder;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",targetMode=");	$r23 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r23);	$r30 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r28
;block_num 5