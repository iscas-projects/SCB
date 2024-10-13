(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1496 0)
(declare-sort var3289 0)
(declare-sort var1865 0)
(declare-sort var3320 0)
(declare-sort var1802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3289-init () var3289)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getAbsoluteFile/-33355006 (var3289) var3289)
(declare-fun append/-1031950772 (String var1865) String)
(declare-fun cast-from-var3289-to-var1865 (var3289) var1865)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3320_nanoTime/-1409780067 () Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681595970 (var3289 String) void)
(declare-fun exists/1072868559 (var3289) Bool)
(declare-fun var1802_getFilename/1056253063 (var3289) String)
(declare-const null-var1496 var1496)
(declare-const null-var3289 var3289)
(declare-const var3289-separator String)
(declare-const var882 var1496) ; Statement: r12 := @this: org.apache.poi.openxml4j.opc.ZipPackage 
(assert (not (= var882 null-var1496)))
(declare-const var1718 var3289) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var1718 null-var3289)))
(assert true) ; Non Conditional
(define-const var3423 var3289 var3289-init) ; Statement: $r0 = new java.io.File 
(define-const var351 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var351)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var351!1 String)
(assert (= var351!1 ""))
(assert true)
(define-const var1285 var3289 (getAbsoluteFile/-33355006 var1718)) ; Statement: $r3 = virtualinvoke r2.<java.io.File: java.io.File getAbsoluteFile()>() 
(assert true)
(define-const var2196 String (append/-1031950772 var351!1 (cast-from-var3289-to-var1865 var1285))) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var351!2 String)
(assert (str.prefixof var351!1 var351!2))
(define-const var2641 String var3289-separator) ; Statement: $r4 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var542 String (append/672562846 var2196 var2641)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2196!1 String)
(assert (= var2196!1 (str.++ var2196 var2641)))
(assert true)
(define-const var3872 String (append/672562846 var542 "OpenXML4J")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OpenXML4J") 
(declare-const var542!1 String)
(assert (= var542!1 (str.++ var542 "OpenXML4J")))
(define-const var2809 Int var3320_nanoTime/-1409780067) ; Statement: $l0 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert true)
(define-const var879 String (append/-901862667 var3872 var2809)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3872!1 String)
(assert (str.prefixof var3872 var3872!1))
(assert true)
(define-const var1761 String (toString/-2075883882 var879)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var3423 var1761)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>($r9) 

(declare-const var3423!1 var3289)
(declare-const var1761!1 String)
(assert true)
(define-const var3938 Bool (exists/1072868559 var3423!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r0 = new java.io.File 
(assert (not (not (= (ite var3938 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3735 var3289 (getAbsoluteFile/-33355006 var3423!1)) ; Statement: $r10 = virtualinvoke $r0.<java.io.File: java.io.File getAbsoluteFile()>() 
(define-const var2164 String (var1802_getFilename/1056253063 var3735)) ; Statement: $r11 = staticinvoke <org.apache.poi.openxml4j.opc.internal.FileHelper: java.lang.String getFilename(java.io.File)>($r10) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3289-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getAbsoluteFile/-33355006=([java.io.File], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3289-to-var1865=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3320_nanoTime/-1409780067=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), var1802_getFilename/1056253063=([java.io.File], java.lang.String)}
; {var1496=org.apache.poi.openxml4j.opc.ZipPackage, var882=r12, var3289=java.io.File, var1718=r2, var3423=$r0, var351=$r1, var1285=$r3, var1865=java.lang.Object, var2196=$r5, var2641=$r4, var542=$r6, var3872=$r7, var3320=java.lang.System, var2809=$l0, var879=$r8, var1761=$r9, var3938=$z0, var3735=$r10, var1802=org.apache.poi.openxml4j.opc.internal.FileHelper, var2164=$r11}
; {org.apache.poi.openxml4j.opc.ZipPackage=var1496, r12=var882, java.io.File=var3289, r2=var1718, $r0=var3423, $r1=var351, $r3=var1285, java.lang.Object=var1865, $r5=var2196, $r4=var2641, $r6=var542, $r7=var3872, java.lang.System=var3320, $l0=var2809, $r8=var879, $r9=var1761, $z0=var3938, $r10=var3735, org.apache.poi.openxml4j.opc.internal.FileHelper=var1802, $r11=var2164}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.poi.openxml4j.opc.ZipPackage;	r2 := @parameter0: java.io.File;	$r0 = new java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.io.File: java.io.File getAbsoluteFile()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r4 = <java.io.File: java.lang.String separator>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OpenXML4J");	$l0 = staticinvoke <java.lang.System: long nanoTime()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>($r9);	$z0 = virtualinvoke $r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r0 = new java.io.File;	$r10 = virtualinvoke $r0.<java.io.File: java.io.File getAbsoluteFile()>();	$r11 = staticinvoke <org.apache.poi.openxml4j.opc.internal.FileHelper: java.lang.String getFilename(java.io.File)>($r10);	return $r11
;block_num 3