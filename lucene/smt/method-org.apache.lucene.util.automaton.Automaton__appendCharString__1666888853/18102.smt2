(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1459 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1459 null-Int)))
(declare-const var1925 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var1925 null-String)))
 ; Statement: if i0 < 33 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\U") 
(assert (< var1459 33)) ; Cond: i0 < 33 
(assert true)
;(assert (append/672562846 var1925 "\u005c\u005cU")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\U") 
(declare-const var1925!1 String)
(assert (= var1925!1 (str.++ var1925 "\u005c\u005cU")))
(define-const var1232 String (Int_toHexString/1865784998 var1459)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
 ; Statement: if i0 >= 16 goto (branch) 
(assert (not (>= var1459 16))) ; Negate: Cond: i0 >= 16  
(assert true)
(define-const var3526 String (append/672562846 var1925!1 "0000000")) ; Statement: $r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0000000") 
(declare-const var1925!2 String)
(assert (= var1925!2 (str.++ var1925!1 "0000000")))
(assert true)
;(assert (append/672562846 var3526 var1232)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3526!1 String)
(assert (= var3526!1 (str.++ var3526 var1232)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String)}
; {var1459=i0, var1925=r0, var1232=$r8, var3526=$r7}
; {i0=var1459, r0=var1925, $r8=var1232, $r7=var3526}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.StringBuilder;	if i0 < 33 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\U");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\U");	$r8 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	if i0 >= 16 goto (branch);	$r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0000000");	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	goto [?= return];	return
;block_num 4