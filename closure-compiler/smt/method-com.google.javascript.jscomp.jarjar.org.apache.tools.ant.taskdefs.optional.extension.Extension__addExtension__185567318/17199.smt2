(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2312 0)
(declare-sort var3651 0)
(declare-sort var3445 0)
(declare-sort var1720 0)
(declare-sort var2489 0)
(declare-sort var3366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2489) String)
(declare-fun cast-from-var1720-to-var2489 (var1720) var2489)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getExtensionName/864983470 (var2312) String)
(declare-fun putValue/244870442 (var3445 String String) String)
(declare-fun getSpecificationVendor/-2009613043 (var2312) String)
(declare-fun getSpecificationVersion/1984455326 (var2312) var3366)
(declare-fun getImplementationVendorID/1450590573 (var2312) String)
(declare-fun getImplementationVendor/1757899560 (var2312) String)
(declare-fun getImplementationVersion/802077153 (var2312) var3366)
(declare-fun getImplementationURL/2065188443 (var2312) String)
(declare-const null-var2312 var2312)
(declare-const null-String String)
(declare-const null-var3445 var3445)
(declare-const var2312-EXTENSION_NAME var1720)
(declare-const null-var3366 var3366)
(declare-const var926 var2312) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension 
(assert (not (= var926 null-var2312)))
(declare-const var114 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var114 null-String)))
(declare-const var2518 var3445) ; Statement: r0 := @parameter2: java.util.jar.Attributes 
(assert (not (= var2518 null-var3445)))
(define-const var1458 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1458)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1458!1 String)
(assert (= var1458!1 ""))
(assert true)
(define-const var802 String (append/672562846 var1458!1 var114)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1458!2 String)
(assert (= var1458!2 (str.++ var1458!1 var114)))
(define-const var3525 var1720 var2312-EXTENSION_NAME) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_NAME> 
(assert true)
(define-const var64 String (append/-1031950772 var802 (cast-from-var1720-to-var2489 var3525))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var802!1 String)
(assert (str.prefixof var802 var802!1))
(assert true)
(define-const var3755 String (toString/-2075883882 var64)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1245 String (getExtensionName/864983470 var926)) ; Statement: $r7 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getExtensionName()>() 
(assert true)
;(assert (putValue/244870442 var2518 var3755 var1245)) ; Statement: virtualinvoke r0.<java.util.jar.Attributes: java.lang.String putValue(java.lang.String,java.lang.String)>($r8, $r7) 

(declare-const var2518!1 var3445)
(declare-const var3755!1 String)
(declare-const var1245!1 String)
(assert true)
(define-const var1032 String (getSpecificationVendor/-2009613043 var926)) ; Statement: r9 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getSpecificationVendor()>() 
 ; Statement: if null == r9 goto $r46 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>() 
(assert (= null-String var1032)) ; Cond: null == r9 
(assert true)
(define-const var2818 var3366 (getSpecificationVersion/1984455326 var926)) ; Statement: $r46 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>() 
 ; Statement: if null == $r46 goto $r40 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendorID()>() 
(assert (= null-var3366 var2818)) ; Cond: null == $r46 
(assert true)
(define-const var2637 String (getImplementationVendorID/1450590573 var926)) ; Statement: $r40 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendorID()>() 
 ; Statement: if null == $r40 goto $r33 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendor()>() 
(assert (= null-String var2637)) ; Cond: null == $r40 
(assert true)
(define-const var1925 String (getImplementationVendor/1757899560 var926)) ; Statement: $r33 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendor()>() 
 ; Statement: if null == $r33 goto $r27 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getImplementationVersion()>() 
(assert (= null-String var1925)) ; Cond: null == $r33 
(assert true)
(define-const var3989 var3366 (getImplementationVersion/802077153 var926)) ; Statement: $r27 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getImplementationVersion()>() 
 ; Statement: if null == $r27 goto $r21 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationURL()>() 
(assert (= null-var3366 var3989)) ; Cond: null == $r27 
(assert true)
(define-const var634 String (getImplementationURL/2065188443 var926)) ; Statement: $r21 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationURL()>() 
 ; Statement: if null == $r21 goto return 
(assert (= null-String var634)) ; Cond: null == $r21 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1720-to-var2489=([java.util.jar.Attributes$Name], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getExtensionName/864983470=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), putValue/244870442=([java.util.jar.Attributes, java.lang.String, java.lang.String], java.lang.String), getSpecificationVendor/-2009613043=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), getSpecificationVersion/1984455326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), getImplementationVendorID/1450590573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), getImplementationVendor/1757899560=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), getImplementationVersion/802077153=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), getImplementationURL/2065188443=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String)}
; {var2312=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var926=r6, var114=r2, var3651=null_type, var3445=java.util.jar.Attributes, var2518=r0, var1458=$r1, var802=$r4, var1720=java.util.jar.Attributes$Name, var3525=$r3, var2489=java.lang.Object, var64=$r5, var3755=$r8, var1245=$r7, var1032=r9, var3366=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, var2818=$r46, var2637=$r40, var1925=$r33, var3989=$r27, var634=$r21}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var2312, r6=var926, r2=var114, null_type=var3651, java.util.jar.Attributes=var3445, r0=var2518, $r1=var1458, $r4=var802, java.util.jar.Attributes$Name=var1720, $r3=var3525, java.lang.Object=var2489, $r5=var64, $r8=var3755, $r7=var1245, r9=var1032, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal=var3366, $r46=var2818, $r40=var2637, $r33=var1925, $r27=var3989, $r21=var634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension;	r2 := @parameter1: java.lang.String;	r0 := @parameter2: java.util.jar.Attributes;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r3 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.util.jar.Attributes$Name EXTENSION_NAME>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getExtensionName()>();	virtualinvoke r0.<java.util.jar.Attributes: java.lang.String putValue(java.lang.String,java.lang.String)>($r8, $r7);	r9 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getSpecificationVendor()>();	if null == r9 goto $r46 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>();	$r46 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>();	if null == $r46 goto $r40 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendorID()>();	$r40 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendorID()>();	if null == $r40 goto $r33 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendor()>();	$r33 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationVendor()>();	if null == $r33 goto $r27 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getImplementationVersion()>();	$r27 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getImplementationVersion()>();	if null == $r27 goto $r21 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationURL()>();	$r21 = virtualinvoke r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getImplementationURL()>();	if null == $r21 goto return;	return
;block_num 7