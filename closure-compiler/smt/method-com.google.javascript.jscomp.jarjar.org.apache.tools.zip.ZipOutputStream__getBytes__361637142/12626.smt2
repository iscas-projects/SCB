(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1901 0)
(declare-sort var3569 0)
(declare-sort var2557 0)
(declare-sort var3196 0)
(declare-sort var2567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun encoding/-1606102851 (var1901) String)
(declare-fun var3196-init () var3196)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2567) String)
(declare-fun cast-from-var2557-to-var2567 (var2557) var2567)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2056027967 (var3196 String) void)
(declare-const null-var1901 var1901)
(declare-const null-String String)
(declare-const null-var2557 var2557)
(declare-const var3670 var1901) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var3670 null-var1901)))
(declare-const var2666 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2666 null-String)))
(define-const var2378 String (encoding/-1606102851 var3670)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream: java.lang.String encoding> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1514 var2557) ; Statement: $r6 := @caughtexception 
(assert (not (= var1514 null-var2557)))
(define-const var2748 var3196 var3196-init) ; Statement: $r7 = new java.util.zip.ZipException 
(define-const var2267 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2267)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2267!1 String)
(assert (= var2267!1 ""))
(assert true)
(define-const var3430 String (append/672562846 var2267!1 "Failed to encode name: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to encode name: ") 
(declare-const var2267!2 String)
(assert (= var2267!2 (str.++ var2267!1 "Failed to encode name: ")))
(assert true)
(define-const var2615 String (getMessage/849299655 (cast-from-var2557-to-var2567 var1514))) ; Statement: $r9 = virtualinvoke $r6.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3173 String (append/672562846 var3430 var2615)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3430!1 String)
(assert (= var3430!1 (str.++ var3430 var2615)))
(assert true)
(define-const var2422 String (toString/-2075883882 var3173)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2056027967 var2748 var2422)) ; Statement: specialinvoke $r7.<java.util.zip.ZipException: void <init>(java.lang.String)>($r12) 

(declare-const var2748!1 var3196)
(declare-const var2422!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {encoding/-1606102851=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream], java.lang.String), var3196-init=([], java.util.zip.ZipException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2557-to-var2567=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2056027967=([java.util.zip.ZipException, java.lang.String], void)}
; {var1901=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var3670=r0, var2666=r2, var3569=null_type, var2378=$r1, var2557=java.io.IOException, var1514=$r6, var3196=java.util.zip.ZipException, var2748=$r7, var2267=$r8, var3430=$r10, var2567=java.lang.Throwable, var2615=$r9, var3173=$r11, var2422=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var1901, r0=var3670, r2=var2666, null_type=var3569, $r1=var2378, java.io.IOException=var2557, $r6=var1514, java.util.zip.ZipException=var3196, $r7=var2748, $r8=var2267, $r10=var3430, java.lang.Throwable=var2567, $r9=var2615, $r11=var3173, $r12=var2422}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream: java.lang.String encoding>;	$r6 := @caughtexception;	$r7 = new java.util.zip.ZipException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to encode name: ");	$r9 = virtualinvoke $r6.<java.io.IOException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.util.zip.ZipException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2