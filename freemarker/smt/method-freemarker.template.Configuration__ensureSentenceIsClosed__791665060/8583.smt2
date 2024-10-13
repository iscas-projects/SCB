(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3526 0)
(declare-sort var3685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3526 var3526)
(declare-const null-String String)
(declare-const var3728 var3526) ; Statement: r4 := @this: freemarker.template.Configuration 
(assert (not (= var3728 null-var3526)))
(declare-const var1753 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1753 null-String)))
 ; Statement: if r0 == null goto return r0 
(assert (not (= var1753 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3612 Int (length/-134980193 var1753)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3612 0))) ; Cond: $i0 != 0 
(assert true)
(define-const var575 Int (length/-134980193 var1753)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1628 Int (- var575 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (> (str.len var1753) var1628) (<= 0 var1628))))
(define-const var2684 Int (charAt/698050440 var1753 var1628)) ; Statement: c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2) 
(define-const var2890 Int (cast-from-Int-to-Int var2684)) ; Statement: $i4 = (int) c3 
 ; Statement: if $i4 == 46 goto $r5 = r0 
(assert (not (= var2890 46))) ; Negate: Cond: $i4 == 46  
(define-const var7 Int (cast-from-Int-to-Int var2684)) ; Statement: $i5 = (int) c3 
 ; Statement: if $i5 == 33 goto $r5 = r0 
(assert (= var7 33)) ; Cond: $i5 == 33 
(define-const var1260 String var1753) ; Statement: $r5 = r0 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3526=freemarker.template.Configuration, var3728=r4, var1753=r0, var3685=null_type, var3612=$i0, var575=$i1, var1628=$i2, var2684=c3, var2890=$i4, var7=$i5, var1260=$r5}
; {freemarker.template.Configuration=var3526, r4=var3728, r0=var1753, null_type=var3685, $i0=var3612, $i1=var575, $i2=var1628, c3=var2684, $i4=var2890, $i5=var7, $r5=var1260}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	if r0 == null goto return r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - 1;	c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2);	$i4 = (int) c3;	if $i4 == 46 goto $r5 = r0;	$i5 = (int) c3;	if $i5 == 33 goto $r5 = r0;	$r5 = r0;	goto [?= return $r5];	return $r5
;block_num 6