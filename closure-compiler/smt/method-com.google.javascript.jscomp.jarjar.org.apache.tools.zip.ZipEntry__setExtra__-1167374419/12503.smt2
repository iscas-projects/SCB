(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1688 0)
(declare-sort var2567 0)
(declare-sort var1359 0)
(declare-sort var762 0)
(declare-sort var3245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var762-init () var762)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-29768105 (var1688) String)
(declare-fun getMessage/849299655 (var3245) String)
(declare-fun cast-from-var1359-to-var3245 (var1359) var3245)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var762 String var3245) void)
(declare-const null-var1688 var1688)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2567-READ var2567)
(declare-const null-var1359 var1359)
(declare-const var3835 var1688) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry 
(assert (not (= var3835 null-var1688)))
(declare-const var2631 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2631 null-__Array__Int__Int__)))
(define-const var2944 var2567 var2567-READ) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ExtraFieldUtils$UnparseableExtraField: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ExtraFieldUtils$UnparseableExtraField READ> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1447 var1359) ; Statement: $r3 := @caughtexception 
(assert (not (= var1447 null-var1359)))
(define-const var1348 var762 var762-init) ; Statement: $r4 = new java.lang.RuntimeException 
(define-const var2852 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2852)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2852!1 String)
(assert (= var2852!1 ""))
(assert true)
(define-const var3358 String (append/672562846 var2852!1 "Error parsing extra fields for entry: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing extra fields for entry: ") 
(declare-const var2852!2 String)
(assert (= var2852!2 (str.++ var2852!1 "Error parsing extra fields for entry: ")))
(assert true)
(define-const var2417 String (getName/-29768105 var3835)) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>() 
(assert true)
(define-const var427 String (append/672562846 var3358 var2417)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3358!1 String)
(assert (= var3358!1 (str.++ var3358 var2417)))
(assert true)
(define-const var1745 String (append/672562846 var427 " - ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - ") 
(declare-const var427!1 String)
(assert (= var427!1 (str.++ var427 " - ")))
(assert true)
(define-const var1451 String (getMessage/849299655 (cast-from-var1359-to-var3245 var1447))) ; Statement: $r9 = virtualinvoke $r3.<java.util.zip.ZipException: java.lang.String getMessage()>() 
(assert true)
(define-const var1241 String (append/672562846 var1745 var1451)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1745!1 String)
(assert (= var1745!1 (str.++ var1745 var1451)))
(assert true)
(define-const var3014 String (toString/-2075883882 var1241)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1348 var3014 (cast-from-var1359-to-var3245 var1447))) ; Statement: specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r3) 

(declare-const var1348!1 var762)
(declare-const var3014!1 String)
(declare-const var1447!1 var1359)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var762-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-29768105=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1359-to-var3245=([java.util.zip.ZipException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var1688=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry, var3835=r2, var2631=r0, var2567=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ExtraFieldUtils$UnparseableExtraField, var2944=$r1, var1359=java.util.zip.ZipException, var1447=$r3, var762=java.lang.RuntimeException, var1348=$r4, var2852=$r5, var3358=$r7, var2417=$r6, var427=$r8, var1745=$r10, var3245=java.lang.Throwable, var1451=$r9, var1241=$r11, var3014=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry=var1688, r2=var3835, r0=var2631, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ExtraFieldUtils$UnparseableExtraField=var2567, $r1=var2944, java.util.zip.ZipException=var1359, $r3=var1447, java.lang.RuntimeException=var762, $r4=var1348, $r5=var2852, $r7=var3358, $r6=var2417, $r8=var427, $r10=var1745, java.lang.Throwable=var3245, $r9=var1451, $r11=var1241, $r12=var3014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry;	r0 := @parameter0: byte[];	$r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ExtraFieldUtils$UnparseableExtraField: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ExtraFieldUtils$UnparseableExtraField READ>;	$r3 := @caughtexception;	$r4 = new java.lang.RuntimeException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing extra fields for entry: ");	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipEntry: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - ");	$r9 = virtualinvoke $r3.<java.util.zip.ZipException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r3);	throw $r4
;block_num 2