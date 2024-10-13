(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var21 0)
(declare-sort var2000 0)
(declare-sort var144 0)
(declare-sort var811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var21_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3671 String) void)
(declare-fun var2000-init () var2000)
(declare-fun <init>/1056156189 (var2000 String String) void)
(declare-fun var811_listJarFiles/-1210850268 (var2000) (Array Int var2000))
(declare-fun var811_printLibraries/-420489325 ((Array Int var2000) var3671) void)
(declare-const null-var3671 var3671)
(declare-const var144-USER_LIBDIR String)
(declare-const var1194 var3671) ; Statement: r1 := @parameter0: java.io.PrintStream 
(assert (not (= var1194 null-var3671)))
(define-const var2629 String (var21_getProperty/258823597 "user.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var276 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var276)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var276!1 String)
(assert (= var276!1 ""))
(assert true)
(define-const var733 String (append/672562846 var276!1 "user.home: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("user.home: ") 
(declare-const var276!2 String)
(assert (= var276!2 (str.++ var276!1 "user.home: ")))
(assert true)
(define-const var1577 String (append/672562846 var733 var2629)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var733!1 String)
(assert (= var733!1 (str.++ var733 var2629)))
(assert true)
(define-const var3314 String (toString/-2075883882 var1577)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1194 var3314)) ; Statement: virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var1194!1 var3671)
(declare-const var3314!1 String)
(define-const var1386 var2000 var2000-init) ; Statement: $r6 = new java.io.File 
(define-const var815 String var144-USER_LIBDIR) ; Statement: $r7 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR> 
(assert true)
;(assert (<init>/1056156189 var1386 var2629 var815)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r0, $r7) 

(declare-const var1386!1 var2000)
(declare-const var2629!1 String)
(declare-const var815!1 String)
(define-const var3159 (Array Int var2000) (var811_listJarFiles/-1210850268 var1386!1)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.io.File[] listJarFiles(java.io.File)>($r6) 
;(assert (var811_printLibraries/-420489325 var3159 var1194!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void printLibraries(java.io.File[],java.io.PrintStream)>($r8, r1) 

(declare-const var3159!1 (Array Int var2000))
(declare-const var1194!2 var3671)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var21_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2000-init=([], java.io.File), <init>/1056156189=([java.io.File, java.lang.String, java.lang.String], void), var811_listJarFiles/-1210850268=([java.io.File], java.io.File[]), var811_printLibraries/-420489325=([java.io.File[], java.io.PrintStream], void)}
; {var3671=java.io.PrintStream, var1194=r1, var21=java.lang.System, var2629=r0, var276=$r2, var733=$r3, var1577=$r4, var3314=$r5, var2000=java.io.File, var1386=$r6, var144=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher, var815=$r7, var811=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics, var3159=$r8}
; {java.io.PrintStream=var3671, r1=var1194, java.lang.System=var21, r0=var2629, $r2=var276, $r3=var733, $r4=var1577, $r5=var3314, java.io.File=var2000, $r6=var1386, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher=var144, $r7=var815, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics=var811, $r8=var3159}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.io.PrintStream;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("user.home: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	$r6 = new java.io.File;	$r7 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.launch.Launcher: java.lang.String USER_LIBDIR>;	specialinvoke $r6.<java.io.File: void <init>(java.lang.String,java.lang.String)>(r0, $r7);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: java.io.File[] listJarFiles(java.io.File)>($r6);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Diagnostics: void printLibraries(java.io.File[],java.io.PrintStream)>($r8, r1);	return
;block_num 1