(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var65 0)
(declare-sort var1647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-String String)
(declare-const var1647-SYSTEM_NAME_SEPARATOR Int)
(declare-const var1647-OTHER_SEPARATOR Int)
(declare-const var3933 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3933 null-String)))
(define-const var1150 Int var1647-SYSTEM_NAME_SEPARATOR) ; Statement: $c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR> 
(define-const var2400 Int (cast-from-Int-to-Int var1150)) ; Statement: $i8 = (int) $c0 
(assert true)
(define-const var997 Int (lastIndexOf/-1292097097 var3933 var2400)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8) 
(define-const var1211 Int var1647-OTHER_SEPARATOR) ; Statement: $c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR> 
(define-const var1767 Int (cast-from-Int-to-Int var1211)) ; Statement: $i9 = (int) $c2 
(assert true)
(define-const var2577 Int (lastIndexOf/-1292097097 var3933 var1767)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9) 
(define-const var574 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i1 != $i11 goto $i15 = (int) -1 
(assert (not (not (= var997 var574)))) ; Negate: Cond: i1 != $i11  
(define-const var3779 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 != $i13 goto $i7 = i3 + 1 
(assert (not (not (= var2577 var3779)))) ; Negate: Cond: i3 != $i13  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var3933=r0, var65=null_type, var1647=org.apache.commons.io.FilenameUtils, var1150=$c0, var2400=$i8, var997=i1, var1211=$c2, var1767=$i9, var2577=i3, var574=$i11, var3779=$i13}
; {r0=var3933, null_type=var65, org.apache.commons.io.FilenameUtils=var1647, $c0=var1150, $i8=var2400, i1=var997, $c2=var1211, $i9=var1767, i3=var2577, $i11=var574, $i13=var3779}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR>;	$i8 = (int) $c0;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8);	$c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR>;	$i9 = (int) $c2;	i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9);	$i11 = (int) -1;	if i1 != $i11 goto $i15 = (int) -1;	$i13 = (int) -1;	if i3 != $i13 goto $i7 = i3 + 1;	return 0
;block_num 3