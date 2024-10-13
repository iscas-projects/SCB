(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1441 0)
(declare-sort var1954 0)
(declare-sort var2541 0)
(declare-sort var598 0)
(declare-sort var2529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1954-init () var1954)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun handleError/-1488321417 (var1441 String) void)
(declare-const null-var1441 var1441)
(declare-const null-var1954 var1954)
(declare-const null-var2541 var2541)
(declare-const null-String String)
(declare-const null-var2529 var2529)
(declare-const var605 var1441) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink 
(assert (not (= var605 null-var1441)))
(declare-const var2500 var1954) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2500 null-var1954)))
(declare-const var2336 var2541) ; Statement: r8 := @parameter1: java.util.Set 
(assert (not (= var2336 null-var2541)))
(declare-const var3088 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3088 null-String)))
(define-const var1094 var1954 var1954-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var854 var2529) ; Statement: $r9 := @caughtexception 
(assert (not (= var854 null-var2529)))
(define-const var3799 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3799)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3799!1 String)
(assert (= var3799!1 ""))
(assert true)
(define-const var3248 String (append/672562846 var3799!1 "IOException: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException: ") 
(declare-const var3799!2 String)
(assert (= var3799!2 (str.++ var3799!1 "IOException: ")))
(assert true)
(define-const var3211 String (append/672562846 var3248 var3088)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3248!1 String)
(assert (= var3248!1 (str.++ var3248 var3088)))
(assert true)
(define-const var312 String (append/672562846 var3211 " omitted")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted") 
(declare-const var3211!1 String)
(assert (= var3211!1 (str.++ var3211 " omitted")))
(assert true)
(define-const var1539 String (toString/-2075883882 var312)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (handleError/-1488321417 var605 var1539)) ; Statement: specialinvoke r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: void handleError(java.lang.String)>($r15) 

(declare-const var605!1 var1441)
(declare-const var1539!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1954-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), handleError/-1488321417=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink, java.lang.String], void)}
; {var1441=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink, var605=r10, var1954=java.io.File, var2500=r1, var2541=java.util.Set, var2336=r8, var3088=r2, var598=null_type, var1094=$r0, var2529=java.io.IOException, var854=$r9, var3799=$r11, var3248=$r12, var3211=$r13, var312=$r14, var1539=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink=var1441, r10=var605, java.io.File=var1954, r1=var2500, java.util.Set=var2541, r8=var2336, r2=var3088, null_type=var598, $r0=var1094, java.io.IOException=var2529, $r9=var854, $r11=var3799, $r12=var3248, $r13=var3211, $r14=var312, $r15=var1539}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink;	r1 := @parameter0: java.io.File;	r8 := @parameter1: java.util.Set;	r2 := @parameter2: java.lang.String;	$r0 = new java.io.File;	$r9 := @caughtexception;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.unix.Symlink: void handleError(java.lang.String)>($r15);	return
;block_num 3