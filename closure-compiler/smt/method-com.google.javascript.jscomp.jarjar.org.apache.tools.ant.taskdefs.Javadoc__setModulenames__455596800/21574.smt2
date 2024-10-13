(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var512 0)
(declare-sort var1469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var512 var512)
(declare-const null-String String)
(declare-const var1042 var512) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var1042 null-var512)))
(declare-const var3957 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3957 null-String)))
(assert true)
(define-const var2840 (Array Int String) (split/-636890950 var3957 ",")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3957 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var178 Int (getLength-Arr-String-1 var2840)) ; Statement: i0 = lengthof r1 
(define-const var1286 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var1286 var178)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var512=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var1042=r4, var3957=r0, var1469=null_type, var2840=r1, var178=i0, var1286=i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var512, r4=var1042, r0=var3957, null_type=var1469, r1=var2840, i0=var178, i1=var1286}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto return;	return
;block_num 3