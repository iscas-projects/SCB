(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var425 0)
(declare-sort var1834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1834_checkState/1431124798 (Bool) void)
(declare-const null-String String)
(declare-const var3093 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3093 null-String)))
(assert true)
(define-const var2722 (Array Int String) (split/-636890950 var3093 "\u005c.prototype\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3093 "\u005c.prototype\u005c.") i) (re.++ (re.* re.all) (str.to_re ".prototype.") (re.* re.all))))))
(define-const var2803 Int (getLength-Arr-String-1 var2722)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 == 1 goto $z0 = 1 
(assert (= var2803 1)) ; Cond: $i0 == 1 
(define-const var2935 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)] 
(assert true) ; Non Conditional
;(assert (var1834_checkState/1431124798 var2935)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var2935!1 Bool)
(define-const var586 Int (getLength-Arr-String-1 var2722)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 != 2 goto return null 
(assert (not (not (= var586 2)))) ; Negate: Cond: $i1 != 2  
(define-const var3090 String (select var2722 1)) ; Statement: $r2 = r1[1] 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1834_checkState/1431124798=([boolean], void)}
; {var3093=r0, var425=null_type, var2722=r1, var2803=$i0, var2935=$z0, var1834=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var586=$i1, var3090=$r2}
; {r0=var3093, null_type=var425, r1=var2722, $i0=var2803, $z0=var2935, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1834, $i1=var586, $r2=var3090}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.");	$i0 = lengthof r1;	if $i0 == 1 goto $z0 = 1;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i1 = lengthof r1;	if $i1 != 2 goto return null;	$r2 = r1[1];	return $r2
;block_num 4