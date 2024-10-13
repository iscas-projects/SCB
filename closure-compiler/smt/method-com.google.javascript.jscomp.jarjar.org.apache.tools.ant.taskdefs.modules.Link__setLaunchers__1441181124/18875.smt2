(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3476 0)
(declare-sort var1965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3476 var3476)
(declare-const null-String String)
(declare-const var185 var3476) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var185 null-var3476)))
(declare-const var2015 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2015 null-String)))
(assert true)
(define-const var825 (Array Int String) (split/-636890950 var2015 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2015 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var952 Int (getLength-Arr-String-1 var825)) ; Statement: i0 = lengthof r1 
(define-const var2816 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var2816 var952)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3476=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var185=r3, var2015=r0, var1965=null_type, var825=r1, var952=i0, var2816=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var3476, r3=var185, r0=var2015, null_type=var1965, r1=var825, i0=var952, i1=var2816}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3