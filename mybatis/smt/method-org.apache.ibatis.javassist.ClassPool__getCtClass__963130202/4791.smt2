(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1486 0)
(declare-sort var1141 0)
(declare-sort var849 0)
(declare-sort var551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var551_toCtClass/865806913 (String var1486) var849)
(declare-const null-var1486 var1486)
(declare-const null-String String)
(declare-const var204 var1486) ; Statement: r1 := @this: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var204 null-var1486)))
(declare-const var3239 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3239 null-String)))
(assert (and true (and (> (str.len var3239) 0) (<= 0 0))))
(define-const var1071 Int (charAt/698050440 var3239 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1504 Int (cast-from-Int-to-Int var1071)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 != 91 goto $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r0) 
(assert (not (not (= var1504 91)))) ; Negate: Cond: $i1 != 91  
(define-const var3656 var849 (var551_toCtClass/865806913 var3239 var204)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toCtClass(java.lang.String,org.apache.ibatis.javassist.ClassPool)>(r0, r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var551_toCtClass/865806913=([java.lang.String, org.apache.ibatis.javassist.ClassPool], org.apache.ibatis.javassist.CtClass)}
; {var1486=org.apache.ibatis.javassist.ClassPool, var204=r1, var3239=r0, var1141=null_type, var1071=$c0, var1504=$i1, var849=org.apache.ibatis.javassist.CtClass, var551=org.apache.ibatis.javassist.bytecode.Descriptor, var3656=$r3}
; {org.apache.ibatis.javassist.ClassPool=var1486, r1=var204, r0=var3239, null_type=var1141, $c0=var1071, $i1=var1504, org.apache.ibatis.javassist.CtClass=var849, org.apache.ibatis.javassist.bytecode.Descriptor=var551, $r3=var3656}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.ClassPool;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 != 91 goto $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>(r0);	$r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toCtClass(java.lang.String,org.apache.ibatis.javassist.ClassPool)>(r0, r1);	return $r3
;block_num 2