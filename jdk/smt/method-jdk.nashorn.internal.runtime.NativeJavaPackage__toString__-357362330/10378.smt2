(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1823352142 (var3594) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3594 var3594)
(declare-const var3642 var3594) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage 
(assert (not (= var3642 null-var3594)))
(define-const var953 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var953)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var953!1 String)
(assert (= var953!1 ""))
(assert true)
(define-const var2811 String (append/672562846 var953!1 "[JavaPackage ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[JavaPackage ") 
(declare-const var953!2 String)
(assert (= var953!2 (str.++ var953!1 "[JavaPackage ")))
(define-const var174 String (name/1823352142 var3642)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(assert true)
(define-const var750 String (append/672562846 var2811 var174)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2811!1 String)
(assert (= var2811!1 (str.++ var2811 var174)))
(assert true)
(define-const var2414 String (append/672562846 var750 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var750!1 String)
(assert (= var750!1 (str.++ var750 "]")))
(assert true)
(define-const var1804 String (toString/-2075883882 var2414)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1823352142=([jdk.nashorn.internal.runtime.NativeJavaPackage], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3594=jdk.nashorn.internal.runtime.NativeJavaPackage, var3642=r1, var953=$r0, var2811=$r3, var174=$r2, var750=$r4, var2414=$r5, var1804=$r6}
; {jdk.nashorn.internal.runtime.NativeJavaPackage=var3594, r1=var3642, $r0=var953, $r3=var2811, $r2=var174, $r4=var750, $r5=var2414, $r6=var1804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[JavaPackage ");	$r2 = r1.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1