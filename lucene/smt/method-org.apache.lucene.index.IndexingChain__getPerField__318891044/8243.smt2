(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2279 0)
(declare-sort var1457 0)
(declare-sort var715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashMask/-282539681 (var2279) Int)
(declare-fun fieldHash/-282539681 (var2279) (Array Int var715))
(declare-const null-var2279 var2279)
(declare-const null-String String)
(declare-const null-var715 var715)
(declare-const var1527 var2279) ; Statement: r1 := @this: org.apache.lucene.index.IndexingChain 
(assert (not (= var1527 null-var2279)))
(declare-const var1041 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1041 null-String)))
(assert true)
(define-const var1289 Int (hashCode/-467973558 var1041)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var188 Int (hashMask/-282539681 var1527)) ; Statement: $i0 = r1.<org.apache.lucene.index.IndexingChain: int hashMask> 
(define-const var2818 Int (bv2nat (bvand ((_ int2bv 64) var1289) ((_ int2bv 64) var188)))) ; Statement: i2 = $i1 & $i0 
(define-const var2890 (Array Int var715) (fieldHash/-282539681 var1527)) ; Statement: $r2 = r1.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.IndexingChain$PerField[] fieldHash> 
(define-const var2658 var715 (select var2890 var2818)) ; Statement: r4 = $r2[i2] 
(assert true) ; Non Conditional
 ; Statement: if r4 == null goto return r4 
(assert (= var2658 null-var715)) ; Cond: r4 == null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), hashMask/-282539681=([org.apache.lucene.index.IndexingChain], int), fieldHash/-282539681=([org.apache.lucene.index.IndexingChain], org.apache.lucene.index.IndexingChain$PerField[])}
; {var2279=org.apache.lucene.index.IndexingChain, var1527=r1, var1041=r0, var1457=null_type, var1289=$i1, var188=$i0, var2818=i2, var715=org.apache.lucene.index.IndexingChain$PerField, var2890=$r2, var2658=r4}
; {org.apache.lucene.index.IndexingChain=var2279, r1=var1527, r0=var1041, null_type=var1457, $i1=var1289, $i0=var188, i2=var2818, org.apache.lucene.index.IndexingChain$PerField=var715, $r2=var2890, r4=var2658}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.apache.lucene.index.IndexingChain;	r0 := @parameter0: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$i0 = r1.<org.apache.lucene.index.IndexingChain: int hashMask>;	i2 = $i1 & $i0;	$r2 = r1.<org.apache.lucene.index.IndexingChain: org.apache.lucene.index.IndexingChain$PerField[] fieldHash>;	r4 = $r2[i2];	if r4 == null goto return r4;	return r4
;block_num 3