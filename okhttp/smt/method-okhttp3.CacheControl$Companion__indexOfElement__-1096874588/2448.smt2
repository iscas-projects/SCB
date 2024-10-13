(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2234 0)
(declare-sort var3181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2234 var2234)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1615 var2234) ; Statement: r3 := @this: okhttp3.CacheControl$Companion 
(assert (not (= var1615 null-var2234)))
(declare-const var3030 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var3030 null-String)))
(declare-const var2083 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2083 null-String)))
(declare-const var933 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var933 null-Int)))
(define-const var1447 Int var933) ; Statement: i4 = i0 
(assert true)
(define-const var1074 Int (length/-134980193 var3030)) ; Statement: i1 = virtualinvoke $r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto $i2 = virtualinvoke $r0.<java.lang.String: int length()>() 
(assert (>= var1447 var1074)) ; Cond: i4 >= i1 
(assert true)
(define-const var2848 Int (length/-134980193 var3030)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.String: int length()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2234=okhttp3.CacheControl$Companion, var1615=r3, var3030=$r0, var3181=null_type, var2083=r1, var933=i0, var1447=i4, var1074=i1, var2848=$i2}
; {okhttp3.CacheControl$Companion=var2234, r3=var1615, $r0=var3030, null_type=var3181, r1=var2083, i0=var933, i4=var1447, i1=var1074, $i2=var2848}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r3 := @this: okhttp3.CacheControl$Companion;	$r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 := @parameter2: int;	i4 = i0;	i1 = virtualinvoke $r0.<java.lang.String: int length()>();	if i4 >= i1 goto $i2 = virtualinvoke $r0.<java.lang.String: int length()>();	$i2 = virtualinvoke $r0.<java.lang.String: int length()>();	return $i2
;block_num 3