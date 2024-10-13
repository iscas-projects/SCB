(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var794 0)
(declare-sort var943 0)
(declare-sort var3399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var943_add/328494887 (var943 var3399) Bool)
(declare-fun cast-from-Int-to-var3399 (Int) var3399)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var943 var943)
(declare-const var3198 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3198 null-String)))
(declare-const var2219 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2219 null-Int)))
(declare-const var2465 var943) ; Statement: r1 := @parameter2: java.util.List 
(assert (not (= var2465 null-var943)))
(assert (and true (and (> (str.len var3198) var2219) (<= 0 var2219))))
(define-const var3697 Int (charAt/698050440 var3198 var2219)) ; Statement: c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3) 
(define-const var590 Int (cast-from-Int-to-Int var3697)) ; Statement: $i7 = (int) c4 
(define-const var57 Int (- var590 48)) ; Statement: i5 = $i7 - 48 
(assert true)
(define-const var1272 Int (length/-134980193 var3198)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var2219!1 Int (+ var2219 1)) ; Statement: i3 = i3 + 1 
 ; Statement: if i3 >= i0 goto $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5) 
(assert (>= var2219!1 var1272)) ; Cond: i3 >= i0 
(define-const var248 Int (Int_valueOf/-1371140006 var57)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5) 
;(assert (var943_add/328494887 var2465 (cast-from-Int-to-var3399 var248))) ; Statement: interfaceinvoke r1.<java.util.List: boolean add(java.lang.Object)>($r2) 

(declare-const var2465!1 var943)
(declare-const var248!1 Int)
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var943_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-Int-to-var3399=([java.lang.Integer], java.lang.Object)}
; {var3198=r0, var794=null_type, var2219=i3, var943=java.util.List, var2465=r1, var3697=c4, var590=$i7, var57=i5, var1272=i0, var248=$r2, var3399=java.lang.Object}
; {r0=var3198, null_type=var794, i3=var2219, java.util.List=var943, r1=var2465, c4=var3697, $i7=var590, i5=var57, i0=var1272, $r2=var248, java.lang.Object=var3399}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	r1 := @parameter2: java.util.List;	c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3);	$i7 = (int) c4;	i5 = $i7 - 48;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = i3 + 1;	if i3 >= i0 goto $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5);	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i5);	interfaceinvoke r1.<java.util.List: boolean add(java.lang.Object)>($r2);	return i3
;block_num 3