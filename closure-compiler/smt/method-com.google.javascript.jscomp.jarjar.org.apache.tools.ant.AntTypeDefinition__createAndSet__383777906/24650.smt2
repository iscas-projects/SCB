(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1040 0)
(declare-sort var519 0)
(declare-sort var2654 0)
(declare-sort var465 0)
(declare-sort var346 0)
(declare-sort var3153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTargetException/2075407118 (var2654) var465)
(declare-fun var346-init () var346)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1461999723 (var1040) String)
(declare-fun append/-1031950772 (String var3153) String)
(declare-fun cast-from-var465-to-var3153 (var465) var3153)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var346 String var465) void)
(declare-const null-var1040 var1040)
(declare-const null-var519 var519)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2654 var2654)
(declare-const var547 var1040) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var547 null-var1040)))
(declare-const var609 var519) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var609 null-var519)))
(declare-const var634 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var634 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1774 var2654) ; Statement: $r54 := @caughtexception 
(assert (not (= var1774 null-var2654)))
(assert true)
(define-const var2861 var465 (getTargetException/2075407118 var1774)) ; Statement: r63 = virtualinvoke $r54.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
(define-const var3022 var346 var346-init) ; Statement: $r55 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1955 String String-init) ; Statement: $r56 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1955)) ; Statement: specialinvoke $r56.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1955!1 String)
(assert (= var1955!1 ""))
(assert true)
(define-const var3994 String (append/672562846 var1955!1 "Could not create type ")) ; Statement: $r58 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ") 
(declare-const var1955!2 String)
(assert (= var1955!2 (str.++ var1955!1 "Could not create type ")))
(define-const var2338 String (name/-1461999723 var547)) ; Statement: $r57 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var1015 String (append/672562846 var3994 var2338)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r57) 
(declare-const var3994!1 String)
(assert (= var3994!1 (str.++ var3994 var2338)))
(assert true)
(define-const var2878 String (append/672562846 var1015 " due to ")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ") 
(declare-const var1015!1 String)
(assert (= var1015!1 (str.++ var1015 " due to ")))
(assert true)
(define-const var638 String (append/-1031950772 var2878 (cast-from-var465-to-var3153 var2861))) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r63) 
(declare-const var2878!1 String)
(assert (str.prefixof var2878 var2878!1))
(assert true)
(define-const var2403 String (toString/-2075883882 var638)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3022 var2403 var2861)) ; Statement: specialinvoke $r55.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r62, r63) 

(declare-const var3022!1 var346)
(declare-const var2403!1 String)
(declare-const var2861!1 var465)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), var346-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var465-to-var3153=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1040=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var547=r0, var519=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var609=r2, var634=r1, var2654=java.lang.reflect.InvocationTargetException, var1774=$r54, var465=java.lang.Throwable, var2861=r63, var346=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3022=$r55, var1955=$r56, var3994=$r58, var2338=$r57, var1015=$r59, var2878=$r60, var3153=java.lang.Object, var638=$r61, var2403=$r62}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var1040, r0=var547, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var519, r2=var609, r1=var634, java.lang.reflect.InvocationTargetException=var2654, $r54=var1774, java.lang.Throwable=var465, r63=var2861, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var346, $r55=var3022, $r56=var1955, $r58=var3994, $r57=var2338, $r59=var1015, $r60=var2878, java.lang.Object=var3153, $r61=var638, $r62=var2403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.Class;	$r54 := @caughtexception;	r63 = virtualinvoke $r54.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	$r55 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r56 = new java.lang.StringBuilder;	specialinvoke $r56.<java.lang.StringBuilder: void <init>()>();	$r58 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ");	$r57 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r57);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ");	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r63);	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r62, r63);	throw $r55
;block_num 2