(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var782 0)
(declare-sort var3160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3160_getType/935593766 (String Int Int Int) (Array Int ClassObject))
(declare-const null-String String)
(declare-const var2837 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2837 null-String)))
(assert (and true (and (> (str.len var2837) 0) (<= 0 0))))
(define-const var3029 Int (charAt/698050440 var2837 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var964 Int (cast-from-Int-to-Int var3029)) ; Statement: $i2 = (int) $c0 
 ; Statement: if $i2 == 40 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= var964 40)) ; Cond: $i2 == 40 
(assert true)
(define-const var328 Int (length/-134980193 var2837)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1187 (Array Int ClassObject) (var3160_getType/935593766 var2837 var328 1 0)) ; Statement: $r1 = staticinvoke <org.apache.ibatis.javassist.runtime.Desc: java.lang.Class[] getType(java.lang.String,int,int,int)>(r0, $i1, 1, 0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), var3160_getType/935593766=([java.lang.String, int, int, int], java.lang.Class[])}
; {var2837=r0, var782=null_type, var3029=$c0, var964=$i2, var328=$i1, var3160=org.apache.ibatis.javassist.runtime.Desc, var1187=$r1}
; {r0=var2837, null_type=var782, $c0=var3029, $i2=var964, $i1=var328, org.apache.ibatis.javassist.runtime.Desc=var3160, $r1=var1187}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i2 = (int) $c0;	if $i2 == 40 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = staticinvoke <org.apache.ibatis.javassist.runtime.Desc: java.lang.Class[] getType(java.lang.String,int,int,int)>(r0, $i1, 1, 0);	return $r1
;block_num 2