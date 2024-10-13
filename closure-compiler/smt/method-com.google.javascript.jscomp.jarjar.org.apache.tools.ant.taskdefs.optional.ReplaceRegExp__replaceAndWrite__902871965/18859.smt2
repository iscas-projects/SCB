(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2344 0)
(declare-sort var1629 0)
(declare-sort var2540 0)
(declare-sort var22 0)
(declare-sort var3560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun regex/-579670325 (var2344) var22)
(declare-fun subs/-579670325 (var2344) var3560)
(declare-fun doReplace/1070505719 (var2344 var22 var3560 String Int) String)
(declare-fun write/654681022 (var2540 String) void)
(declare-const null-var2344 var2344)
(declare-const null-String String)
(declare-const null-var2540 var2540)
(declare-const null-Int Int)
(declare-const var1892 var2344) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp 
(assert (not (= var1892 null-var2344)))
(declare-const var457 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var457 null-String)))
(declare-const var3923 var2540) ; Statement: r5 := @parameter1: java.io.Writer 
(assert (not (= var3923 null-var2540)))
(declare-const var3785 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3785 null-Int)))
(define-const var2650 var22 (regex/-579670325 var1892)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression regex> 
(define-const var800 var3560 (subs/-579670325 var1892)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution subs> 
(assert true)
(define-const var1771 String (doReplace/1070505719 var1892 var2650 var800 var457 var3785)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: java.lang.String doReplace(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution,java.lang.String,int)>($r3, $r2, r1, i0) 
(assert true)
;(assert (write/654681022 var3923 var1771)) ; Statement: virtualinvoke r5.<java.io.Writer: void write(java.lang.String)>(r4) 

(declare-const var3923!1 var2540)
(declare-const var1771!1 String)
(assert true)
(define-const var192 Bool (= var1771!1 var457)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var192 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1046 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {regex/-579670325=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression), subs/-579670325=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution), doReplace/1070505719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution, java.lang.String, int], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void)}
; {var2344=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp, var1892=r0, var457=r1, var1629=null_type, var2540=java.io.Writer, var3923=r5, var3785=i0, var22=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression, var2650=$r3, var3560=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution, var800=$r2, var1771=r4, var192=$z0, var1046=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp=var2344, r0=var1892, r1=var457, null_type=var1629, java.io.Writer=var2540, r5=var3923, i0=var3785, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression=var22, $r3=var2650, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution=var3560, $r2=var800, r4=var1771, $z0=var192, $z1=var1046}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.io.Writer;	i0 := @parameter2: int;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression regex>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution subs>;	r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: java.lang.String doReplace(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution,java.lang.String,int)>($r3, $r2, r1, i0);	virtualinvoke r5.<java.io.Writer: void write(java.lang.String)>(r4);	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3