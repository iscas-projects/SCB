(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var448 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var448 null-String)))
(declare-const var2776 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2776 null-String)))
(declare-const var1401 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1401 null-Bool)))
(assert true)
(define-const var2132 Int (length/-134980193 var2776)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if z0 == 0 goto $r5 = r1 
(assert (= (ite var1401 1 0) 0)) ; Cond: z0 == 0 
(define-const var3397 String var448) ; Statement: $r5 = r1 
(assert true) ; Non Conditional
(define-const var2679 String var3397) ; Statement: r2 = $r5 
(assert true)
(define-const var3896 Int (length/-134980193 var448)) ; Statement: $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var2132 0)))) ; Negate: Cond: i0 != 0  
(define-const var339 (Array Int String) arr-String-init) ; Statement: r6 = newarray (java.lang.String)[$i3] 
(define-const var3462 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i3 goto return r6 
(assert (>= var3462 var3896)) ; Cond: i4 >= $i3 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var448=r1, var1853=null_type, var2776=r0, var1401=z0, var2132=i0, var3397=$r5, var2679=r2, var3896=$i3, var339=r6, var3462=i4}
; {r1=var448, null_type=var1853, r0=var2776, z0=var1401, i0=var2132, $r5=var3397, r2=var2679, $i3=var3896, r6=var339, i4=var3462}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if z0 == 0 goto $r5 = r1;	$r5 = r1;	r2 = $r5;	$i3 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 != 0 goto (branch);	r6 = newarray (java.lang.String)[$i3];	i4 = 0;	if i4 >= $i3 goto return r6;	return r6
;block_num 6