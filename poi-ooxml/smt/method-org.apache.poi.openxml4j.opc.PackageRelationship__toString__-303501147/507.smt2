(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort var2055 0)
(declare-sort var1806 0)
(declare-sort var2834 0)
(declare-sort var3504 0)
(declare-sort var1411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1610663885 (var1435) String)
(declare-fun container/1610663885 (var1435) var2055)
(declare-fun append/-1031950772 (String var1806) String)
(declare-fun cast-from-var2055-to-var1806 (var2055) var1806)
(declare-fun relationshipType/1610663885 (var1435) String)
(declare-fun source/1610663885 (var1435) var2834)
(declare-fun getSourceURI/616992992 (var1435) var3504)
(declare-fun toASCIIString/-363261216 (var3504) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getTargetURI/-1251399210 (var1435) var3504)
(declare-fun targetMode/1610663885 (var1435) var1411)
(declare-const null-var1435 var1435)
(declare-const null-var2834 var2834)
(declare-const null-var1411 var1411)
(declare-const var1159 var1435) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var1159 null-var1435)))
(define-const var3378 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3378)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3378!1 String)
(assert (= var3378!1 ""))
(assert true)
(define-const var2659 String (append/672562846 var3378!1 "id=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id=") 
(declare-const var3378!2 String)
(assert (= var3378!2 (str.++ var3378!1 "id=")))
(define-const var1546 String (id/1610663885 var1159)) ; Statement: $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String id> 
(assert true)
(define-const var244 String (append/672562846 var2659 var1546)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2659!1 String)
(assert (= var2659!1 (str.++ var2659 var1546)))
(assert true)
(define-const var3895 String (append/672562846 var244 " - container=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - container=") 
(declare-const var244!1 String)
(assert (= var244!1 (str.++ var244 " - container=")))
(define-const var736 var2055 (container/1610663885 var1159)) ; Statement: $r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.OPCPackage container> 
(assert true)
(define-const var348 String (append/-1031950772 var3895 (cast-from-var2055-to-var1806 var736))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3895!1 String)
(assert (str.prefixof var3895 var3895!1))
(assert true)
(define-const var2524 String (append/672562846 var348 " - relationshipType=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - relationshipType=") 
(declare-const var348!1 String)
(assert (= var348!1 (str.++ var348 " - relationshipType=")))
(define-const var1579 String (relationshipType/1610663885 var1159)) ; Statement: $r8 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String relationshipType> 
(assert true)
(define-const var2533 String (append/672562846 var2524 var1579)) ; Statement: $r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2524!1 String)
(assert (= var2524!1 (str.++ var2524 var1579)))
(define-const var1508 var2834 (source/1610663885 var1159)) ; Statement: $r10 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.PackagePart source> 
 ; Statement: if $r10 != null goto $r11 = new java.lang.StringBuilder 
(assert (not (= var1508 null-var2834))) ; Cond: $r10 != null 
(define-const var1974 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1974)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1974!1 String)
(assert (= var1974!1 ""))
(assert true)
(define-const var3890 String (append/672562846 var1974!1 " - source=")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - source=") 
(declare-const var1974!2 String)
(assert (= var1974!2 (str.++ var1974!1 " - source=")))
(assert true)
(define-const var2491 var3504 (getSourceURI/616992992 var1159)) ; Statement: $r12 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getSourceURI()>() 
(assert true)
(define-const var1638 String (toASCIIString/-363261216 var2491)) ; Statement: $r13 = virtualinvoke $r12.<java.net.URI: java.lang.String toASCIIString()>() 
(assert true)
(define-const var1657 String (append/672562846 var3890 var1638)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3890!1 String)
(assert (= var3890!1 (str.++ var3890 var1638)))
(assert true)
(define-const var353 String (toString/-2075883882 var1657)) ; Statement: $r29 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2955 String (append/672562846 var2533 var353)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2533!1 String)
(assert (= var2533!1 (str.++ var2533 var353)))
(assert true)
(define-const var924 String (append/672562846 var2955 " - target=")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - target=") 
(declare-const var2955!1 String)
(assert (= var2955!1 (str.++ var2955 " - target=")))
(assert true)
(define-const var391 var3504 (getTargetURI/-1251399210 var1159)) ; Statement: $r18 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>() 
(assert true)
(define-const var2257 String (toASCIIString/-363261216 var391)) ; Statement: $r19 = virtualinvoke $r18.<java.net.URI: java.lang.String toASCIIString()>() 
(assert true)
(define-const var742 String (append/672562846 var924 var2257)) ; Statement: $r26 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var924!1 String)
(assert (= var924!1 (str.++ var924 var2257)))
(define-const var1254 var1411 (targetMode/1610663885 var1159)) ; Statement: $r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode> 
 ; Statement: if $r21 != null goto $r22 = new java.lang.StringBuilder 
(assert (not (not (= var1254 null-var1411)))) ; Negate: Cond: $r21 != null  
(define-const var2614 String ",targetMode=null") ; Statement: $r30 = ",targetMode=null" 
 ; Statement: goto [?= $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1882 String (append/672562846 var742 var2614)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var742!1 String)
(assert (= var742!1 (str.++ var742 var2614)))
(assert true)
(define-const var1826 String (toString/-2075883882 var1882)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), id/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), container/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.OPCPackage), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2055-to-var1806=([org.apache.poi.openxml4j.opc.OPCPackage], java.lang.Object), relationshipType/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), source/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.PackagePart), getSourceURI/616992992=([org.apache.poi.openxml4j.opc.PackageRelationship], java.net.URI), toASCIIString/-363261216=([java.net.URI], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getTargetURI/-1251399210=([org.apache.poi.openxml4j.opc.PackageRelationship], java.net.URI), targetMode/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.TargetMode)}
; {var1435=org.apache.poi.openxml4j.opc.PackageRelationship, var1159=r1, var3378=$r0, var2659=$r3, var1546=$r2, var244=$r4, var3895=$r6, var2055=org.apache.poi.openxml4j.opc.OPCPackage, var736=$r5, var1806=java.lang.Object, var348=$r7, var2524=$r9, var1579=$r8, var2533=$r16, var2834=org.apache.poi.openxml4j.opc.PackagePart, var1508=$r10, var1974=$r11, var3890=$r14, var3504=java.net.URI, var2491=$r12, var1638=$r13, var1657=$r15, var353=$r29, var2955=$r17, var924=$r20, var391=$r18, var2257=$r19, var742=$r26, var1411=org.apache.poi.openxml4j.opc.TargetMode, var1254=$r21, var2614=$r30, var1882=$r27, var1826=$r28}
; {org.apache.poi.openxml4j.opc.PackageRelationship=var1435, r1=var1159, $r0=var3378, $r3=var2659, $r2=var1546, $r4=var244, $r6=var3895, org.apache.poi.openxml4j.opc.OPCPackage=var2055, $r5=var736, java.lang.Object=var1806, $r7=var348, $r9=var2524, $r8=var1579, $r16=var2533, org.apache.poi.openxml4j.opc.PackagePart=var2834, $r10=var1508, $r11=var1974, $r14=var3890, java.net.URI=var3504, $r12=var2491, $r13=var1638, $r15=var1657, $r29=var353, $r17=var2955, $r20=var924, $r18=var391, $r19=var2257, $r26=var742, org.apache.poi.openxml4j.opc.TargetMode=var1411, $r21=var1254, $r30=var2614, $r27=var1882, $r28=var1826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationship;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id=");	$r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String id>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - container=");	$r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.OPCPackage container>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - relationshipType=");	$r8 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String relationshipType>;	$r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.PackagePart source>;	if $r10 != null goto $r11 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - source=");	$r12 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getSourceURI()>();	$r13 = virtualinvoke $r12.<java.net.URI: java.lang.String toASCIIString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r29 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - target=");	$r18 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>();	$r19 = virtualinvoke $r18.<java.net.URI: java.lang.String toASCIIString()>();	$r26 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode>;	if $r21 != null goto $r22 = new java.lang.StringBuilder;	$r30 = ",targetMode=null";	goto [?= $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)];	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r28
;block_num 5