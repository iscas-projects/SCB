(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3679 0)
(declare-sort var3040 0)
(declare-sort var3397 0)
(declare-sort var354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3040-init () var3040)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/32427362 (var3679) String)
(declare-fun var3397_getZipItemNameFromOPCName/-2040151062 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-496406021 (var3040 String) void)
(declare-fun cast-from-var3040-to-var354 (var3040) var354)
(declare-const null-var3679 var3679)
(declare-const var1125 var3679) ; Statement: r2 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var1125 null-var3679)))
(define-const var3125 var3040 var3040-init) ; Statement: $r10 = new org.apache.logging.log4j.message.SimpleMessage 
(define-const var526 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var526)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var526!1 String)
(assert (= var526!1 ""))
(assert true)
(define-const var271 String (append/672562846 var526!1 "Save part \u0027")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Save part \'") 
(declare-const var526!2 String)
(assert (= var526!2 (str.++ var526!1 "Save part \u0027")))
(assert true)
(define-const var2866 String (getName/32427362 var1125)) ; Statement: $r3 = virtualinvoke r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(define-const var2843 String (var3397_getZipItemNameFromOPCName/-2040151062 var2866)) ; Statement: $r4 = staticinvoke <org.apache.poi.openxml4j.opc.internal.ZipHelper: java.lang.String getZipItemNameFromOPCName(java.lang.String)>($r3) 
(assert true)
(define-const var2901 String (append/672562846 var271 var2843)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var271!1 String)
(assert (= var271!1 (str.++ var271 var2843)))
(assert true)
(define-const var964 String (append/672562846 var2901 "\u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2901!1 String)
(assert (= var2901!1 (str.++ var2901 "\u0027")))
(assert true)
(define-const var223 String (toString/-2075883882 var964)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-496406021 var3125 var223)) ; Statement: specialinvoke $r10.<org.apache.logging.log4j.message.SimpleMessage: void <init>(java.lang.String)>($r8) 

(declare-const var3125!1 var3040)
(declare-const var223!1 String)
(define-const var2630 var354 (cast-from-var3040-to-var354 var3125!1)) ; Statement: $r11 = (org.apache.logging.log4j.message.Message) $r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3040-init=([], org.apache.logging.log4j.message.SimpleMessage), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), var3397_getZipItemNameFromOPCName/-2040151062=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-496406021=([org.apache.logging.log4j.message.SimpleMessage, java.lang.String], void), cast-from-var3040-to-var354=([org.apache.logging.log4j.message.SimpleMessage], org.apache.logging.log4j.message.Message)}
; {var3679=org.apache.poi.openxml4j.opc.PackagePartName, var1125=r2, var3040=org.apache.logging.log4j.message.SimpleMessage, var3125=$r10, var526=$r9, var271=$r5, var2866=$r3, var3397=org.apache.poi.openxml4j.opc.internal.ZipHelper, var2843=$r4, var2901=$r6, var964=$r7, var223=$r8, var354=org.apache.logging.log4j.message.Message, var2630=$r11}
; {org.apache.poi.openxml4j.opc.PackagePartName=var3679, r2=var1125, org.apache.logging.log4j.message.SimpleMessage=var3040, $r10=var3125, $r9=var526, $r5=var271, $r3=var2866, org.apache.poi.openxml4j.opc.internal.ZipHelper=var3397, $r4=var2843, $r6=var2901, $r7=var964, $r8=var223, org.apache.logging.log4j.message.Message=var354, $r11=var2630}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName;	$r10 = new org.apache.logging.log4j.message.SimpleMessage;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Save part \'");	$r3 = virtualinvoke r2.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$r4 = staticinvoke <org.apache.poi.openxml4j.opc.internal.ZipHelper: java.lang.String getZipItemNameFromOPCName(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.apache.logging.log4j.message.SimpleMessage: void <init>(java.lang.String)>($r8);	$r11 = (org.apache.logging.log4j.message.Message) $r10;	return $r11
;block_num 1