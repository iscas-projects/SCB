(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1621 0)
(declare-sort var3229 0)
(declare-sort var857 0)
(declare-sort var423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loaderPackages/-814482109 (var1621) var857)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addElement/-1717065458 (var857 var423) void)
(declare-fun cast-from-String-to-var423 (String) var423)
(declare-const null-var1621 var1621)
(declare-const null-String String)
(declare-const var2072 var1621) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var2072 null-var1621)))
(declare-const var3698 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3698 null-String)))
(define-const var1161 var857 (loaderPackages/-814482109 var2072)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector loaderPackages> 
(define-const var2375 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2375)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2375!1 String)
(assert (= var2375!1 ""))
(assert true)
(define-const var1822 String (append/672562846 var2375!1 var3698)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2375!2 String)
(assert (= var2375!2 (str.++ var2375!1 var3698)))
(assert true)
(define-const var195 Bool (endsWith/985337093 var3698 ".")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r7 = "." 
(assert (= (ite var195 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3 String ".") ; Statement: $r7 = "." 
(assert true) ; Non Conditional
(assert true)
(define-const var1574 String (append/672562846 var1822 var3)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1822!1 String)
(assert (= var1822!1 (str.++ var1822 var3)))
(assert true)
(define-const var720 String (toString/-2075883882 var1574)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addElement/-1717065458 var1161 (cast-from-String-to-var423 var720))) ; Statement: virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6) 

(declare-const var1161!1 var857)
(declare-const var720!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {loaderPackages/-814482109=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.util.Vector), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var423=([java.lang.String], java.lang.Object)}
; {var1621=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var2072=r0, var3698=r3, var3229=null_type, var857=java.util.Vector, var1161=$r2, var2375=$r1, var1822=$r4, var195=$z0, var3=$r7, var1574=$r5, var720=$r6, var423=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1621, r0=var2072, r3=var3698, null_type=var3229, java.util.Vector=var857, $r2=var1161, $r1=var2375, $r4=var1822, $z0=var195, $r7=var3, $r5=var1574, $r6=var720, java.lang.Object=var423}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r3 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector loaderPackages>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $r7 = ".";	$r7 = ".";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6);	return
;block_num 3