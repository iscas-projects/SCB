(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3966 0)
(declare-sort var394 0)
(declare-sort var3520 0)
(declare-sort var1487 0)
(declare-sort var3082 0)
(declare-sort var947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1610663885 (var3966) String)
(declare-fun container/1610663885 (var3966) var394)
(declare-fun append/-1031950772 (String var3520) String)
(declare-fun cast-from-var394-to-var3520 (var394) var3520)
(declare-fun relationshipType/1610663885 (var3966) String)
(declare-fun source/1610663885 (var3966) var1487)
(declare-fun getTargetURI/-1251399210 (var3966) var3082)
(declare-fun toASCIIString/-363261216 (var3082) String)
(declare-fun targetMode/1610663885 (var3966) var947)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3966 var3966)
(declare-const null-var1487 var1487)
(declare-const null-var947 var947)
(declare-const var684 var3966) ; Statement: r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (not (= var684 null-var3966)))
(define-const var3313 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3313)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3313!1 String)
(assert (= var3313!1 ""))
(assert true)
(define-const var3778 String (append/672562846 var3313!1 "id=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id=") 
(declare-const var3313!2 String)
(assert (= var3313!2 (str.++ var3313!1 "id=")))
(define-const var1986 String (id/1610663885 var684)) ; Statement: $r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String id> 
(assert true)
(define-const var3099 String (append/672562846 var3778 var1986)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3778!1 String)
(assert (= var3778!1 (str.++ var3778 var1986)))
(assert true)
(define-const var1983 String (append/672562846 var3099 " - container=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - container=") 
(declare-const var3099!1 String)
(assert (= var3099!1 (str.++ var3099 " - container=")))
(define-const var3154 var394 (container/1610663885 var684)) ; Statement: $r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.OPCPackage container> 
(assert true)
(define-const var1864 String (append/-1031950772 var1983 (cast-from-var394-to-var3520 var3154))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1983!1 String)
(assert (str.prefixof var1983 var1983!1))
(assert true)
(define-const var2137 String (append/672562846 var1864 " - relationshipType=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - relationshipType=") 
(declare-const var1864!1 String)
(assert (= var1864!1 (str.++ var1864 " - relationshipType=")))
(define-const var3629 String (relationshipType/1610663885 var684)) ; Statement: $r8 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String relationshipType> 
(assert true)
(define-const var2448 String (append/672562846 var2137 var3629)) ; Statement: $r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2137!1 String)
(assert (= var2137!1 (str.++ var2137 var3629)))
(define-const var1539 var1487 (source/1610663885 var684)) ; Statement: $r10 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.PackagePart source> 
 ; Statement: if $r10 != null goto $r11 = new java.lang.StringBuilder 
(assert (not (not (= var1539 null-var1487)))) ; Negate: Cond: $r10 != null  
(define-const var2590 String " - source=null") ; Statement: $r29 = " - source=null" 
 ; Statement: goto [?= $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)] 
(assert true) ; Non Conditional
(assert true)
(define-const var673 String (append/672562846 var2448 var2590)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2448!1 String)
(assert (= var2448!1 (str.++ var2448 var2590)))
(assert true)
(define-const var3305 String (append/672562846 var673 " - target=")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - target=") 
(declare-const var673!1 String)
(assert (= var673!1 (str.++ var673 " - target=")))
(assert true)
(define-const var680 var3082 (getTargetURI/-1251399210 var684)) ; Statement: $r18 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>() 
(assert true)
(define-const var1913 String (toASCIIString/-363261216 var680)) ; Statement: $r19 = virtualinvoke $r18.<java.net.URI: java.lang.String toASCIIString()>() 
(assert true)
(define-const var187 String (append/672562846 var3305 var1913)) ; Statement: $r26 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3305!1 String)
(assert (= var3305!1 (str.++ var3305 var1913)))
(define-const var772 var947 (targetMode/1610663885 var684)) ; Statement: $r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode> 
 ; Statement: if $r21 != null goto $r22 = new java.lang.StringBuilder 
(assert (not (not (= var772 null-var947)))) ; Negate: Cond: $r21 != null  
(define-const var3567 String ",targetMode=null") ; Statement: $r30 = ",targetMode=null" 
 ; Statement: goto [?= $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2755 String (append/672562846 var187 var3567)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var187!1 String)
(assert (= var187!1 (str.++ var187 var3567)))
(assert true)
(define-const var3031 String (toString/-2075883882 var2755)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), id/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), container/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.OPCPackage), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var394-to-var3520=([org.apache.poi.openxml4j.opc.OPCPackage], java.lang.Object), relationshipType/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], java.lang.String), source/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.PackagePart), getTargetURI/-1251399210=([org.apache.poi.openxml4j.opc.PackageRelationship], java.net.URI), toASCIIString/-363261216=([java.net.URI], java.lang.String), targetMode/1610663885=([org.apache.poi.openxml4j.opc.PackageRelationship], org.apache.poi.openxml4j.opc.TargetMode), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3966=org.apache.poi.openxml4j.opc.PackageRelationship, var684=r1, var3313=$r0, var3778=$r3, var1986=$r2, var3099=$r4, var1983=$r6, var394=org.apache.poi.openxml4j.opc.OPCPackage, var3154=$r5, var3520=java.lang.Object, var1864=$r7, var2137=$r9, var3629=$r8, var2448=$r16, var1487=org.apache.poi.openxml4j.opc.PackagePart, var1539=$r10, var2590=$r29, var673=$r17, var3305=$r20, var3082=java.net.URI, var680=$r18, var1913=$r19, var187=$r26, var947=org.apache.poi.openxml4j.opc.TargetMode, var772=$r21, var3567=$r30, var2755=$r27, var3031=$r28}
; {org.apache.poi.openxml4j.opc.PackageRelationship=var3966, r1=var684, $r0=var3313, $r3=var3778, $r2=var1986, $r4=var3099, $r6=var1983, org.apache.poi.openxml4j.opc.OPCPackage=var394, $r5=var3154, java.lang.Object=var3520, $r7=var1864, $r9=var2137, $r8=var3629, $r16=var2448, org.apache.poi.openxml4j.opc.PackagePart=var1487, $r10=var1539, $r29=var2590, $r17=var673, $r20=var3305, java.net.URI=var3082, $r18=var680, $r19=var1913, $r26=var187, org.apache.poi.openxml4j.opc.TargetMode=var947, $r21=var772, $r30=var3567, $r27=var2755, $r28=var3031}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.openxml4j.opc.PackageRelationship;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id=");	$r2 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String id>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - container=");	$r5 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.OPCPackage container>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - relationshipType=");	$r8 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.lang.String relationshipType>;	$r16 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.PackagePart source>;	if $r10 != null goto $r11 = new java.lang.StringBuilder;	$r29 = " - source=null";	goto [?= $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)];	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - target=");	$r18 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackageRelationship: java.net.URI getTargetURI()>();	$r19 = virtualinvoke $r18.<java.net.URI: java.lang.String toASCIIString()>();	$r26 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r21 = r1.<org.apache.poi.openxml4j.opc.PackageRelationship: org.apache.poi.openxml4j.opc.TargetMode targetMode>;	if $r21 != null goto $r22 = new java.lang.StringBuilder;	$r30 = ",targetMode=null";	goto [?= $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)];	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r28
;block_num 5