(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1762 0)
(declare-sort var3022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1762 var1762)
(declare-const null-String String)
(declare-const var1716 var1762) ; Statement: r4 := @this: freemarker.template.Configuration 
(assert (not (= var1716 null-var1762)))
(declare-const var3118 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3118 null-String)))
 ; Statement: if r0 == null goto return r0 
(assert (not (= var3118 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1414 Int (length/-134980193 var3118)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1414 0))) ; Cond: $i0 != 0 
(assert true)
(define-const var2737 Int (length/-134980193 var3118)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var346 Int (- var2737 1)) ; Statement: $i2 = $i1 - 1 
(assert (not (and true (and (> (str.len var3118) var346) (<= 0 var346)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1762=freemarker.template.Configuration, var1716=r4, var3118=r0, var3022=null_type, var1414=$i0, var2737=$i1, var346=$i2, var1451=c3, var2203=$i4, var1732=$r5}
; {freemarker.template.Configuration=var1762, r4=var1716, r0=var3118, null_type=var3022, $i0=var1414, $i1=var2737, $i2=var346, c3=var1451, $i4=var2203, $r5=var1732}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	if r0 == null goto return r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - 1;	c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2);	$i4 = (int) c3;	if $i4 == 46 goto $r5 = r0;	$r5 = r0;	goto [?= return $r5];	return $r5
;block_num 5