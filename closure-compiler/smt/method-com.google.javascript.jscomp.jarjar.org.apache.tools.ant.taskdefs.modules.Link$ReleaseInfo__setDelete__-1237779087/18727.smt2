(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var995 0)
(declare-sort var3808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var995 var995)
(declare-const null-String String)
(declare-const var1060 var995) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfo 
(assert (not (= var1060 null-var995)))
(declare-const var1987 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1987 null-String)))
(assert true)
(define-const var3955 (Array Int String) (split/-636890950 var1987 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1987 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3961 Int (getLength-Arr-String-1 var3955)) ; Statement: i0 = lengthof r1 
(define-const var3760 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var3760 var3961)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var995=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfo, var1060=r3, var1987=r0, var3808=null_type, var3955=r1, var3961=i0, var3760=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfo=var995, r3=var1060, r0=var1987, null_type=var3808, r1=var3955, i0=var3961, i1=var3760}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfo;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3