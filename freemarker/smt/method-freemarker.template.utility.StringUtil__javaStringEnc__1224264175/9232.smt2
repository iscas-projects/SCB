(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1875 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1875 null-String)))
(declare-const var1179 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1179 null-Bool)))
(assert true)
(define-const var1508 Int (length/-134980193 var1875)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2838 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var2838 var1508))) ; Negate: Cond: i6 >= i0  
(assert (and true (and (> (str.len var1875) var2838) (<= 0 var2838))))
(define-const var3736 Int (charAt/698050440 var1875 var2838)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(define-const var1063 Int (cast-from-Int-to-Int var3736)) ; Statement: $i9 = (int) c7 
 ; Statement: if $i9 == 34 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var1063 34))) ; Negate: Cond: $i9 == 34  
(define-const var710 Int (cast-from-Int-to-Int var3736)) ; Statement: $i10 = (int) c7 
 ; Statement: if $i10 == 92 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var710 92))) ; Negate: Cond: $i10 == 92  
(define-const var2699 Int (cast-from-Int-to-Int var3736)) ; Statement: $i11 = (int) c7 
 ; Statement: if $i11 >= 32 goto i6 = i6 + 1 
(assert (>= var2699 32)) ; Cond: $i11 >= 32 
(define-const var2838!1 Int (+ var2838 1)) ; Statement: i6 = i6 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (>= var2838!1 var1508)) ; Cond: i6 >= i0 
 ; Statement: if z0 == 0 goto $r7 = r0 
(assert (= (ite var1179 1 0) 0)) ; Cond: z0 == 0 
(define-const var685 String var1875) ; Statement: $r7 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1875=r0, var3906=null_type, var1179=z0, var1508=i0, var2838=i6, var3736=c7, var1063=$i9, var710=$i10, var2699=$i11, var685=$r7}
; {r0=var1875, null_type=var3906, z0=var1179, i0=var1508, i6=var2838, c7=var3736, $i9=var1063, $i10=var710, $i11=var2699, $r7=var685}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$i10 = (int) c7;	if $i10 == 92 goto $r8 = new java.lang.StringBuilder;	$i11 = (int) c7;	if $i11 >= 32 goto i6 = i6 + 1;	i6 = i6 + 1;	goto [?= (branch)];	if i6 >= i0 goto (branch);	if z0 == 0 goto $r7 = r0;	$r7 = r0;	return $r7
;block_num 10