(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var3247 0)
(declare-sort var1264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCached/1705609857 (var2453 String) var1264)
(declare-fun isFrozen/-850649134 (var1264) Bool)
(declare-const null-var2453 var2453)
(declare-const null-String String)
(declare-const null-var1264 var1264)
(declare-const var1347 var2453) ; Statement: r0 := @this: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var1347 null-var2453)))
(declare-const var863 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var863 null-String)))
(assert true)
(define-const var3726 var1264 (getCached/1705609857 var1347 var863)) ; Statement: r15 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass getCached(java.lang.String)>(r1) 
 ; Statement: if r15 != null goto $z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>() 
(assert (not (= var3726 null-var1264))) ; Cond: r15 != null 
(assert true)
(define-const var1086 Bool (isFrozen/-850649134 var3726)) ; Statement: $z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1086 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCached/1705609857=([org.apache.ibatis.javassist.ClassPool, java.lang.String], org.apache.ibatis.javassist.CtClass), isFrozen/-850649134=([org.apache.ibatis.javassist.CtClass], boolean)}
; {var2453=org.apache.ibatis.javassist.ClassPool, var1347=r0, var863=r1, var3247=null_type, var1264=org.apache.ibatis.javassist.CtClass, var3726=r15, var1086=$z0}
; {org.apache.ibatis.javassist.ClassPool=var2453, r0=var1347, r1=var863, null_type=var3247, org.apache.ibatis.javassist.CtClass=var1264, r15=var3726, $z0=var1086}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.ClassPool;	r1 := @parameter0: java.lang.String;	r15 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass getCached(java.lang.String)>(r1);	if r15 != null goto $z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>();	$z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>();	if $z0 == 0 goto return;	return
;block_num 3