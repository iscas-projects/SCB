(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var545 0)
(declare-sort var1786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var545 var545)
(declare-const null-String String)
(declare-const var2051 var545) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Jmod 
(assert (not (= var2051 null-var545)))
(declare-const var2126 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2126 null-String)))
(assert true)
(define-const var2470 (Array Int String) (split/-636890950 var2126 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2126 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var391 Int (getLength-Arr-String-1 var2470)) ; Statement: i0 = lengthof r1 
(define-const var1949 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var1949 var391)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var545=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Jmod, var2051=r3, var2126=r0, var1786=null_type, var2470=r1, var391=i0, var1949=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Jmod=var545, r3=var2051, r0=var2126, null_type=var1786, r1=var2470, i0=var391, i1=var1949}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Jmod;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3