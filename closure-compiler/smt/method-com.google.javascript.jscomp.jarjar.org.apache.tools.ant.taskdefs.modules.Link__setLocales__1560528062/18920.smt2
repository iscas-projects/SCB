(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3192 0)
(declare-sort var3555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3192 var3192)
(declare-const null-String String)
(declare-const var2800 var3192) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var2800 null-var3192)))
(declare-const var666 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var666 null-String)))
(assert true)
(define-const var3444 (Array Int String) (split/-636890950 var666 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var666 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var1250 Int (getLength-Arr-String-1 var3444)) ; Statement: i0 = lengthof r1 
(define-const var1534 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var1534 var1250)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3192=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var2800=r3, var666=r0, var3555=null_type, var3444=r1, var1250=i0, var1534=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var3192, r3=var2800, r0=var666, null_type=var3555, r1=var3444, i0=var1250, i1=var1534}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3