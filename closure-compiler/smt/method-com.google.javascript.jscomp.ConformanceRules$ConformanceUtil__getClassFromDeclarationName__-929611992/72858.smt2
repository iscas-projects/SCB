(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3506 0)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2811_checkState/1431124798 (Bool) void)
(declare-const null-String String)
(declare-const var546 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var546 null-String)))
(assert true)
(define-const var569 (Array Int String) (split/-636890950 var546 "\u005c.prototype\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var546 "\u005c.prototype\u005c.") i) (re.++ (re.* re.all) (str.to_re ".prototype.") (re.* re.all))))))
(define-const var357 Int (getLength-Arr-String-1 var569)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 == 1 goto $z0 = 1 
(assert (= var357 1)) ; Cond: $i0 == 1 
(define-const var3383 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)] 
(assert true) ; Non Conditional
;(assert (var2811_checkState/1431124798 var3383)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3383!1 Bool)
(define-const var3508 Int (getLength-Arr-String-1 var569)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 != 2 goto return null 
(assert (not (not (= var3508 2)))) ; Negate: Cond: $i1 != 2  
(define-const var3011 String (select var569 0)) ; Statement: $r2 = r1[0] 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2811_checkState/1431124798=([boolean], void)}
; {var546=r0, var3506=null_type, var569=r1, var357=$i0, var3383=$z0, var2811=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3508=$i1, var3011=$r2}
; {r0=var546, null_type=var3506, r1=var569, $i0=var357, $z0=var3383, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2811, $i1=var3508, $r2=var3011}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.prototype\\.");	$i0 = lengthof r1;	if $i0 == 1 goto $z0 = 1;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$i1 = lengthof r1;	if $i1 != 2 goto return null;	$r2 = r1[0];	return $r2
;block_num 4