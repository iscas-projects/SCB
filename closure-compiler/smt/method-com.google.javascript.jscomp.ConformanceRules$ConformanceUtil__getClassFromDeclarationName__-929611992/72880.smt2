(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var3021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3021_checkState/1431124798 (Bool) void)
(declare-const null-String String)
(declare-const var3922 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3922 null-String)))
(assert true)
(define-const var3461 (Array Int String) (split/-636890950 var3922 "\u005c.prototype\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3922 "\u005c.prototype\u005c.") i) (re.++ (re.* re.all) (str.to_re ".prototype.") (re.* re.all))))))
(define-const var2478 Int (getLength-Arr-String-1 var3461)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 == 1 goto $z0 = 1 
(assert (= var2478 1)) ; Cond: $i0 == 1 
(define-const var3956 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)] 
(assert true) ; Non Conditional
;(assert (var3021_checkState/1431124798 var3956)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3956!1 Bool)
(define-const var2436 Int (getLength-Arr-String-1 var3461)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 != 2 goto return null 
(assert (not (= var2436 2))) ; Cond: $i1 != 2 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var3021_checkState/1431124798=([boolean], void)}
; {var3922=r0, var742=null_type, var3461=r1, var2478=$i0, var3956=$z0, var3021=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2436=$i1}
; {r0=var3922, null_type=var742, r1=var3461, $i0=var2478, $z0=var3956, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3021, $i1=var2436}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.");	$i0 = lengthof r1;	if $i0 == 1 goto $z0 = 1;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i1 = lengthof r1;	if $i1 != 2 goto return null;	return null
;block_num 4