(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3525 0)
(declare-sort var2812 0)
(declare-sort var1976 0)
(declare-sort var2578 0)
(declare-sort var3669 0)
(declare-sort var625 0)
(declare-sort var2240 0)
(declare-sort var2545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1976-init () var1976)
(declare-fun var2578-init () var2578)
(declare-fun var625-init () var625)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2240) String)
(declare-fun cast-from-var2812-to-var2240 (var2812) var2240)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var625 String var2545) void)
(declare-fun cast-from-var3669-to-var2545 (var3669) var2545)
(declare-const null-var3525 var3525)
(declare-const null-var2812 var2812)
(declare-const null-var3669 var3669)
(declare-const var2966 var3525) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum 
(assert (not (= var2966 null-var3525)))
(declare-const var1613 var2812) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var1613 null-var2812)))
(define-const var2945 var1976 var1976-init) ; Statement: $r0 = new java.io.BufferedReader 
(define-const var769 var2578 var2578-init) ; Statement: $r1 = new java.io.FileReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var976 var3669) ; Statement: $r8 := @caughtexception 
(assert (not (= var976 null-var3669)))
(define-const var2548 var625 var625-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var416 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var416)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var416!1 String)
(assert (= var416!1 ""))
(assert true)
(define-const var994 String (append/672562846 var416!1 "Couldn\u0027t read checksum file ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t read checksum file ") 
(declare-const var416!2 String)
(assert (= var416!2 (str.++ var416!1 "Couldn\u0027t read checksum file ")))
(assert true)
(define-const var1342 String (append/-1031950772 var994 (cast-from-var2812-to-var2240 var1613))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var994!1 String)
(assert (str.prefixof var994 var994!1))
(assert true)
(define-const var1598 String (toString/-2075883882 var1342)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2548 var1598 (cast-from-var3669-to-var2545 var976))) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r8) 

(declare-const var2548!1 var625)
(declare-const var1598!1 String)
(declare-const var976!1 var3669)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1976-init=([], java.io.BufferedReader), var2578-init=([], java.io.FileReader), var625-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2812-to-var2240=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3669-to-var2545=([java.lang.Exception], java.lang.Throwable)}
; {var3525=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum, var2966=r3, var2812=java.io.File, var1613=r2, var1976=java.io.BufferedReader, var2945=$r0, var2578=java.io.FileReader, var769=$r1, var3669=java.lang.Exception, var976=$r8, var625=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2548=$r9, var416=$r10, var994=$r11, var2240=java.lang.Object, var1342=$r12, var1598=$r13, var2545=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum=var3525, r3=var2966, java.io.File=var2812, r2=var1613, java.io.BufferedReader=var1976, $r0=var2945, java.io.FileReader=var2578, $r1=var769, java.lang.Exception=var3669, $r8=var976, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var625, $r9=var2548, $r10=var416, $r11=var994, java.lang.Object=var2240, $r12=var1342, $r13=var1598, java.lang.Throwable=var2545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum;	r2 := @parameter0: java.io.File;	$r0 = new java.io.BufferedReader;	$r1 = new java.io.FileReader;	$r8 := @caughtexception;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t read checksum file ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r8);	throw $r9
;block_num 2