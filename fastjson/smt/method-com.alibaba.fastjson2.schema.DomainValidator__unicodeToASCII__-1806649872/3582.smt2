(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1310 0)
(declare-sort var48 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var48_toASCII/-1082919185 (String) String)
(declare-const null-String String)
(declare-const var896 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var896 null-String)))
(define-const var3705 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var571 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var741 Int (length/-134980193 var896)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto (branch) 
(assert (>= var571 var741)) ; Cond: i2 >= $i0 
 ; Statement: if z0 == 0 goto $r1 = staticinvoke <java.net.IDN: java.lang.String toASCII(java.lang.String)>(r0) 
(assert (= (ite var3705 1 0) 0)) ; Cond: z0 == 0 
(define-const var555 String (var48_toASCII/-1082919185 var896)) ; Statement: $r1 = staticinvoke <java.net.IDN: java.lang.String toASCII(java.lang.String)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var48_toASCII/-1082919185=([java.lang.String], java.lang.String)}
; {var896=r0, var1310=null_type, var3705=z0, var571=i2, var741=$i0, var48=java.net.IDN, var555=$r1}
; {r0=var896, null_type=var1310, z0=var3705, i2=var571, $i0=var741, java.net.IDN=var48, $r1=var555}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 = 1;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto (branch);	if z0 == 0 goto $r1 = staticinvoke <java.net.IDN: java.lang.String toASCII(java.lang.String)>(r0);	$r1 = staticinvoke <java.net.IDN: java.lang.String toASCII(java.lang.String)>(r0);	return $r1
;block_num 4