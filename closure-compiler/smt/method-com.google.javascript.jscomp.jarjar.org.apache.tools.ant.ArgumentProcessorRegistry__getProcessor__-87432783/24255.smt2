(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2517 0)
(declare-sort var821 0)
(declare-sort var743 0)
(declare-sort var2468 0)
(declare-sort var151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2468-init () var2468)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var2468 String var151) void)
(declare-fun cast-from-var743-to-var151 (var743) var151)
(declare-const null-var2517 var2517)
(declare-const null-String String)
(declare-const null-var743 var743)
(declare-const var2683 var2517) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry 
(assert (not (= var2683 null-var2517)))
(declare-const var1954 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1954 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3910 var743) ; Statement: $r3 := @caughtexception 
(assert (not (= var3910 null-var743)))
(define-const var27 var2468 var2468-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var576 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var576)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var576!1 String)
(assert (= var576!1 ""))
(assert true)
(define-const var274 String (append/672562846 var576!1 "Argument processor class ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Argument processor class ") 
(declare-const var576!2 String)
(assert (= var576!2 (str.++ var576!1 "Argument processor class ")))
(assert true)
(define-const var2414 String (append/672562846 var274 var1954)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var274!1 String)
(assert (= var274!1 (str.++ var274 var1954)))
(assert true)
(define-const var2499 String (append/672562846 var2414 " was not found")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found") 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 " was not found")))
(assert true)
(define-const var195 String (toString/-2075883882 var2499)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var27 var195 (cast-from-var743-to-var151 var3910))) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var27!1 var2468)
(declare-const var195!1 String)
(declare-const var3910!1 var743)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2468-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var743-to-var151=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var2517=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry, var2683=r1, var1954=r0, var821=null_type, var743=java.lang.ClassNotFoundException, var3910=$r3, var2468=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var27=$r4, var576=$r5, var274=$r6, var2414=$r7, var2499=$r8, var195=$r9, var151=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry=var2517, r1=var2683, r0=var1954, null_type=var821, java.lang.ClassNotFoundException=var743, $r3=var3910, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2468, $r4=var27, $r5=var576, $r6=var274, $r7=var2414, $r8=var2499, $r9=var195, java.lang.Throwable=var151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry;	r0 := @parameter0: java.lang.String;	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Argument processor class ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	throw $r4
;block_num 2