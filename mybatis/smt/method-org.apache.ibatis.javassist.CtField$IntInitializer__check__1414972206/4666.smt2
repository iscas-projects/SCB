(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1049 0)
(declare-sort var2895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1049 var1049)
(declare-const null-String String)
(declare-const var1418 var1049) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$IntInitializer 
(assert (not (= var1418 null-var1049)))
(declare-const var3244 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3244 null-String)))
(assert (and true (and (> (str.len var3244) 0) (<= 0 0))))
(define-const var3514 Int (charAt/698050440 var3244 0)) ; Statement: c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var537 Int (cast-from-Int-to-Int var3514)) ; Statement: $i1 = (int) c0 
 ; Statement: if $i1 == 73 goto return 
(assert (= var537 73)) ; Cond: $i1 == 73 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1049=org.apache.ibatis.javassist.CtField$IntInitializer, var1418=r2, var3244=r0, var2895=null_type, var3514=c0, var537=$i1}
; {org.apache.ibatis.javassist.CtField$IntInitializer=var1049, r2=var1418, r0=var3244, null_type=var2895, c0=var3514, $i1=var537}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$IntInitializer;	r0 := @parameter0: java.lang.String;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) c0;	if $i1 == 73 goto return;	return
;block_num 2