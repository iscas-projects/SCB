(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3140 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3140 null-String)))
(declare-const var1830 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var1830 null-__Array__Int__String__)))
(declare-const var3615 String) ; Statement: r0 := @parameter2: java.lang.StringBuilder 
(assert (not (= var3615 null-String)))
(define-const var2766 String (select var1830 0)) ; Statement: $r2 = r1[0] 
(assert true)
;(assert (append/672562846 var3615 var2766)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3615!1 String)
(assert (= var3615!1 (str.++ var3615 var2766)))
(define-const var1574 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
(define-const var2763 Int (getLength-Arr-String-1 var1830)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto return 
(assert (>= var1574 var2763)) ; Cond: i1 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3140=r3, var3264=null_type, var1830=r1, var3615=r0, var2766=$r2, var1574=i1, var2763=$i0}
; {r3=var3140, null_type=var3264, r1=var1830, r0=var3615, $r2=var2766, i1=var1574, $i0=var2763}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String[];	r0 := @parameter2: java.lang.StringBuilder;	$r2 = r1[0];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	i1 = 1;	$i0 = lengthof r1;	if i1 >= $i0 goto return;	return
;block_num 3