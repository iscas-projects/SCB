(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var313 0)
(declare-sort var349 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var349!class ClassObject)
(declare-fun var313-init () var313)
(declare-fun <init>/964458484 (var313) void)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var1129)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1129 var1129)
(declare-const var349-majorVersion String)
(declare-const var349-minorVersion String)
(define-const var3906 String "??") ; Statement: r15 = "??" 
(define-const var538 String "??") ; Statement: r16 = "??" 
(define-const var2776 String "??") ; Statement: r17 = "??" 
(define-const var1576 var313 var313-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var1576)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var1576!1 var313)
(define-const var1997 ClassObject var349!class) ; Statement: $r1 = class "Lorg/javacc/Version;" 
(assert true)
(define-const var1884 var1129 (getResourceAsStream/2018191724 var1997 "/version.properties")) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>("/version.properties") 
 ; Statement: if r2 == null goto <org.javacc.Version: java.lang.String majorVersion> = r15 
(assert (= var1884 null-var1129)) ; Cond: r2 == null 
(define-const var2562 String var3906) ; Statement: <org.javacc.Version: java.lang.String majorVersion> = r15 
(define-const var2135 String var538) ; Statement: <org.javacc.Version: java.lang.String minorVersion> = r16 
(define-const var2033 String var2776) ; Statement: <org.javacc.Version: java.lang.String patchVersion> = r17 
(define-const var1006 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1006)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1006!1 String)
(assert (= var1006!1 ""))
(define-const var3541 String var349-majorVersion) ; Statement: $r19 = <org.javacc.Version: java.lang.String majorVersion> 
(assert true)
(define-const var228 String (append/672562846 var1006!1 var3541)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1006!2 String)
(assert (= var1006!2 (str.++ var1006!1 var3541)))
(assert true)
(define-const var1669 String (append/672562846 var228 ".")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var228!1 String)
(assert (= var228!1 (str.++ var228 ".")))
(define-const var1363 String var349-minorVersion) ; Statement: $r22 = <org.javacc.Version: java.lang.String minorVersion> 
(assert true)
(define-const var2987 String (append/672562846 var1669 var1363)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1669!1 String)
(assert (= var1669!1 (str.++ var1669 var1363)))
(assert true)
(define-const var3316 String (toString/-2075883882 var2987)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2662 String var3316) ; Statement: <org.javacc.Version: java.lang.String majorDotMinor> = $r24 
(define-const var1813 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1813)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1813!1 String)
(assert (= var1813!1 ""))
(define-const var1705 String var349-majorVersion) ; Statement: $r26 = <org.javacc.Version: java.lang.String majorVersion> 
(assert true)
(define-const var3038 String (append/672562846 var1813!1 var1705)) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1813!2 String)
(assert (= var1813!2 (str.++ var1813!1 var1705)))
(assert true)
(define-const var235 String (append/672562846 var3038 ".")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3038!1 String)
(assert (= var3038!1 (str.++ var3038 ".")))
(define-const var3062 String var349-minorVersion) ; Statement: $r29 = <org.javacc.Version: java.lang.String minorVersion> 
(assert true)
(define-const var2722 String (append/672562846 var235 var3062)) ; Statement: $r6 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var235!1 String)
(assert (= var235!1 (str.++ var235 var3062)))
(assert true)
(define-const var2234 Bool (= var2776 "")) ; Statement: $z0 = virtualinvoke r17.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var2234 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3616 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3616)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3616!1 String)
(assert (= var3616!1 ""))
(assert true)
(define-const var919 String (append/672562846 var3616!1 ".")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3616!2 String)
(assert (= var3616!2 (str.++ var3616!1 ".")))
(assert true)
(define-const var166 String (append/672562846 var919 var2776)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17) 
(declare-const var919!1 String)
(assert (= var919!1 (str.++ var919 var2776)))
(assert true)
(define-const var1672 String (toString/-2075883882 var166)) ; Statement: $r30 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1601 String (append/672562846 var2722 var1672)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var2722!1 String)
(assert (= var2722!1 (str.++ var2722 var1672)))
(assert true)
(define-const var42 String (toString/-2075883882 var1601)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var207 String var42) ; Statement: <org.javacc.Version: java.lang.String versionNumber> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var313-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3906=r15, var538=r16, var2776=r17, var313=java.util.Properties, var1576=$r0, var349=org.javacc.Version, var1997=$r1, var1129=java.io.InputStream, var1884=r2, var2562=<org.javacc.Version: java.lang.String majorVersion>, var2135=<org.javacc.Version: java.lang.String minorVersion>, var2033=<org.javacc.Version: java.lang.String patchVersion>, var1006=$r18, var3541=$r19, var228=$r20, var1669=$r21, var1363=$r22, var2987=$r23, var3316=$r24, var2662=<org.javacc.Version: java.lang.String majorDotMinor>, var1813=$r25, var1705=$r26, var3038=$r27, var235=$r28, var3062=$r29, var2722=$r6, var2234=$z0, var3616=$r3, var919=$r4, var166=$r5, var1672=$r30, var1601=$r7, var42=$r8, var207=<org.javacc.Version: java.lang.String versionNumber>}
; {r15=var3906, r16=var538, r17=var2776, java.util.Properties=var313, $r0=var1576, org.javacc.Version=var349, $r1=var1997, java.io.InputStream=var1129, r2=var1884, <org.javacc.Version: java.lang.String majorVersion>=var2562, <org.javacc.Version: java.lang.String minorVersion>=var2135, <org.javacc.Version: java.lang.String patchVersion>=var2033, $r18=var1006, $r19=var3541, $r20=var228, $r21=var1669, $r22=var1363, $r23=var2987, $r24=var3316, <org.javacc.Version: java.lang.String majorDotMinor>=var2662, $r25=var1813, $r26=var1705, $r27=var3038, $r28=var235, $r29=var3062, $r6=var2722, $z0=var2234, $r3=var3616, $r4=var919, $r5=var166, $r30=var1672, $r7=var1601, $r8=var42, <org.javacc.Version: java.lang.String versionNumber>=var207}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r15 = "??";	r16 = "??";	r17 = "??";	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r1 = class "Lorg/javacc/Version;";	r2 = virtualinvoke $r1.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>("/version.properties");	if r2 == null goto <org.javacc.Version: java.lang.String majorVersion> = r15;	<org.javacc.Version: java.lang.String majorVersion> = r15;	<org.javacc.Version: java.lang.String minorVersion> = r16;	<org.javacc.Version: java.lang.String patchVersion> = r17;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = <org.javacc.Version: java.lang.String majorVersion>;	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r22 = <org.javacc.Version: java.lang.String minorVersion>;	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	<org.javacc.Version: java.lang.String majorDotMinor> = $r24;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = <org.javacc.Version: java.lang.String majorVersion>;	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r29 = <org.javacc.Version: java.lang.String minorVersion>;	$r6 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$z0 = virtualinvoke r17.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17);	$r30 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	<org.javacc.Version: java.lang.String versionNumber> = $r8;	return
;block_num 4