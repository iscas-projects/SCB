(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1565 0)
(declare-sort var3303 0)
(declare-sort var3032 0)
(declare-sort var1409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loaderPackages/-814482109 (var1565) var3032)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addElement/-1717065458 (var3032 var1409) void)
(declare-fun cast-from-String-to-var1409 (String) var1409)
(declare-const null-var1565 var1565)
(declare-const null-String String)
(declare-const var628 var1565) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var628 null-var1565)))
(declare-const var174 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var174 null-String)))
(define-const var3761 var3032 (loaderPackages/-814482109 var628)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector loaderPackages> 
(define-const var2924 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2924)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2924!1 String)
(assert (= var2924!1 ""))
(assert true)
(define-const var2443 String (append/672562846 var2924!1 var174)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2924!2 String)
(assert (= var2924!2 (str.++ var2924!1 var174)))
(assert true)
(define-const var2437 Bool (endsWith/985337093 var174 ".")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r7 = "." 
(assert (not (= (ite var2437 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3272 String "") ; Statement: $r7 = "" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2039 String (append/672562846 var2443 var3272)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2443!1 String)
(assert (= var2443!1 (str.++ var2443 var3272)))
(assert true)
(define-const var3174 String (toString/-2075883882 var2039)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addElement/-1717065458 var3761 (cast-from-String-to-var1409 var3174))) ; Statement: virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6) 

(declare-const var3761!1 var3032)
(declare-const var3174!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {loaderPackages/-814482109=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.util.Vector), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var1409=([java.lang.String], java.lang.Object)}
; {var1565=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var628=r0, var174=r3, var3303=null_type, var3032=java.util.Vector, var3761=$r2, var2924=$r1, var2443=$r4, var2437=$z0, var3272=$r7, var2039=$r5, var3174=$r6, var1409=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1565, r0=var628, r3=var174, null_type=var3303, java.util.Vector=var3032, $r2=var3761, $r1=var2924, $r4=var2443, $z0=var2437, $r7=var3272, $r5=var2039, $r6=var3174, java.lang.Object=var1409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r3 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector loaderPackages>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $r7 = ".";	$r7 = "";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6);	return
;block_num 3