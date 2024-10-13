(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1951 0)
(declare-sort var2013 0)
(declare-sort var2022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCommandline/-193585378 (var2013) (Array Int String))
(declare-fun var2022_describeCommand/-627107566 ((Array Int String)) String)
(declare-fun removeCvsPassword/-635863450 (var1951 String) String)
(declare-fun getEnvironment/-983232950 (var2013) (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1951 var1951)
(declare-const null-var2013 var2013)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1936 var1951) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask 
(assert (not (= var1936 null-var1951)))
(declare-const var2337 var2013) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute 
(assert (not (= var2337 null-var2013)))
(assert true)
(define-const var1785 (Array Int String) (getCommandline/-193585378 var2337)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getCommandline()>() 
(define-const var2752 String (var2022_describeCommand/-627107566 var1785)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeCommand(java.lang.String[])>($r1) 
(assert true)
(define-const var2866 String (removeCvsPassword/-635863450 var1936 var2752)) ; Statement: r4 = specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask: java.lang.StringBuilder removeCvsPassword(java.lang.String)>(r2) 
(assert true)
(define-const var3332 (Array Int String) (getEnvironment/-983232950 var2337)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getEnvironment()>() 
 ; Statement: if r5 == null goto $r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3332 null-__Array__Int__String__)) ; Cond: r5 == null 
(assert true)
(define-const var3607 String (toString/-2075883882 var2866)) ; Statement: $r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getCommandline/-193585378=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], java.lang.String[]), var2022_describeCommand/-627107566=([java.lang.String[]], java.lang.String), removeCvsPassword/-635863450=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask, java.lang.String], java.lang.StringBuilder), getEnvironment/-983232950=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1951=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask, var1936=r3, var2013=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute, var2337=r0, var1785=$r1, var2022=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var2752=r2, var2866=r4, var3332=r5, var3607=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask=var1951, r3=var1936, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute=var2013, r0=var2337, $r1=var1785, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2022, r2=var2752, r4=var2866, r5=var3332, $r6=var3607}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getCommandline()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeCommand(java.lang.String[])>($r1);	r4 = specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractCvsTask: java.lang.StringBuilder removeCvsPassword(java.lang.String)>(r2);	r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Execute: java.lang.String[] getEnvironment()>();	if r5 == null goto $r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2