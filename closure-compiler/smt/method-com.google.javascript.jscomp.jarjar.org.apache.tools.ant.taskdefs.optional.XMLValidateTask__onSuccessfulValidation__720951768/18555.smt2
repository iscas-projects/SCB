(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2242 0)
(declare-sort var2888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1601532580 (var2888 String) void)
(declare-fun cast-from-var2242-to-var2888 (var2242) var2888)
(declare-const null-var2242 var2242)
(declare-const null-Int Int)
(declare-const var359 var2242) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask 
(assert (not (= var359 null-var2242)))
(declare-const var668 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var668 null-Int)))
(define-const var3109 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3109)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3109!1 String)
(assert (= var3109!1 ""))
(assert true)
(define-const var2190 String (append/-1001720160 var3109!1 var668)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3109!2 String)
(assert (str.prefixof var3109!1 var3109!2))
(assert true)
(define-const var3804 String (append/672562846 var2190 " file(s) have been successfully validated.")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" file(s) have been successfully validated.") 
(declare-const var2190!1 String)
(assert (= var2190!1 (str.++ var2190 " file(s) have been successfully validated.")))
(assert true)
(define-const var2741 String (toString/-2075883882 var3804)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1601532580 (cast-from-var2242-to-var2888 var359) var2741)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void log(java.lang.String)>($r4) 

(declare-const var359!1 var2242)
(declare-const var2741!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1601532580=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String], void), cast-from-var2242-to-var2888=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2242=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask, var359=r0, var668=i0, var3109=$r1, var2190=$r2, var3804=$r3, var2741=$r4, var2888=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask=var2242, r0=var359, i0=var668, $r1=var3109, $r2=var2190, $r3=var3804, $r4=var2741, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask;	i0 := @parameter0: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" file(s) have been successfully validated.");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void log(java.lang.String)>($r4);	return
;block_num 1