(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var370 0)
(declare-sort var2923 0)
(declare-sort var129 0)
(declare-sort var1679 0)
(declare-sort var1818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1679-init () var1679)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1679 String var1818) void)
(declare-fun cast-from-var129-to-var1818 (var129) var1818)
(declare-const null-String String)
(declare-const null-var2923 var2923)
(declare-const null-ClassObject ClassObject)
(declare-const null-var129 var129)
(declare-const var3815 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3815 null-String)))
(declare-const var2462 var2923) ; Statement: r1 := @parameter1: java.lang.ClassLoader 
(assert (not (= var2462 null-var2923)))
(declare-const var38 ClassObject) ; Statement: r6 := @parameter2: java.lang.Class 
(assert (not (= var38 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3910 var129) ; Statement: $r9 := @caughtexception 
(assert (not (= var3910 null-var129)))
(define-const var403 var1679 var1679-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3687 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3687)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3687!1 String)
(assert (= var3687!1 ""))
(assert true)
(define-const var2171 String (append/672562846 var3687!1 "Class ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var3687!2 String)
(assert (= var3687!2 (str.++ var3687!1 "Class ")))
(assert true)
(define-const var3825 String (append/672562846 var2171 var3815)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2171!1 String)
(assert (= var2171!1 (str.++ var2171 var3815)))
(assert true)
(define-const var2160 String (append/672562846 var3825 " could not be loaded because of an invalid dependency.")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" could not be loaded because of an invalid dependency.") 
(declare-const var3825!1 String)
(assert (= var3825!1 (str.++ var3825 " could not be loaded because of an invalid dependency.")))
(assert true)
(define-const var3181 String (toString/-2075883882 var2160)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var403 var3181 (cast-from-var129-to-var1818 var3910))) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9) 

(declare-const var403!1 var1679)
(declare-const var3181!1 String)
(declare-const var3910!1 var129)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1679-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var129-to-var1818=([java.lang.LinkageError], java.lang.Throwable)}
; {var3815=r0, var370=null_type, var2923=java.lang.ClassLoader, var2462=r1, var38=r6, var129=java.lang.LinkageError, var3910=$r9, var1679=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var403=$r10, var3687=$r11, var2171=$r12, var3825=$r13, var2160=$r14, var3181=$r15, var1818=java.lang.Throwable}
; {r0=var3815, null_type=var370, java.lang.ClassLoader=var2923, r1=var2462, r6=var38, java.lang.LinkageError=var129, $r9=var3910, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1679, $r10=var403, $r11=var3687, $r12=var2171, $r13=var3825, $r14=var2160, $r15=var3181, java.lang.Throwable=var1818}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.ClassLoader;	r6 := @parameter2: java.lang.Class;	$r9 := @caughtexception;	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" could not be loaded because of an invalid dependency.");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9);	throw $r10
;block_num 2