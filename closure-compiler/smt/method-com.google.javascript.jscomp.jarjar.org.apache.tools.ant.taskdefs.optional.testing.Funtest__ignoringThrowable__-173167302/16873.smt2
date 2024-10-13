(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var195 0)
(declare-sort var2733 0)
(declare-sort var522 0)
(declare-sort var1335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var522) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1451857567 (var1335 String var522 Int) void)
(declare-fun cast-from-var195-to-var1335 (var195) var1335)
(declare-const null-var195 var195)
(declare-const null-String String)
(declare-const null-var522 var522)
(declare-const var2078 var195) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.Funtest 
(assert (not (= var2078 null-var195)))
(declare-const var2309 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2309 null-String)))
(declare-const var3135 var522) ; Statement: r4 := @parameter1: java.lang.Throwable 
(assert (not (= var3135 null-var522)))
(define-const var2279 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2279)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2279!1 String)
(assert (= var2279!1 ""))
(assert true)
(define-const var3408 String (append/672562846 var2279!1 var2309)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2279!2 String)
(assert (= var2279!2 (str.++ var2279!1 var2309)))
(assert true)
(define-const var1979 String (append/672562846 var3408 ": ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3408!1 String)
(assert (= var3408!1 (str.++ var3408 ": ")))
(assert true)
(define-const var3750 String (toString/-1112415476 var3135)) ; Statement: $r5 = virtualinvoke r4.<java.lang.Throwable: java.lang.String toString()>() 
(assert true)
(define-const var540 String (append/672562846 var1979 var3750)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1979!1 String)
(assert (= var1979!1 (str.++ var1979 var3750)))
(assert true)
(define-const var1804 String (toString/-2075883882 var540)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1451857567 (cast-from-var195-to-var1335 var2078) var1804 var3135 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.Funtest: void log(java.lang.String,java.lang.Throwable,int)>($r8, r4, 1) 

(declare-const var2078!1 var195)
(declare-const var1804!1 String)
(declare-const var3135!1 var522)
(declare-const var1075 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1451857567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, java.lang.Throwable, int], void), cast-from-var195-to-var1335=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.Funtest], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var195=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.Funtest, var2078=r0, var2309=r2, var2733=null_type, var522=java.lang.Throwable, var3135=r4, var2279=$r1, var3408=$r3, var1979=$r6, var3750=$r5, var540=$r7, var1804=$r8, var1335=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1075=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.Funtest=var195, r0=var2078, r2=var2309, null_type=var2733, java.lang.Throwable=var522, r4=var3135, $r1=var2279, $r3=var3408, $r6=var1979, $r5=var3750, $r7=var540, $r8=var1804, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1335, 1=var1075}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.Funtest;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r5 = virtualinvoke r4.<java.lang.Throwable: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.Funtest: void log(java.lang.String,java.lang.Throwable,int)>($r8, r4, 1);	return
;block_num 1