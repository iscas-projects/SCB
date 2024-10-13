(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1156 0)
(declare-sort var1331 0)
(declare-sort var2198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1331!class ClassObject)
(declare-fun var1156-init () var1156)
(declare-fun <init>/964458484 (var1156) void)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var2198)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2198 var2198)
(declare-const var1331-majorVersion String)
(declare-const var1331-minorVersion String)
(define-const var1192 String "??") ; Statement: r15 = "??" 
(define-const var289 String "??") ; Statement: r16 = "??" 
(define-const var895 String "??") ; Statement: r17 = "??" 
(define-const var3824 var1156 var1156-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var3824)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var3824!1 var1156)
(define-const var2467 ClassObject var1331!class) ; Statement: $r1 = class "Lorg/javacc/Version;" 
(assert true)
(define-const var1677 var2198 (getResourceAsStream/2018191724 var2467 "/version.properties")) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>("/version.properties") 
 ; Statement: if r2 == null goto <org.javacc.Version: java.lang.String majorVersion> = r15 
(assert (= var1677 null-var2198)) ; Cond: r2 == null 
(define-const var2557 String var1192) ; Statement: <org.javacc.Version: java.lang.String majorVersion> = r15 
(define-const var3942 String var289) ; Statement: <org.javacc.Version: java.lang.String minorVersion> = r16 
(define-const var243 String var895) ; Statement: <org.javacc.Version: java.lang.String patchVersion> = r17 
(define-const var1414 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1414)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1414!1 String)
(assert (= var1414!1 ""))
(define-const var1896 String var1331-majorVersion) ; Statement: $r19 = <org.javacc.Version: java.lang.String majorVersion> 
(assert true)
(define-const var3352 String (append/672562846 var1414!1 var1896)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1414!2 String)
(assert (= var1414!2 (str.++ var1414!1 var1896)))
(assert true)
(define-const var3381 String (append/672562846 var3352 ".")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3352!1 String)
(assert (= var3352!1 (str.++ var3352 ".")))
(define-const var264 String var1331-minorVersion) ; Statement: $r22 = <org.javacc.Version: java.lang.String minorVersion> 
(assert true)
(define-const var1940 String (append/672562846 var3381 var264)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3381!1 String)
(assert (= var3381!1 (str.++ var3381 var264)))
(assert true)
(define-const var1691 String (toString/-2075883882 var1940)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2664 String var1691) ; Statement: <org.javacc.Version: java.lang.String majorDotMinor> = $r24 
(define-const var3701 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3701)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3701!1 String)
(assert (= var3701!1 ""))
(define-const var1851 String var1331-majorVersion) ; Statement: $r26 = <org.javacc.Version: java.lang.String majorVersion> 
(assert true)
(define-const var3595 String (append/672562846 var3701!1 var1851)) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3701!2 String)
(assert (= var3701!2 (str.++ var3701!1 var1851)))
(assert true)
(define-const var3366 String (append/672562846 var3595 ".")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 ".")))
(define-const var58 String var1331-minorVersion) ; Statement: $r29 = <org.javacc.Version: java.lang.String minorVersion> 
(assert true)
(define-const var1238 String (append/672562846 var3366 var58)) ; Statement: $r6 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var3366!1 String)
(assert (= var3366!1 (str.++ var3366 var58)))
(assert true)
(define-const var1854 Bool (= var895 "")) ; Statement: $z0 = virtualinvoke r17.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var1854 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2273 String "") ; Statement: $r30 = "" 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2003 String (append/672562846 var1238 var2273)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1238!1 String)
(assert (= var1238!1 (str.++ var1238 var2273)))
(assert true)
(define-const var591 String (toString/-2075883882 var2003)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3192 String var591) ; Statement: <org.javacc.Version: java.lang.String versionNumber> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1156-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1192=r15, var289=r16, var895=r17, var1156=java.util.Properties, var3824=$r0, var1331=org.javacc.Version, var2467=$r1, var2198=java.io.InputStream, var1677=r2, var2557=<org.javacc.Version: java.lang.String majorVersion>, var3942=<org.javacc.Version: java.lang.String minorVersion>, var243=<org.javacc.Version: java.lang.String patchVersion>, var1414=$r18, var1896=$r19, var3352=$r20, var3381=$r21, var264=$r22, var1940=$r23, var1691=$r24, var2664=<org.javacc.Version: java.lang.String majorDotMinor>, var3701=$r25, var1851=$r26, var3595=$r27, var3366=$r28, var58=$r29, var1238=$r6, var1854=$z0, var2273=$r30, var2003=$r7, var591=$r8, var3192=<org.javacc.Version: java.lang.String versionNumber>}
; {r15=var1192, r16=var289, r17=var895, java.util.Properties=var1156, $r0=var3824, org.javacc.Version=var1331, $r1=var2467, java.io.InputStream=var2198, r2=var1677, <org.javacc.Version: java.lang.String majorVersion>=var2557, <org.javacc.Version: java.lang.String minorVersion>=var3942, <org.javacc.Version: java.lang.String patchVersion>=var243, $r18=var1414, $r19=var1896, $r20=var3352, $r21=var3381, $r22=var264, $r23=var1940, $r24=var1691, <org.javacc.Version: java.lang.String majorDotMinor>=var2664, $r25=var3701, $r26=var1851, $r27=var3595, $r28=var3366, $r29=var58, $r6=var1238, $z0=var1854, $r30=var2273, $r7=var2003, $r8=var591, <org.javacc.Version: java.lang.String versionNumber>=var3192}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r15 = "??";	r16 = "??";	r17 = "??";	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r1 = class "Lorg/javacc/Version;";	r2 = virtualinvoke $r1.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>("/version.properties");	if r2 == null goto <org.javacc.Version: java.lang.String majorVersion> = r15;	<org.javacc.Version: java.lang.String majorVersion> = r15;	<org.javacc.Version: java.lang.String minorVersion> = r16;	<org.javacc.Version: java.lang.String patchVersion> = r17;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = <org.javacc.Version: java.lang.String majorVersion>;	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r22 = <org.javacc.Version: java.lang.String minorVersion>;	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	<org.javacc.Version: java.lang.String majorDotMinor> = $r24;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = <org.javacc.Version: java.lang.String majorVersion>;	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r29 = <org.javacc.Version: java.lang.String minorVersion>;	$r6 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$z0 = virtualinvoke r17.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r30 = "";	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	<org.javacc.Version: java.lang.String versionNumber> = $r8;	return
;block_num 4