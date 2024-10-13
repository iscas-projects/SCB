(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2845 0)
(declare-sort var25 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/1089979513 (var2845) void)
(declare-fun substring/-1919705316 (var2845) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getProject/-1692039182 (var2845) var25)
(declare-const null-var2845 var2845)
(declare-const null-var25 var25)
(declare-const var1364 var2845) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains 
(assert (not (= var1364 null-var2845)))
(assert true)
;(assert (validate/1089979513 var1364)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: void validate()>() 

(declare-const var1364!1 var2845)
(define-const var3612 String (substring/-1919705316 var1364!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: java.lang.String substring> 
(assert true)
(define-const var262 Bool (isEmpty/-1285796103 var3612)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource> 
(assert (not (= (ite var262 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2779 var25 (getProject/-1692039182 var1364!1)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
 ; Statement: if $r7 == null goto return 1 
(assert (= var2779 null-var25)) ; Cond: $r7 == null 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/1089979513=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains], void), substring/-1919705316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getProject/-1692039182=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)}
; {var2845=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains, var1364=r0, var3612=$r1, var262=$z0, var25=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2779=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains=var2845, r0=var1364, $r1=var3612, $z0=var262, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var25, $r7=var2779}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: java.lang.String substring>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ResourceContains: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	if $r7 == null goto return 1;	return 1
;block_num 3