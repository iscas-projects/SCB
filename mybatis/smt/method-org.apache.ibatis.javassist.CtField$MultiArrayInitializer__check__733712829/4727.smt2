(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort var3542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3466 var3466)
(declare-const null-String String)
(declare-const var3206 var3466) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$MultiArrayInitializer 
(assert (not (= var3206 null-var3466)))
(declare-const var3237 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3237 null-String)))
(assert (and true (and (> (str.len var3237) 0) (<= 0 0))))
(define-const var3070 Int (charAt/698050440 var3237 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1186 Int (cast-from-Int-to-Int var3070)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 == 91 goto return 
(assert (= var1186 91)) ; Cond: $i1 == 91 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3466=org.apache.ibatis.javassist.CtField$MultiArrayInitializer, var3206=r2, var3237=r0, var3542=null_type, var3070=$c0, var1186=$i1}
; {org.apache.ibatis.javassist.CtField$MultiArrayInitializer=var3466, r2=var3206, r0=var3237, null_type=var3542, $c0=var3070, $i1=var1186}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$MultiArrayInitializer;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 91 goto return;	return
;block_num 2