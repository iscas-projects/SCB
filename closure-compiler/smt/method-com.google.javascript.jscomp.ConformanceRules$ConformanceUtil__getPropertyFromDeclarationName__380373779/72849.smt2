(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3451 0)
(declare-sort var2048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2048_checkState/1431124798 (Bool) void)
(declare-const null-String String)
(declare-const var3999 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3999 null-String)))
(assert true)
(define-const var2639 (Array Int String) (split/-636890950 var3999 "\u005c.prototype\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3999 "\u005c.prototype\u005c.") i) (re.++ (re.* re.all) (str.to_re ".prototype.") (re.* re.all))))))
(define-const var1913 Int (getLength-Arr-String-1 var2639)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 == 1 goto $z0 = 1 
(assert (= var1913 1)) ; Cond: $i0 == 1 
(define-const var190 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)] 
(assert true) ; Non Conditional
;(assert (var2048_checkState/1431124798 var190)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var190!1 Bool)
(define-const var2472 Int (getLength-Arr-String-1 var2639)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 != 2 goto return null 
(assert (not (= var2472 2))) ; Cond: $i1 != 2 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2048_checkState/1431124798=([boolean], void)}
; {var3999=r0, var3451=null_type, var2639=r1, var1913=$i0, var190=$z0, var2048=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2472=$i1}
; {r0=var3999, null_type=var3451, r1=var2639, $i0=var1913, $z0=var190, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2048, $i1=var2472}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.");	$i0 = lengthof r1;	if $i0 == 1 goto $z0 = 1;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i1 = lengthof r1;	if $i1 != 2 goto return null;	return null
;block_num 4