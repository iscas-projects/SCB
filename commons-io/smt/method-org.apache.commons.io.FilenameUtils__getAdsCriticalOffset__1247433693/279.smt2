(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var638 0)
(declare-sort var3871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-String String)
(declare-const var3871-SYSTEM_NAME_SEPARATOR Int)
(declare-const var3871-OTHER_SEPARATOR Int)
(declare-const var3916 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3916 null-String)))
(define-const var1287 Int var3871-SYSTEM_NAME_SEPARATOR) ; Statement: $c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR> 
(define-const var3671 Int (cast-from-Int-to-Int var1287)) ; Statement: $i8 = (int) $c0 
(assert true)
(define-const var90 Int (lastIndexOf/-1292097097 var3916 var3671)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8) 
(define-const var196 Int var3871-OTHER_SEPARATOR) ; Statement: $c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR> 
(define-const var2029 Int (cast-from-Int-to-Int var196)) ; Statement: $i9 = (int) $c2 
(assert true)
(define-const var3726 Int (lastIndexOf/-1292097097 var3916 var2029)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9) 
(define-const var233 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i1 != $i11 goto $i15 = (int) -1 
(assert (not (not (= var90 var233)))) ; Negate: Cond: i1 != $i11  
(define-const var700 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 != $i13 goto $i7 = i3 + 1 
(assert (not (= var3726 var700))) ; Cond: i3 != $i13 
(define-const var30 Int (+ var3726 1)) ; Statement: $i7 = i3 + 1 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var3916=r0, var638=null_type, var3871=org.apache.commons.io.FilenameUtils, var1287=$c0, var3671=$i8, var90=i1, var196=$c2, var2029=$i9, var3726=i3, var233=$i11, var700=$i13, var30=$i7}
; {r0=var3916, null_type=var638, org.apache.commons.io.FilenameUtils=var3871, $c0=var1287, $i8=var3671, i1=var90, $c2=var196, $i9=var2029, i3=var3726, $i11=var233, $i13=var700, $i7=var30}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR>;	$i8 = (int) $c0;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8);	$c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR>;	$i9 = (int) $c2;	i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9);	$i11 = (int) -1;	if i1 != $i11 goto $i15 = (int) -1;	$i13 = (int) -1;	if i3 != $i13 goto $i7 = i3 + 1;	$i7 = i3 + 1;	return $i7
;block_num 3