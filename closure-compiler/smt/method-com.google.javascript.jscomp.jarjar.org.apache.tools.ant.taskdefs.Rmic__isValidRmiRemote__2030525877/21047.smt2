(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1451 0)
(declare-sort var672 0)
(declare-sort var3563 0)
(declare-sort var962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var962 String Int) void)
(declare-fun cast-from-var1451-to-var962 (var1451) var962)
(declare-const null-var1451 var1451)
(declare-const null-String String)
(declare-const null-var3563 var3563)
(declare-const var3873 var1451) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic 
(assert (not (= var3873 null-var1451)))
(declare-const var670 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var670 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3471 var3563) ; Statement: $r11 := @caughtexception 
(assert (not (= var3471 null-var3563)))
(define-const var3721 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3721)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3721!1 String)
(assert (= var3721!1 ""))
(assert true)
(define-const var3915 String (append/672562846 var3721!1 "Unable to verify class ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to verify class ") 
(declare-const var3721!2 String)
(assert (= var3721!2 (str.++ var3721!1 "Unable to verify class ")))
(assert true)
(define-const var1030 String (append/672562846 var3915 var670)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3915!1 String)
(assert (= var3915!1 (str.++ var3915 var670)))
(assert true)
(define-const var2123 String (append/672562846 var1030 ". It is not defined.")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is not defined.") 
(declare-const var1030!1 String)
(assert (= var1030!1 (str.++ var1030 ". It is not defined.")))
(assert true)
(define-const var1731 String (toString/-2075883882 var2123)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1451-to-var962 var3873) var1731 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r16, 1) 

(declare-const var3873!1 var1451)
(declare-const var1731!1 String)
(declare-const var882 Int)
 ; Statement: goto [?= return 0] 
(assert true) ; Non Conditional
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1451-to-var962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1451=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var3873=r0, var670=r1, var672=null_type, var3563=java.lang.NoClassDefFoundError, var3471=$r11, var3721=$r12, var3915=$r13, var1030=$r14, var2123=$r15, var1731=$r16, var962=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var882=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var1451, r0=var3873, r1=var670, null_type=var672, java.lang.NoClassDefFoundError=var3563, $r11=var3471, $r12=var3721, $r13=var3915, $r14=var1030, $r15=var2123, $r16=var1731, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var962, 1=var882}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic;	r1 := @parameter0: java.lang.String;	$r11 := @caughtexception;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to verify class ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". It is not defined.");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>($r16, 1);	goto [?= return 0];	return 0
;block_num 3