(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3724 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3724 null-String)))
(declare-const var157 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var157 null-String)))
(declare-const var3633 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3633 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var3724 null-String))) ; Negate: Cond: r0 == null  
 ; Statement: if r1 != null goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (not (= var157 null-String))) ; Cond: r1 != null 
(define-const var3775 Int (String_length/-667254855 var157)) ; Statement: $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var1365 Int (String_length/-667254855 var3724)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i1 <= $i0 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (<= var3775 var1365))) ; Negate: Cond: $i1 <= $i0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3724=r0, var157=r1, var3633=z0, var3775=$i1, var1365=$i0}
; {r0=var3724, r1=var157, z0=var3633, $i1=var3775, $i0=var1365}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 2}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z0 := @parameter2: boolean;	if r0 == null goto (branch);	if r1 != null goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i1 <= $i0 goto $i3 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	return 0
;block_num 4