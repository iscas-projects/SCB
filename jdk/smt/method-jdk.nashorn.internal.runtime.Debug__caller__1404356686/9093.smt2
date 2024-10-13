(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1893 0)
(declare-sort var16 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1893_currentThread/-1037784612 () var1893)
(declare-fun getStackTrace/-602745475 (var1893) (Array Int var16))
(declare-fun getLength-Arr-var16-1 ((Array Int var16)) Int)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-Int Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1069 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1069 null-Int)))
(declare-const var1969 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1969 null-Int)))
(declare-const var1694 (Array Int String)) ; Statement: r4 := @parameter2: java.lang.String[] 
(assert (not (= var1694 null-__Array__Int__String__)))
(define-const var3513 String "") ; Statement: r16 = "" 
(define-const var1635 var1893 var1893_currentThread/-1037784612) ; Statement: $r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var469 (Array Int var16) (getStackTrace/-602745475 var1635)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var3677 Int var1969) ; Statement: i6 = i0 
(define-const var2398 Int (+ var1069 1)) ; Statement: i7 = i1 + 1 
(assert true) ; Non Conditional
(define-const var551 Int (getLength-Arr-var16-1 var469)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i7 >= $i2 goto $z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>() 
(assert (>= var2398 var551)) ; Cond: i7 >= $i2 
(assert true)
(define-const var2311 Bool (isEmpty/-1285796103 var3513)) ; Statement: $z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r17 = r16 
(assert (not (= (ite var2311 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3676 String "<no caller>") ; Statement: $r17 = "<no caller>" 
 ; Statement: goto [?= return $r17] 
(assert true) ; Non Conditional
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1893_currentThread/-1037784612=([], java.lang.Thread), getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), getLength-Arr-var16-1=([java.lang.StackTraceElement[]], int), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1069=i1, var1969=i0, var1694=r4, var3513=r16, var1893=java.lang.Thread, var1635=$r0, var16=java.lang.StackTraceElement, var469=r1, var3677=i6, var2398=i7, var551=$i2, var2311=$z0, var3676=$r17}
; {i1=var1069, i0=var1969, r4=var1694, r16=var3513, java.lang.Thread=var1893, $r0=var1635, java.lang.StackTraceElement=var16, r1=var469, i6=var3677, i7=var2398, $i2=var551, $z0=var2311, $r17=var3676}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts i1 := @parameter0: int;	i0 := @parameter1: int;	r4 := @parameter2: java.lang.String[];	r16 = "";	$r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	i6 = i0;	i7 = i1 + 1;	$i2 = lengthof r1;	if i7 >= $i2 goto $z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>();	$z0 = virtualinvoke r16.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r17 = r16;	$r17 = "<no caller>";	goto [?= return $r17];	return $r17
;block_num 5