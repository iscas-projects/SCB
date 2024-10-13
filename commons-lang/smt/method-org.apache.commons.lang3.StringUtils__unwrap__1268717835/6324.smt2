(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1771 0)
(declare-sort var2686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2686_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1789 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1789 null-String)))
(declare-const var1981 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1981 null-Int)))
(define-const var1708 Bool (var2686_isEmpty/1595667738 (cast-from-String-to-String var1789))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1708 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if c0 == 0 goto return r0 
(assert (not (= var1981 0))) ; Negate: Cond: c0 == 0  
(assert true)
(define-const var2719 Int (length/-134980193 var1789)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var2719 1))) ; Cond: $i1 != 1 
(assert (and true (and (> (str.len var1789) 0) (<= 0 0))))
(define-const var2939 Int (charAt/698050440 var1789 0)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1469 Int (cast-from-Int-to-Int var2939)) ; Statement: $i8 = (int) $c2 
(define-const var1399 Int (cast-from-Int-to-Int var1981)) ; Statement: $i9 = (int) c0 
 ; Statement: if $i8 != $i9 goto return r0 
(assert (not (= var1469 var1399))) ; Cond: $i8 != $i9 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2686_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1789=r0, var1771=null_type, var1981=c0, var2686=org.apache.commons.lang3.StringUtils, var1708=$z0, var2719=$i1, var2939=$c2, var1469=$i8, var1399=$i9}
; {r0=var1789, null_type=var1771, c0=var1981, org.apache.commons.lang3.StringUtils=var2686, $z0=var1708, $i1=var2719, $c2=var2939, $i8=var1469, $i9=var1399}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if c0 == 0 goto return r0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 != 1 goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i8 = (int) $c2;	$i9 = (int) c0;	if $i8 != $i9 goto return r0;	return r0
;block_num 5