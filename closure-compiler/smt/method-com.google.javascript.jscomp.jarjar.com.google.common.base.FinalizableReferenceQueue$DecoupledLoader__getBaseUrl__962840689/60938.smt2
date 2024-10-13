(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3850 0)
(declare-sort var1245 0)
(declare-sort var3356 0)
(declare-sort var1387 0)
(declare-sort var3715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getClass/1258963082 (var1245) ClassObject)
(declare-fun cast-from-var3850-to-var1245 (var3850) var1245)
(declare-fun getClassLoader/-563698447 (ClassObject) var3356)
(declare-fun getResource/282459787 (var3356 String) var1387)
(declare-fun var3715-init () var3715)
(declare-fun <init>/-1681661674 (var3715 String) void)
(declare-const null-var3850 var3850)
(declare-const null-var1387 var1387)
(declare-const var593 var3850) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReferenceQueue$DecoupledLoader 
(assert (not (= var593 null-var3850)))
(define-const var3724 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3724)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3724!1 String)
(assert (= var3724!1 ""))
(define-const var3106 String "com.google.javascript.jscomp.jarjar.com.google.common.base.internal.Finalizer") ; Statement: $r1 = "com.google.javascript.jscomp.jarjar.com.google.common.base.internal.Finalizer" 
(assert true)
(define-const var3601 String (replace/1524665721 var3106 46 47)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3259 String (append/672562846 var3724!1 var3601)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3724!2 String)
(assert (= var3724!2 (str.++ var3724!1 var3601)))
(assert true)
(define-const var2373 String (append/672562846 var3259 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var3259!1 String)
(assert (= var3259!1 (str.++ var3259 ".class")))
(assert true)
(define-const var2816 String (toString/-2075883882 var2373)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3068 ClassObject (getClass/1258963082 (cast-from-var3850-to-var1245 var593))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3659 var3356 (getClassLoader/-563698447 var3068)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var3591 var1387 (getResource/282459787 var3659 var2816)) ; Statement: r9 = virtualinvoke $r8.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5) 
 ; Statement: if r9 != null goto r17 = virtualinvoke r9.<java.net.URL: java.lang.String toString()>() 
(assert (not (not (= var3591 null-var1387)))) ; Negate: Cond: r9 != null  
(define-const var1280 var3715 var3715-init) ; Statement: $r16 = new java.io.FileNotFoundException 
(assert true)
;(assert (<init>/-1681661674 var1280 var2816)) ; Statement: specialinvoke $r16.<java.io.FileNotFoundException: void <init>(java.lang.String)>(r5) 

(declare-const var1280!1 var3715)
(declare-const var2816!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3850-to-var1245=([com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReferenceQueue$DecoupledLoader], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL), var3715-init=([], java.io.FileNotFoundException), <init>/-1681661674=([java.io.FileNotFoundException, java.lang.String], void)}
; {var3850=com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReferenceQueue$DecoupledLoader, var593=r6, var3724=$r0, var3106=$r1, var3601=$r2, var3259=$r3, var2373=$r4, var2816=r5, var1245=java.lang.Object, var3068=$r7, var3356=java.lang.ClassLoader, var3659=$r8, var1387=java.net.URL, var3591=r9, var3715=java.io.FileNotFoundException, var1280=$r16}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReferenceQueue$DecoupledLoader=var3850, r6=var593, $r0=var3724, $r1=var3106, $r2=var3601, $r3=var3259, $r4=var2373, r5=var2816, java.lang.Object=var1245, $r7=var3068, java.lang.ClassLoader=var3356, $r8=var3659, java.net.URL=var1387, r9=var3591, java.io.FileNotFoundException=var3715, $r16=var1280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReferenceQueue$DecoupledLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = "com.google.javascript.jscomp.jarjar.com.google.common.base.internal.Finalizer";	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	r9 = virtualinvoke $r8.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r5);	if r9 != null goto r17 = virtualinvoke r9.<java.net.URL: java.lang.String toString()>();	$r16 = new java.io.FileNotFoundException;	specialinvoke $r16.<java.io.FileNotFoundException: void <init>(java.lang.String)>(r5);	throw $r16
;block_num 2