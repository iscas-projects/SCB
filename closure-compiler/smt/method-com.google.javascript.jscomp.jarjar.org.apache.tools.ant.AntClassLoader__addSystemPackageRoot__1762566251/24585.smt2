(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3504 0)
(declare-sort var1851 0)
(declare-sort var1045 0)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun systemPackages/-814482109 (var3504) var1045)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addElement/-1717065458 (var1045 var213) void)
(declare-fun cast-from-String-to-var213 (String) var213)
(declare-const null-var3504 var3504)
(declare-const null-String String)
(declare-const var3375 var3504) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var3375 null-var3504)))
(declare-const var2294 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2294 null-String)))
(define-const var865 var1045 (systemPackages/-814482109 var3375)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector systemPackages> 
(define-const var1788 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1788)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1788!1 String)
(assert (= var1788!1 ""))
(assert true)
(define-const var3160 String (append/672562846 var1788!1 var2294)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1788!2 String)
(assert (= var1788!2 (str.++ var1788!1 var2294)))
(assert true)
(define-const var1389 Bool (endsWith/985337093 var2294 ".")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r7 = "." 
(assert (not (= (ite var1389 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2182 String "") ; Statement: $r7 = "" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1084 String (append/672562846 var3160 var2182)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3160!1 String)
(assert (= var3160!1 (str.++ var3160 var2182)))
(assert true)
(define-const var525 String (toString/-2075883882 var1084)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addElement/-1717065458 var865 (cast-from-String-to-var213 var525))) ; Statement: virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6) 

(declare-const var865!1 var1045)
(declare-const var525!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {systemPackages/-814482109=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader], java.util.Vector), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var213=([java.lang.String], java.lang.Object)}
; {var3504=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3375=r0, var2294=r3, var1851=null_type, var1045=java.util.Vector, var865=$r2, var1788=$r1, var3160=$r4, var1389=$z0, var2182=$r7, var1084=$r5, var525=$r6, var213=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var3504, r0=var3375, r3=var2294, null_type=var1851, java.util.Vector=var1045, $r2=var865, $r1=var1788, $r4=var3160, $z0=var1389, $r7=var2182, $r5=var1084, $r6=var525, java.lang.Object=var213}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r3 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.util.Vector systemPackages>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $r7 = ".";	$r7 = "";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.util.Vector: void addElement(java.lang.Object)>($r6);	return
;block_num 3