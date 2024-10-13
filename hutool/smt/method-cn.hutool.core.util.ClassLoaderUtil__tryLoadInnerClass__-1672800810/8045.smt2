(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2209 0)
(declare-sort var371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-String String)
(declare-const null-var371 var371)
(declare-const null-Bool Bool)
(declare-const var3486 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3486 null-String)))
(declare-const var1634 var371) ; Statement: r8 := @parameter1: java.lang.ClassLoader 
(assert (not (= var1634 null-var371)))
(declare-const var2518 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2518 null-Bool)))
(assert true)
(define-const var1154 Int (lastIndexOf/-1292097097 var3486 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto return null 
(assert (<= var1154 0)) ; Cond: i0 <= 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var3486=r0, var2209=null_type, var371=java.lang.ClassLoader, var1634=r8, var2518=z0, var1154=i0}
; {r0=var3486, null_type=var2209, java.lang.ClassLoader=var371, r8=var1634, z0=var2518, i0=var1154}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.ClassLoader;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 <= 0 goto return null;	return null
;block_num 2