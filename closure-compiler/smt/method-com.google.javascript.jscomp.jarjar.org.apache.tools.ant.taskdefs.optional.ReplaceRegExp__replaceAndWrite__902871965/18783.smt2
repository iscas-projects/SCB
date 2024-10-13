(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1605 0)
(declare-sort var199 0)
(declare-sort var1558 0)
(declare-sort var756 0)
(declare-sort var3425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun regex/-579670325 (var1605) var756)
(declare-fun subs/-579670325 (var1605) var3425)
(declare-fun doReplace/1070505719 (var1605 var756 var3425 String Int) String)
(declare-fun write/654681022 (var1558 String) void)
(declare-const null-var1605 var1605)
(declare-const null-String String)
(declare-const null-var1558 var1558)
(declare-const null-Int Int)
(declare-const var2314 var1605) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp 
(assert (not (= var2314 null-var1605)))
(declare-const var385 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var385 null-String)))
(declare-const var2539 var1558) ; Statement: r5 := @parameter1: java.io.Writer 
(assert (not (= var2539 null-var1558)))
(declare-const var2173 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2173 null-Int)))
(define-const var601 var756 (regex/-579670325 var2314)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression regex> 
(define-const var854 var3425 (subs/-579670325 var2314)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution subs> 
(assert true)
(define-const var1635 String (doReplace/1070505719 var2314 var601 var854 var385 var2173)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: java.lang.String doReplace(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution,java.lang.String,int)>($r3, $r2, r1, i0) 
(assert true)
;(assert (write/654681022 var2539 var1635)) ; Statement: virtualinvoke r5.<java.io.Writer: void write(java.lang.String)>(r4) 

(declare-const var2539!1 var1558)
(declare-const var1635!1 String)
(assert true)
(define-const var3959 Bool (= var1635!1 var385)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3959 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1405 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {regex/-579670325=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression), subs/-579670325=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution), doReplace/1070505719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution, java.lang.String, int], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void)}
; {var1605=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp, var2314=r0, var385=r1, var199=null_type, var1558=java.io.Writer, var2539=r5, var2173=i0, var756=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression, var601=$r3, var3425=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution, var854=$r2, var1635=r4, var3959=$z0, var1405=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp=var1605, r0=var2314, r1=var385, null_type=var199, java.io.Writer=var1558, r5=var2539, i0=var2173, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression=var756, $r3=var601, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution=var3425, $r2=var854, r4=var1635, $z0=var3959, $z1=var1405}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.io.Writer;	i0 := @parameter2: int;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression regex>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution subs>;	r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ReplaceRegExp: java.lang.String doReplace(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.RegularExpression,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Substitution,java.lang.String,int)>($r3, $r2, r1, i0);	virtualinvoke r5.<java.io.Writer: void write(java.lang.String)>(r4);	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3