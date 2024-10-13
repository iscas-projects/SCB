(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2888 0)
(declare-sort var2765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2765_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3010 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3010 null-String)))
(declare-const var1517 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1517 null-Int)))
(define-const var1676 Bool (var2765_isEmpty/1595667738 (cast-from-String-to-String var3010))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0) 
(assert (= (ite var1676 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var267 Int (lastIndexOf/-1292097097 var3010 var1517)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0) 
(define-const var3737 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i1 == $i6 goto return "" 
(assert (not (= var267 var3737))) ; Negate: Cond: i1 == $i6  
(assert true)
(define-const var634 Int (length/-134980193 var3010)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2510 Int (- var634 1)) ; Statement: $i3 = $i2 - 1 
 ; Statement: if i1 != $i3 goto $i4 = i1 + 1 
(assert (not (not (= var267 var2510)))) ; Negate: Cond: i1 != $i3  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var2765_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int)}
; {var3010=r0, var2888=null_type, var1517=i0, var2765=org.apache.commons.lang3.StringUtils, var1676=$z0, var267=i1, var3737=$i6, var634=$i2, var2510=$i3}
; {r0=var3010, null_type=var2888, i0=var1517, org.apache.commons.lang3.StringUtils=var2765, $z0=var1676, i1=var267, $i6=var3737, $i2=var634, $i3=var2510}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0);	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0);	$i6 = (int) -1;	if i1 == $i6 goto return "";	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 1;	if i1 != $i3 goto $i4 = i1 + 1;	return ""
;block_num 4