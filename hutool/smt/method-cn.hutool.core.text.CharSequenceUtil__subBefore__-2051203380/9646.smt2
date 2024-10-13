(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1520_isEmpty/1540305040 (String) Bool)
(declare-fun String_toString/-1426662429 (String) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var536 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var536 null-String)))
(declare-const var2119 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2119 null-String)))
(declare-const var206 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var206 null-Bool)))
(define-const var1155 Bool (var1520_isEmpty/1540305040 var536)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var1155 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r1 != null goto r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var2119 null-String))) ; Cond: r1 != null 
(define-const var2450 String (String_toString/-1426662429 var536)) ; Statement: r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var2422 String (String_toString/-1426662429 var2119)) ; Statement: r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var322 Bool (isEmpty/-1285796103 var2422)) ; Statement: $z1 = virtualinvoke r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var322 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var1520_isEmpty/1540305040=([java.lang.CharSequence], boolean), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var536=r0, var2119=r1, var206=z2, var1520=cn.hutool.core.text.CharSequenceUtil, var1155=$z0, var2450=r2, var2422=r3, var322=$z1}
; {r0=var536, r1=var2119, z2=var206, cn.hutool.core.text.CharSequenceUtil=var1520, $z0=var1155, r2=var2450, r3=var2422, $z1=var322}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z2 := @parameter2: boolean;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto (branch);	if r1 != null goto r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	$z1 = virtualinvoke r3.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto (branch);	return ""
;block_num 4