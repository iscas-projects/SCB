(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3903 0)
(declare-sort var1064 0)
(declare-sort var2130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2130 String Int) void)
(declare-fun cast-from-var3903-to-var2130 (var3903) var2130)
(declare-const null-var3903 var3903)
(declare-const null-String String)
(declare-const var1566 var3903) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var1566 null-var3903)))
(declare-const var3092 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3092 null-String)))
(declare-const var3661 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3661 null-String)))
 ; Statement: if r0 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var3661 null-String)) ; Cond: r0 == null 
(define-const var3857 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3857)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3857!1 String)
(assert (= var3857!1 ""))
(assert true)
(define-const var1567 String (append/672562846 var3857!1 "Warning: Leaving out empty argument \u0027")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Warning: Leaving out empty argument \'") 
(declare-const var3857!2 String)
(assert (= var3857!2 (str.++ var3857!1 "Warning: Leaving out empty argument \u0027")))
(assert true)
(define-const var3968 String (append/672562846 var1567 var3092)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1567!1 String)
(assert (= var1567!1 (str.++ var1567 var3092)))
(assert true)
(define-const var582 String (append/672562846 var3968 "\u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3968!1 String)
(assert (= var3968!1 (str.++ var3968 "\u0027")))
(assert true)
(define-const var420 String (toString/-2075883882 var582)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3903-to-var2130 var1566) var420 1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: void log(java.lang.String,int)>($r7, 1) 

(declare-const var1566!1 var3903)
(declare-const var420!1 String)
(declare-const var243 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3903-to-var2130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3903=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var1566=r1, var3092=r3, var1064=null_type, var3661=r0, var3857=$r2, var1567=$r4, var3968=$r5, var582=$r6, var420=$r7, var2130=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var243=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var3903, r1=var1566, r3=var3092, null_type=var1064, r0=var3661, $r2=var3857, $r4=var1567, $r5=var3968, $r6=var582, $r7=var420, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2130, 1=var243}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Warning: Leaving out empty argument \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: void log(java.lang.String,int)>($r7, 1);	goto [?= return];	return
;block_num 3