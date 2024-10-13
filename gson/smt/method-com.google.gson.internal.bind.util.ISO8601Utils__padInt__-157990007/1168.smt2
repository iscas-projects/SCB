(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1422 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1422 null-String)))
(declare-const var2594 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2594 null-Int)))
(declare-const var80 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var80 null-Int)))
(define-const var2825 String (Int_toString/1350422511 var2594)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var657 Int (length/-134980193 var2825)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2408 Int (- var80 var657)) ; Statement: i3 = i1 - $i2 
(assert true) ; Non Conditional
 ; Statement: if i3 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (<= var2408 0)) ; Cond: i3 <= 0 
(assert true)
;(assert (append/672562846 var1422 var2825)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1422!1 String)
(assert (= var1422!1 (str.++ var1422 var2825)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toString/1350422511=([int], java.lang.String), length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1422=r1, var2594=i0, var80=i1, var2825=r0, var657=$i2, var2408=i3}
; {r1=var1422, i0=var2594, i1=var80, r0=var2825, $i2=var657, i3=var2408}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	i1 := @parameter2: int;	r0 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = i1 - $i2;	if i3 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	return
;block_num 3