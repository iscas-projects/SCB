(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var795 0)
(declare-sort var1888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-String String)
(declare-const var1888-SYSTEM_NAME_SEPARATOR Int)
(declare-const var1888-OTHER_SEPARATOR Int)
(declare-const var3118 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3118 null-String)))
(define-const var635 Int var1888-SYSTEM_NAME_SEPARATOR) ; Statement: $c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR> 
(define-const var2390 Int (cast-from-Int-to-Int var635)) ; Statement: $i8 = (int) $c0 
(assert true)
(define-const var583 Int (lastIndexOf/-1292097097 var3118 var2390)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8) 
(define-const var559 Int var1888-OTHER_SEPARATOR) ; Statement: $c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR> 
(define-const var936 Int (cast-from-Int-to-Int var559)) ; Statement: $i9 = (int) $c2 
(assert true)
(define-const var3433 Int (lastIndexOf/-1292097097 var3118 var936)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9) 
(define-const var279 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i1 != $i11 goto $i15 = (int) -1 
(assert (not (= var583 var279))) ; Cond: i1 != $i11 
(define-const var482 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if i3 != $i15 goto $i4 = staticinvoke <java.lang.Math: int max(int,int)>(i1, i3) 
(assert (not (not (= var3433 var482)))) ; Negate: Cond: i3 != $i15  
(define-const var3965 Int (+ var583 1)) ; Statement: $i6 = i1 + 1 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var3118=r0, var795=null_type, var1888=org.apache.commons.io.FilenameUtils, var635=$c0, var2390=$i8, var583=i1, var559=$c2, var936=$i9, var3433=i3, var279=$i11, var482=$i15, var3965=$i6}
; {r0=var3118, null_type=var795, org.apache.commons.io.FilenameUtils=var1888, $c0=var635, $i8=var2390, i1=var583, $c2=var559, $i9=var936, i3=var3433, $i11=var279, $i15=var482, $i6=var3965}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR>;	$i8 = (int) $c0;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8);	$c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR>;	$i9 = (int) $c2;	i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9);	$i11 = (int) -1;	if i1 != $i11 goto $i15 = (int) -1;	$i15 = (int) -1;	if i3 != $i15 goto $i4 = staticinvoke <java.lang.Math: int max(int,int)>(i1, i3);	$i6 = i1 + 1;	return $i6
;block_num 3