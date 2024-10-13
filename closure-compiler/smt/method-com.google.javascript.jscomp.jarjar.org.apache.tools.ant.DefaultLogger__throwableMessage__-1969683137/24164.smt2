(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var94 0)
(declare-sort var3104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3104_getStackTrace/-253691410 (var94) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var94 var94)
(declare-const null-Bool Bool)
(declare-const var3969 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3969 null-String)))
(declare-const var3766 var94) ; Statement: r7 := @parameter1: java.lang.Throwable 
(assert (not (= var3766 null-var94)))
(declare-const var1896 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1896 null-Bool)))
(assert true) ; Non Conditional
(define-const var3843 Bool false) ; Statement: $z0 = r7 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3843 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z1 != 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>(r7) 
(assert (not (= (ite var1896 1 0) 0))) ; Cond: z1 != 0 
(define-const var860 String (var3104_getStackTrace/-253691410 var3766)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>(r7) 
(assert true)
;(assert (append/1560614132 var3969 var860)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1) 
(declare-const var3969!1 String)
(assert (str.prefixof var3969 var3969!1))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3104_getStackTrace/-253691410=([java.lang.Throwable], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3969=r0, var94=java.lang.Throwable, var3766=r7, var1896=z1, var3843=$z0, var3104=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils, var860=$r1}
; {r0=var3969, java.lang.Throwable=var94, r7=var3766, z1=var1896, $z0=var3843, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils=var3104, $r1=var860}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuffer;	r7 := @parameter1: java.lang.Throwable;	z1 := @parameter2: boolean;	$z0 = r7 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	if $z0 == 0 goto (branch);	if z1 != 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>(r7);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>(r7);	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1);	goto [?= return];	return
;block_num 5