(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3377 0)
(declare-sort var340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3377 var3377)
(declare-const null-String String)
(declare-const var956 var3377) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var956 null-var3377)))
(declare-const var1801 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1801 null-String)))
(assert true)
(define-const var2513 (Array Int String) (split/-636890950 var1801 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1801 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var3289 Int (getLength-Arr-String-1 var2513)) ; Statement: i0 = lengthof r1 
(define-const var829 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var829 var3289)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3377=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var956=r3, var1801=r0, var340=null_type, var2513=r1, var3289=i0, var829=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var3377, r3=var956, r0=var1801, null_type=var340, r1=var2513, i0=var3289, i1=var829}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3