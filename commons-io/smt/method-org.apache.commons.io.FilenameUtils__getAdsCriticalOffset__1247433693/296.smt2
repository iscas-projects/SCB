(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3141 0)
(declare-sort var1691 0)
(declare-sort var1647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun var1647_max/1360571700 (Int Int) Int)
(declare-const null-String String)
(declare-const var1691-SYSTEM_NAME_SEPARATOR Int)
(declare-const var1691-OTHER_SEPARATOR Int)
(declare-const var2921 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2921 null-String)))
(define-const var2258 Int var1691-SYSTEM_NAME_SEPARATOR) ; Statement: $c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR> 
(define-const var3866 Int (cast-from-Int-to-Int var2258)) ; Statement: $i8 = (int) $c0 
(assert true)
(define-const var2397 Int (lastIndexOf/-1292097097 var2921 var3866)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8) 
(define-const var1171 Int var1691-OTHER_SEPARATOR) ; Statement: $c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR> 
(define-const var2132 Int (cast-from-Int-to-Int var1171)) ; Statement: $i9 = (int) $c2 
(assert true)
(define-const var1069 Int (lastIndexOf/-1292097097 var2921 var2132)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9) 
(define-const var1206 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i1 != $i11 goto $i15 = (int) -1 
(assert (not (= var2397 var1206))) ; Cond: i1 != $i11 
(define-const var2953 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if i3 != $i15 goto $i4 = staticinvoke <java.lang.Math: int max(int,int)>(i1, i3) 
(assert (not (= var1069 var2953))) ; Cond: i3 != $i15 
(define-const var537 Int (var1647_max/1360571700 var2397 var1069)) ; Statement: $i4 = staticinvoke <java.lang.Math: int max(int,int)>(i1, i3) 
(define-const var2309 Int (+ var537 1)) ; Statement: $i5 = $i4 + 1 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), var1647_max/1360571700=([int, int], int)}
; {var2921=r0, var3141=null_type, var1691=org.apache.commons.io.FilenameUtils, var2258=$c0, var3866=$i8, var2397=i1, var1171=$c2, var2132=$i9, var1069=i3, var1206=$i11, var2953=$i15, var1647=java.lang.Math, var537=$i4, var2309=$i5}
; {r0=var2921, null_type=var3141, org.apache.commons.io.FilenameUtils=var1691, $c0=var2258, $i8=var3866, i1=var2397, $c2=var1171, $i9=var2132, i3=var1069, $i11=var1206, $i15=var2953, java.lang.Math=var1647, $i4=var537, $i5=var2309}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <org.apache.commons.io.FilenameUtils: char SYSTEM_NAME_SEPARATOR>;	$i8 = (int) $c0;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i8);	$c2 = <org.apache.commons.io.FilenameUtils: char OTHER_SEPARATOR>;	$i9 = (int) $c2;	i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i9);	$i11 = (int) -1;	if i1 != $i11 goto $i15 = (int) -1;	$i15 = (int) -1;	if i3 != $i15 goto $i4 = staticinvoke <java.lang.Math: int max(int,int)>(i1, i3);	$i4 = staticinvoke <java.lang.Math: int max(int,int)>(i1, i3);	$i5 = $i4 + 1;	return $i5
;block_num 3