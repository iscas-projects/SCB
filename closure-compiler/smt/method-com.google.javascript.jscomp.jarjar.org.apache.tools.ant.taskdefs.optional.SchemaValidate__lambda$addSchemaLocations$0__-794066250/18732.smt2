(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort var2182 0)
(declare-sort var10 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var10 String Int) void)
(declare-fun cast-from-var2686-to-var10 (var2686) var10)
(declare-const null-var2686 var2686)
(declare-const null-String String)
(declare-const var438 var2686) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate 
(assert (not (= var438 null-var2686)))
(declare-const var2122 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2122 null-String)))
(define-const var450 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var450)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var450!1 String)
(assert (= var450!1 ""))
(assert true)
(define-const var3319 String (append/672562846 var450!1 "Adding schema ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Adding schema ") 
(declare-const var450!2 String)
(assert (= var450!2 (str.++ var450!1 "Adding schema ")))
(assert true)
(define-const var644 String (append/672562846 var3319 var2122)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3319!1 String)
(assert (= var3319!1 (str.++ var3319 var2122)))
(assert true)
(define-const var2603 String (toString/-2075883882 var644)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2686-to-var10 var438) var2603 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r5, 3) 

(declare-const var438!1 var2686)
(declare-const var2603!1 String)
(declare-const var2840 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2686-to-var10=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2686=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate, var438=r0, var2122=r2, var2182=null_type, var450=$r1, var3319=$r3, var644=$r4, var2603=$r5, var10=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2840=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate=var2686, r0=var438, r2=var2122, null_type=var2182, $r1=var450, $r3=var3319, $r4=var644, $r5=var2603, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var10, 3=var2840}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Adding schema ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r5, 3);	return
;block_num 1