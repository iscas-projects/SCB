(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1219 0)
(declare-sort var3865 0)
(declare-sort var3321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashMask/-282539681 (var1219) Int)
(declare-fun fieldHash/-282539681 (var1219) (Array Int var3321))
(declare-const null-var1219 var1219)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3321 var3321)
(declare-const var388 var1219) ; Statement: r1 := @this: org.apache.lucene.index.IndexingChain 
(assert (not (= var388 null-var1219)))
(declare-const var1606 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1606 null-String)))
(declare-const var3139 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3139 null-Bool)))
(assert true)
(define-const var1352 Int (hashCode/-467973558 var1606)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var3404 Int (hashMask/-282539681 var388)) ; Statement: $i0 = r1.<org.apache.lucene.index.IndexingChain: int hashMask> 
(define-const var2033 Int (bv2nat (bvand ((_ int2bv 64) var1352) ((_ int2bv 64) var3404)))) ; Statement: i2 = $i1 & $i0 
(define-const var2547 (Array Int var3321) (fieldHash/-282539681 var388)) ; Statement: $r2 = r1.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.IndexingChain$PerField[] fieldHash> 
(define-const var2072 var3321 (select var2547 var2033)) ; Statement: r20 = $r2[i2] 
(assert true) ; Non Conditional
 ; Statement: if r20 == null goto (branch) 
(assert (= var2072 null-var3321)) ; Cond: r20 == null 
 ; Statement: if r20 != null goto return r20 
(assert (not (= var2072 null-var3321))) ; Cond: r20 != null 
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), hashMask/-282539681=([org.apache.lucene.index.IndexingChain], int), fieldHash/-282539681=([org.apache.lucene.index.IndexingChain], org.apache.lucene.index.IndexingChain$PerField[])}
; {var1219=org.apache.lucene.index.IndexingChain, var388=r1, var1606=r0, var3865=null_type, var3139=z0, var1352=$i1, var3404=$i0, var2033=i2, var3321=org.apache.lucene.index.IndexingChain$PerField, var2547=$r2, var2072=r20}
; {org.apache.lucene.index.IndexingChain=var1219, r1=var388, r0=var1606, null_type=var3865, z0=var3139, $i1=var1352, $i0=var3404, i2=var2033, org.apache.lucene.index.IndexingChain$PerField=var3321, $r2=var2547, r20=var2072}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.apache.lucene.index.IndexingChain;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$i1 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i0 = r1.<org.apache.lucene.index.IndexingChain: int hashMask>;	i2 = $i1 & $i0;	$r2 = r1.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.IndexingChain$PerField[] fieldHash>;	r20 = $r2[i2];	if r20 == null goto (branch);	if r20 != null goto return r20;	return r20
;block_num 4