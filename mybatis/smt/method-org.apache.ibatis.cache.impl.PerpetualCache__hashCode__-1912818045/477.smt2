(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2899 0)
(declare-sort var56 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getId/610825049 (var2899) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2899 var2899)
(declare-const null-String String)
(declare-const var2682 var2899) ; Statement: r0 := @this: org.apache.ibatis.cache.impl.PerpetualCache 
(assert (not (= var2682 null-var2899)))
(assert true)
(define-const var2524 String (getId/610825049 var2682)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.cache.impl.PerpetualCache: java.lang.String getId()>() 
 ; Statement: if $r1 != null goto $r2 = virtualinvoke r0.<org.apache.ibatis.cache.impl.PerpetualCache: java.lang.String getId()>() 
(assert (not (= var2524 null-String))) ; Cond: $r1 != null 
(assert true)
(define-const var349 String (getId/610825049 var2682)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.cache.impl.PerpetualCache: java.lang.String getId()>() 
(assert true)
(define-const var1904 Int (hashCode/-467973558 var349)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getId/610825049=([org.apache.ibatis.cache.impl.PerpetualCache], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2899=org.apache.ibatis.cache.impl.PerpetualCache, var2682=r0, var2524=$r1, var56=null_type, var349=$r2, var1904=$i0}
; {org.apache.ibatis.cache.impl.PerpetualCache=var2899, r0=var2682, $r1=var2524, null_type=var56, $r2=var349, $i0=var1904}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.cache.impl.PerpetualCache;	$r1 = virtualinvoke r0.<org.apache.ibatis.cache.impl.PerpetualCache: java.lang.String getId()>();	if $r1 != null goto $r2 = virtualinvoke r0.<org.apache.ibatis.cache.impl.PerpetualCache: java.lang.String getId()>();	$r2 = virtualinvoke r0.<org.apache.ibatis.cache.impl.PerpetualCache: java.lang.String getId()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 2