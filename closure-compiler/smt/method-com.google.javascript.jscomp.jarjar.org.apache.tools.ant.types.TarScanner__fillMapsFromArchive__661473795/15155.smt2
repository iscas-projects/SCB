(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var2380 0)
(declare-sort var3401 0)
(declare-sort var1454 0)
(declare-sort var2919 0)
(declare-sort var1773 0)
(declare-sort var834 0)
(declare-sort var3285 0)
(declare-sort var1985 0)
(declare-sort var3330 0)
(declare-sort var1036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2919-init () var2919)
(declare-fun var834-init () var834)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun srcFile/1521980336 (var1985) var3285)
(declare-fun cast-from-var2862-to-var1985 (var2862) var1985)
(declare-fun append/-1031950772 (String var3330) String)
(declare-fun cast-from-var3285-to-var3330 (var3285) var3330)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var834 String var1036) void)
(declare-fun cast-from-var1773-to-var1036 (var1773) var1036)
(declare-const null-var2862 var2862)
(declare-const null-var2380 var2380)
(declare-const null-String String)
(declare-const null-var1454 var1454)
(declare-const null-var1773 var1773)
(declare-const var2140 var2862) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TarScanner 
(assert (not (= var2140 null-var2862)))
(declare-const var3017 var2380) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var3017 null-var2380)))
(declare-const var930 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var930 null-String)))
(declare-const var2371 var1454) ; Statement: r6 := @parameter2: java.util.Map 
(assert (not (= var2371 null-var1454)))
(declare-const var3355 var1454) ; Statement: r8 := @parameter3: java.util.Map 
(assert (not (= var3355 null-var1454)))
(declare-const var1175 var1454) ; Statement: r9 := @parameter4: java.util.Map 
(assert (not (= var1175 null-var1454)))
(declare-const var3752 var1454) ; Statement: r10 := @parameter5: java.util.Map 
(assert (not (= var3752 null-var1454)))
(define-const var2781 var2919 var2919-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var590 var1773) ; Statement: $r11 := @caughtexception 
(assert (not (= var590 null-var1773)))
(define-const var1576 var834 var834-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var546 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var546)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var546!1 String)
(assert (= var546!1 ""))
(assert true)
(define-const var1137 String (append/672562846 var546!1 "problem opening ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("problem opening ") 
(declare-const var546!2 String)
(assert (= var546!2 (str.++ var546!1 "problem opening ")))
(define-const var3442 var3285 (srcFile/1521980336 (cast-from-var2862-to-var1985 var2140))) ; Statement: $r14 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TarScanner: java.io.File srcFile> 
(assert true)
(define-const var1948 String (append/-1031950772 var1137 (cast-from-var3285-to-var3330 var3442))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var1137!1 String)
(assert (str.prefixof var1137 var1137!1))
(assert true)
(define-const var426 String (toString/-2075883882 var1948)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1576 var426 (cast-from-var1773-to-var1036 var590))) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11) 

(declare-const var1576!1 var834)
(declare-const var426!1 String)
(declare-const var590!1 var1773)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2919-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarInputStream), var834-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), srcFile/1521980336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner], java.io.File), cast-from-var2862-to-var1985=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TarScanner], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3285-to-var3330=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1773-to-var1036=([java.io.IOException], java.lang.Throwable)}
; {var2862=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TarScanner, var2140=r7, var2380=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3017=r1, var930=r2, var3401=null_type, var1454=java.util.Map, var2371=r6, var3355=r8, var1175=r9, var3752=r10, var2919=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarInputStream, var2781=$r0, var1773=java.io.IOException, var590=$r11, var834=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1576=$r12, var546=$r13, var1137=$r15, var3285=java.io.File, var1985=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner, var3442=$r14, var3330=java.lang.Object, var1948=$r16, var426=$r17, var1036=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TarScanner=var2862, r7=var2140, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2380, r1=var3017, r2=var930, null_type=var3401, java.util.Map=var1454, r6=var2371, r8=var3355, r9=var1175, r10=var3752, com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarInputStream=var2919, $r0=var2781, java.io.IOException=var1773, $r11=var590, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var834, $r12=var1576, $r13=var546, $r15=var1137, java.io.File=var3285, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ArchiveScanner=var1985, $r14=var3442, java.lang.Object=var3330, $r16=var1948, $r17=var426, java.lang.Throwable=var1036}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TarScanner;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r2 := @parameter1: java.lang.String;	r6 := @parameter2: java.util.Map;	r8 := @parameter3: java.util.Map;	r9 := @parameter4: java.util.Map;	r10 := @parameter5: java.util.Map;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarInputStream;	$r11 := @caughtexception;	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("problem opening ");	$r14 = r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TarScanner: java.io.File srcFile>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11);	throw $r12
;block_num 2