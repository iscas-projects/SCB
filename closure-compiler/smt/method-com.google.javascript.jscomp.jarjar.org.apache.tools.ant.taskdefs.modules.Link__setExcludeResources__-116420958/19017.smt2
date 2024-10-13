(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var100 0)
(declare-sort var931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var100 var100)
(declare-const null-String String)
(declare-const var1244 var100) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var1244 null-var100)))
(declare-const var555 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var555 null-String)))
(assert true)
(define-const var2871 (Array Int String) (split/-636890950 var555 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var555 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var320 Int (getLength-Arr-String-1 var2871)) ; Statement: i0 = lengthof r1 
(define-const var3049 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var3049 var320)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var100=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var1244=r3, var555=r0, var931=null_type, var2871=r1, var320=i0, var3049=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var100, r3=var1244, r0=var555, null_type=var931, r1=var2871, i0=var320, i1=var3049}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3