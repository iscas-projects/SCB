(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3888 0)
(declare-sort var1734 0)
(declare-sort var3247 0)
(declare-sort var339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var339_getDefaultInstances/-1612785257 () var3247)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3888 var3888)
(declare-const null-String String)
(declare-const var3371 var3888) ; Statement: r14 := @this: com.mysql.cj.protocol.x.XProtocol 
(assert (not (= var3371 null-var3888)))
(declare-const var2399 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2399 null-String)))
(define-const var3763 var3247 var339_getDefaultInstances/-1612785257) ; Statement: r0 = staticinvoke <com.mysql.cj.protocol.x.CompressionAlgorithm: java.util.Map getDefaultInstances()>() 
(assert true)
(define-const var1161 Int (length/-134980193 var2399)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (not (not (= var1161 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var339_getDefaultInstances/-1612785257=([], java.util.Map), length/-134980193=([java.lang.String], int)}
; {var3888=com.mysql.cj.protocol.x.XProtocol, var3371=r14, var2399=r1, var1734=null_type, var3247=java.util.Map, var339=com.mysql.cj.protocol.x.CompressionAlgorithm, var3763=r0, var1161=$i0}
; {com.mysql.cj.protocol.x.XProtocol=var3888, r14=var3371, r1=var2399, null_type=var1734, java.util.Map=var3247, com.mysql.cj.protocol.x.CompressionAlgorithm=var339, r0=var3763, $i0=var1161}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r14 := @this: com.mysql.cj.protocol.x.XProtocol;	r1 := @parameter0: java.lang.String;	r0 = staticinvoke <com.mysql.cj.protocol.x.CompressionAlgorithm: java.util.Map getDefaultInstances()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 != 0 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	return r0
;block_num 2