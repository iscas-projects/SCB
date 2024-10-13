(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2605 0)
(declare-sort var3519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3519 String Int) void)
(declare-fun cast-from-var2605-to-var3519 (var2605) var3519)
(declare-const null-var2605 var2605)
(declare-const null-Int Int)
(declare-const var84 var2605) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate 
(assert (not (= var84 null-var2605)))
(declare-const var896 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var896 null-Int)))
(define-const var3779 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3779)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3779!1 String)
(assert (= var3779!1 ""))
(assert true)
(define-const var2262 String (append/-1001720160 var3779!1 var896)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3779!2 String)
(assert (str.prefixof var3779!1 var3779!2))
(assert true)
(define-const var254 String (append/672562846 var2262 " file(s) have been successfully validated.")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" file(s) have been successfully validated.") 
(declare-const var2262!1 String)
(assert (= var2262!1 (str.++ var2262 " file(s) have been successfully validated.")))
(assert true)
(define-const var2932 String (toString/-2075883882 var254)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2605-to-var3519 var84) var2932 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r4, 3) 

(declare-const var84!1 var2605)
(declare-const var2932!1 String)
(declare-const var2122 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2605-to-var3519=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2605=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate, var84=r0, var896=i0, var3779=$r1, var2262=$r2, var254=$r3, var2932=$r4, var3519=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2122=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate=var2605, r0=var84, i0=var896, $r1=var3779, $r2=var2262, $r3=var254, $r4=var2932, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3519, 3=var2122}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate;	i0 := @parameter0: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" file(s) have been successfully validated.");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r4, 3);	return
;block_num 1