(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun comparison/-1993580157 (var1196) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1196 var1196)
(declare-const var897 var1196) ; Statement: r0 := @this: org.hibernate.engine.jdbc.batch.internal.BasicBatchKey 
(assert (not (= var897 null-var1196)))
(define-const var3076 String (comparison/-1993580157 var897)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.batch.internal.BasicBatchKey: java.lang.String comparison> 
(assert true)
(define-const var2004 Int (hashCode/-467973558 var3076)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {comparison/-1993580157=([org.hibernate.engine.jdbc.batch.internal.BasicBatchKey], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1196=org.hibernate.engine.jdbc.batch.internal.BasicBatchKey, var897=r0, var3076=$r1, var2004=$i0}
; {org.hibernate.engine.jdbc.batch.internal.BasicBatchKey=var1196, r0=var897, $r1=var3076, $i0=var2004}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.batch.internal.BasicBatchKey;	$r1 = r0.<org.hibernate.engine.jdbc.batch.internal.BasicBatchKey: java.lang.String comparison>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1