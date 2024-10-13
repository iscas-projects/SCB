(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3563 0)
(declare-sort var1922 0)
(declare-sort var3766 0)
(declare-sort var3306 0)
(declare-sort var2471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2471) String)
(declare-fun cast-from-var3766-to-var2471 (var3766) var2471)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var1922 String) void)
(declare-const null-var3563 var3563)
(declare-const null-var1922 var1922)
(declare-const null-Bool Bool)
(declare-const null-var3766 var3766)
(declare-const null-String String)
(declare-const var3504 var3563) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var3504 null-var3563)))
(declare-const var1374 var1922) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var1374 null-var1922)))
(declare-const var960 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var960 null-Bool)))
(declare-const var1389 var3766) ; Statement: r2 := @parameter2: java.lang.NoClassDefFoundError 
(assert (not (= var1389 null-var3766)))
(declare-const var1877 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var1877 null-String)))
(define-const var3879 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3879)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3879!1 String)
(assert (= var3879!1 ""))
(assert true)
(define-const var1851 String (append/672562846 var3879!1 "Cause: Could not load a dependent class ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: Could not load a dependent class ") 
(declare-const var3879!2 String)
(assert (= var3879!2 (str.++ var3879!1 "Cause: Could not load a dependent class ")))
(assert true)
(define-const var1034 String (getMessage/849299655 (cast-from-var3766-to-var2471 var1389))) ; Statement: $r3 = virtualinvoke r2.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>() 
(assert true)
(define-const var3033 String (append/672562846 var1851 var1034)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1851!1 String)
(assert (= var1851!1 (str.++ var1851 var1034)))
(assert true)
(define-const var3419 String (toString/-2075883882 var3033)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1374 var3419)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var1374!1 var1922)
(declare-const var3419!1 String)
 ; Statement: if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       This class may be in a separate JAR that is not installed.") 
(assert (= (ite var960 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (println/-1226480079 var1374!1 "       This class may be in a separate JAR that is not installed.")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       This class may be in a separate JAR that is not installed.") 

(declare-const var1374!2 var1922)
(declare-const var3907 String)
(assert true) ; Non Conditional
(assert true)
;(assert (println/-1226480079 var1374!2 "Action: Determine what extra JAR files are needed, and place them in one of:")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Determine what extra JAR files are needed, and place them in one of:") 

(declare-const var1374!3 var1922)
(declare-const var3921 String)
(assert true)
;(assert (println/-1226480079 var1374!3 var1877)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7) 

(declare-const var1374!4 var1922)
(declare-const var1877!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3766-to-var2471=([java.lang.NoClassDefFoundError], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var3563=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var3504=r8, var1922=java.io.PrintWriter, var1374=r0, var960=z0, var3766=java.lang.NoClassDefFoundError, var1389=r2, var1877=r7, var3306=null_type, var3879=$r1, var1851=$r4, var2471=java.lang.Throwable, var1034=$r3, var3033=$r5, var3419=$r6, var3907="       This class may be in a separate JAR that is not installed.", var3921="Action: Determine what extra JAR files are needed, and place them in one of:"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var3563, r8=var3504, java.io.PrintWriter=var1922, r0=var1374, z0=var960, java.lang.NoClassDefFoundError=var3766, r2=var1389, r7=var1877, null_type=var3306, $r1=var3879, $r4=var1851, java.lang.Throwable=var2471, $r3=var1034, $r5=var3033, $r6=var3419, "       This class may be in a separate JAR that is not installed."=var3907, "Action: Determine what extra JAR files are needed, and place them in one of:"=var3921}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r0 := @parameter0: java.io.PrintWriter;	z0 := @parameter1: boolean;	r2 := @parameter2: java.lang.NoClassDefFoundError;	r7 := @parameter3: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cause: Could not load a dependent class ");	$r3 = virtualinvoke r2.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r6);	if z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       This class may be in a separate JAR that is not installed.");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("       This class may be in a separate JAR that is not installed.");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>("Action: Determine what extra JAR files are needed, and place them in one of:");	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>(r7);	return
;block_num 3