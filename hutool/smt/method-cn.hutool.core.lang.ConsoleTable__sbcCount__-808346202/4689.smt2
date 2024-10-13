(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var1491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2592 var2592)
(declare-const null-String String)
(declare-const var2452 var2592) ; Statement: r1 := @this: cn.hutool.core.lang.ConsoleTable 
(assert (not (= var2452 null-var2592)))
(declare-const var1680 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1680 null-String)))
(define-const var1692 Int 0) ; Statement: i2 = 0 
(define-const var849 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3888 Int (length/-134980193 var1680)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto return i2 
(assert (>= var849 var3888)) ; Cond: i3 >= $i0 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2592=cn.hutool.core.lang.ConsoleTable, var2452=r1, var1680=r0, var1491=null_type, var1692=i2, var849=i3, var3888=$i0}
; {cn.hutool.core.lang.ConsoleTable=var2592, r1=var2452, r0=var1680, null_type=var1491, i2=var1692, i3=var849, $i0=var3888}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: cn.hutool.core.lang.ConsoleTable;	r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto return i2;	return i2
;block_num 3