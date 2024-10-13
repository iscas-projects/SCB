(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var944 0)
(declare-sort var3719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var944_currentThread/-1037784612 () var944)
(declare-fun getStackTrace/-602745475 (var944) (Array Int var3719))
(declare-fun getLength-Arr-var3719-1 ((Array Int var3719)) Int)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-Int Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1373 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1373 null-Int)))
(declare-const var2464 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2464 null-Int)))
(declare-const var964 (Array Int String)) ; Statement: r4 := @parameter2: java.lang.String[] 
(assert (not (= var964 null-__Array__Int__String__)))
(define-const var701 String "") ; Statement: r16 = "" 
(define-const var2287 var944 var944_currentThread/-1037784612) ; Statement: $r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var643 (Array Int var3719) (getStackTrace/-602745475 var2287)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var2285 Int var2464) ; Statement: i6 = i0 
(define-const var2111 Int (+ var1373 1)) ; Statement: i7 = i1 + 1 
(assert true) ; Non Conditional
(define-const var2792 Int (getLength-Arr-var3719-1 var643)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i7 >= $i2 goto $z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>() 
(assert (>= var2111 var2792)) ; Cond: i7 >= $i2 
(assert true)
(define-const var3010 Bool (isEmpty/-1285796103 var701)) ; Statement: $z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r17 = r16 
(assert (= (ite var3010 1 0) 0)) ; Cond: $z0 == 0 
(define-const var279 String var701) ; Statement: $r17 = r16 
(assert true) ; Non Conditional
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var944_currentThread/-1037784612=([], java.lang.Thread), getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), getLength-Arr-var3719-1=([java.lang.StackTraceElement[]], int), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1373=i1, var2464=i0, var964=r4, var701=r16, var944=java.lang.Thread, var2287=$r0, var3719=java.lang.StackTraceElement, var643=r1, var2285=i6, var2111=i7, var2792=$i2, var3010=$z0, var279=$r17}
; {i1=var1373, i0=var2464, r4=var964, r16=var701, java.lang.Thread=var944, $r0=var2287, java.lang.StackTraceElement=var3719, r1=var643, i6=var2285, i7=var2111, $i2=var2792, $z0=var3010, $r17=var279}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts i1 := @parameter0: int;	i0 := @parameter1: int;	r4 := @parameter2: java.lang.String[];	r16 = "";	$r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	i6 = i0;	i7 = i1 + 1;	$i2 = lengthof r1;	if i7 >= $i2 goto $z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>();	$z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r17 = r16;	$r17 = r16;	return $r17
;block_num 5