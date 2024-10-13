(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1370 0)
(declare-sort var1300 0)
(declare-sort var3746 0)
(declare-sort var798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3746) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var798 String Int) void)
(declare-fun cast-from-var1370-to-var798 (var1370) var798)
(declare-const null-var1370 var1370)
(declare-const null-String String)
(declare-const null-var3746 var3746)
(declare-const var880 var1370) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic 
(assert (not (= var880 null-var1370)))
(declare-const var3305 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3305 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var751 var3746) ; Statement: $r3 := @caughtexception 
(assert (not (= var751 null-var3746)))
(define-const var27 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var27)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var27!1 String)
(assert (= var27!1 ""))
(assert true)
(define-const var1432 String (append/672562846 var27!1 "Unable to verify class ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to verify class ") 
(declare-const var27!2 String)
(assert (= var27!2 (str.++ var27!1 "Unable to verify class ")))
(assert true)
(define-const var2841 String (append/672562846 var1432 var3305)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1432!1 String)
(assert (= var1432!1 (str.++ var1432 var3305)))
(assert true)
(define-const var78 String (append/672562846 var2841 ". Loading caused Exception: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Loading caused Exception: ") 
(declare-const var2841!1 String)
(assert (= var2841!1 (str.++ var2841 ". Loading caused Exception: ")))
(assert true)
(define-const var3712 String (getMessage/849299655 var751)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var3094 String (append/672562846 var78 var3712)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var78!1 String)
(assert (= var78!1 (str.++ var78 var3712)))
(assert true)
(define-const var2864 String (toString/-2075883882 var3094)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1370-to-var798 var880) var2864 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r10, 1) 

(declare-const var880!1 var1370)
(declare-const var2864!1 String)
(declare-const var498 Int)
(assert true) ; Non Conditional
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1370-to-var798=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1370=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var880=r0, var3305=r1, var1300=null_type, var3746=java.lang.Throwable, var751=$r3, var27=$r4, var1432=$r5, var2841=$r6, var78=$r8, var3712=$r7, var3094=$r9, var2864=$r10, var798=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var498=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var1370, r0=var880, r1=var3305, null_type=var1300, java.lang.Throwable=var3746, $r3=var751, $r4=var27, $r5=var1432, $r6=var2841, $r8=var78, $r7=var3712, $r9=var3094, $r10=var2864, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var798, 1=var498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic;	r1 := @parameter0: java.lang.String;	$r3 := @caughtexception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to verify class ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Loading caused Exception: ");	$r7 = virtualinvoke $r3.<java.lang.Throwable: java.lang.String getMessage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r10, 1);	return 0
;block_num 3