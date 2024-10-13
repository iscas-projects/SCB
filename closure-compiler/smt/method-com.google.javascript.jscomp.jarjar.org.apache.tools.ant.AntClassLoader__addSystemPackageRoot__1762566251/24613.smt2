(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2141 0)
(declare-sort var1775 0)
(declare-sort var3464 0)
(declare-sort var497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun systemPackages/-814482109 (var2141) var3464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addElement/-1717065458 (var3464 var497) void)
(declare-fun cast-from-String-to-var497 (String) var497)
(declare-const null-var2141 var2141)
(declare-const null-String String)
(declare-const var1277 var2141) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var1277 null-var2141)))
(declare-const var3587 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3587 null-String)))
(define-const var1170 var3464 (systemPackages/-814482109 var1277)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector systemPackages> 
(define-const var2649 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2649)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2649!1 String)
(assert (= var2649!1 ""))
(assert true)
(define-const var822 String (append/672562846 var2649!1 var3587)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2649!2 String)
(assert (= var2649!2 (str.++ var2649!1 var3587)))
(assert true)
(define-const var2076 Bool (endsWith/985337093 var3587 ".")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r7 = "." 
(assert (= (ite var2076 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3327 String ".") ; Statement: $r7 = "." 
(assert true) ; Non Conditional
(assert true)
(define-const var1537 String (append/672562846 var822 var3327)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var822!1 String)
(assert (= var822!1 (str.++ var822 var3327)))
(assert true)
(define-const var3474 String (toString/-2075883882 var1537)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addElement/-1717065458 var1170 (cast-from-String-to-var497 var3474))) ; Statement: virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6) 

(declare-const var1170!1 var3464)
(declare-const var3474!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {systemPackages/-814482109=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.util.Vector), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var497=([java.lang.String], java.lang.Object)}
; {var2141=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var1277=r0, var3587=r3, var1775=null_type, var3464=java.util.Vector, var1170=$r2, var2649=$r1, var822=$r4, var2076=$z0, var3327=$r7, var1537=$r5, var3474=$r6, var497=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var2141, r0=var1277, r3=var3587, null_type=var1775, java.util.Vector=var3464, $r2=var1170, $r1=var2649, $r4=var822, $z0=var2076, $r7=var3327, $r5=var1537, $r6=var3474, java.lang.Object=var497}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r3 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector systemPackages>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $r7 = ".";	$r7 = ".";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6);	return
;block_num 3