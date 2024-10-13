(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2166 0)
(declare-sort var2618 0)
(declare-sort var2554 0)
(declare-sort var1530 0)
(declare-sort var2815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1530-init () var1530)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1530 String var2815) void)
(declare-fun cast-from-var2554-to-var2815 (var2554) var2815)
(declare-const null-String String)
(declare-const null-var2618 var2618)
(declare-const null-var2554 var2554)
(declare-const var2158 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2158 null-String)))
(declare-const var3005 var2618) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var3005 null-var2618)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2413 var2554) ; Statement: $r14 := @caughtexception 
(assert (not (= var2413 null-var2554)))
(define-const var2273 var1530 var1530-init) ; Statement: $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var460 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var460)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var460!1 String)
(assert (= var460!1 ""))
(assert true)
(define-const var3669 String (append/672562846 var460!1 var2158)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var460!2 String)
(assert (= var460!2 (str.++ var460!1 var2158)))
(assert true)
(define-const var3236 String (append/672562846 var3669 " isn\u0027t the classname of a compiler adapter.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t the classname of a compiler adapter.") 
(declare-const var3669!1 String)
(assert (= var3669!1 (str.++ var3669 " isn\u0027t the classname of a compiler adapter.")))
(assert true)
(define-const var806 String (toString/-2075883882 var3236)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2273 var806 (cast-from-var2554-to-var2815 var2413))) ; Statement: specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14) 

(declare-const var2273!1 var1530)
(declare-const var806!1 String)
(declare-const var2413!1 var2554)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1530-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2554-to-var2815=([java.lang.ClassCastException], java.lang.Throwable)}
; {var2158=r1, var2166=null_type, var2618=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3005=r0, var2554=java.lang.ClassCastException, var2413=$r14, var1530=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2273=$r15, var460=$r16, var3669=$r17, var3236=$r18, var806=$r19, var2815=java.lang.Throwable}
; {r1=var2158, null_type=var2166, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var2618, r0=var3005, java.lang.ClassCastException=var2554, $r14=var2413, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1530, $r15=var2273, $r16=var460, $r17=var3669, $r18=var3236, $r19=var806, java.lang.Throwable=var2815}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	$r14 := @caughtexception;	$r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t the classname of a compiler adapter.");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14);	throw $r15
;block_num 2