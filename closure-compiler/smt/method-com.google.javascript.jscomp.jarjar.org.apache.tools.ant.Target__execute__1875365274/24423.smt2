(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3160 0)
(declare-sort var334 0)
(declare-sort var814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ifCondition/-34059632 (var3160) var334)
(declare-fun var334_eval/924603635 (var334) Bool)
(declare-fun project/-34059632 (var3160) var814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ifString/-34059632 (var3160) String)
(declare-fun replaceProperties/-453140326 (var814 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/445515533 (var814 var3160 String Int) void)
(declare-const null-var3160 var3160)
(declare-const null-var334 var334)
(declare-const var2925 var3160) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var2925 null-var3160)))
(define-const var1987 var334 (ifCondition/-34059632 var2925)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition ifCondition> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition unlessCondition> 
(assert (not (= var1987 null-var334))) ; Negate: Cond: $r1 == null  
(define-const var3236 var334 (ifCondition/-34059632 var2925)) ; Statement: $r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition ifCondition> 
(define-const var269 Bool (var334_eval/924603635 var3236)) ; Statement: $z2 = interfaceinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition: boolean eval()>() 
 ; Statement: if $z2 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition unlessCondition> 
(assert (not (not (= (ite var269 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2425 var814 (project/-34059632 var2925)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(define-const var3804 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3804)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3804!1 String)
(assert (= var3804!1 ""))
(assert true)
(define-const var2275 String (append/672562846 var3804!1 "Skipped because property \u0027")) ; Statement: $r26 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipped because property \'") 
(declare-const var3804!2 String)
(assert (= var3804!2 (str.++ var3804!1 "Skipped because property \u0027")))
(define-const var2668 var814 (project/-34059632 var2925)) ; Statement: $r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(define-const var1379 String (ifString/-34059632 var2925)) ; Statement: $r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString> 
(assert true)
(define-const var813 String (replaceProperties/-453140326 var2668 var1379)) ; Statement: $r25 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>($r23) 
(assert true)
(define-const var2733 String (append/672562846 var2275 var813)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2275!1 String)
(assert (= var2275!1 (str.++ var2275 var813)))
(assert true)
(define-const var1820 String (append/672562846 var2733 "\u0027 not set.")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not set.") 
(declare-const var2733!1 String)
(assert (= var2733!1 (str.++ var2733 "\u0027 not set.")))
(assert true)
(define-const var2283 String (toString/-2075883882 var1820)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/445515533 var2425 var2925 var2283 3)) ; Statement: virtualinvoke $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target,java.lang.String,int)>(r0, $r29, 3) 

(declare-const var2425!1 var814)
(declare-const var2925!1 var3160)
(declare-const var2283!1 String)
(declare-const var3069 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ifCondition/-34059632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition), var334_eval/924603635=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition], boolean), project/-34059632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ifString/-34059632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/445515533=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, java.lang.String, int], void)}
; {var3160=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var2925=r0, var334=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition, var1987=$r1, var3236=$r20, var269=$z2, var814=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2425=$r22, var3804=$r21, var2275=$r26, var2668=$r24, var1379=$r23, var813=$r25, var2733=$r27, var1820=$r28, var2283=$r29, var3069=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3160, r0=var2925, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition=var334, $r1=var1987, $r20=var3236, $z2=var269, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var814, $r22=var2425, $r21=var3804, $r26=var2275, $r24=var2668, $r23=var1379, $r25=var813, $r27=var2733, $r28=var1820, $r29=var2283, 3=var3069}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition ifCondition>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition unlessCondition>;	$r20 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition ifCondition>;	$z2 = interfaceinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition: boolean eval()>();	if $z2 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Condition unlessCondition>;	$r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipped because property \'");	$r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString>;	$r25 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>($r23);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not set.");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r22.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target,java.lang.String,int)>(r0, $r29, 3);	return
;block_num 3