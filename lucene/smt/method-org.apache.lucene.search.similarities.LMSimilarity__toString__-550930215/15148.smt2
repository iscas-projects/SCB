(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3277 0)
(declare-sort var3819 0)
(declare-sort var922 0)
(declare-sort var919 0)
(declare-sort var3106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionModel/1715405313 (var3277) var3819)
(declare-fun var3819_getName/1092146509 (var3819) String)
(declare-fun arr-var3106-init () (Array Int var3106))
(declare-fun getName/-1804900268 (var3277) String)
(declare-fun cast-from-String-to-var3106 (String) var3106)
(declare-fun String_format/-647569892 (var919 String (Array Int var3106)) String)
(declare-const null-var3277 var3277)
(declare-const null-String String)
(declare-const var919-ROOT var919)
(declare-const null-__Array__Int__var3106__ (Array Int var3106))
(declare-const var3769 var3277) ; Statement: r0 := @this: org.apache.lucene.search.similarities.LMSimilarity 
(assert (not (= var3769 null-var3277)))
(define-const var109 var3819 (collectionModel/1715405313 var3769)) ; Statement: $r1 = r0.<org.apache.lucene.search.similarities.LMSimilarity: org.apache.lucene.search.similarities.LMSimilarity$CollectionModel collectionModel> 
(define-const var2812 String (var3819_getName/1092146509 var109)) ; Statement: r2 = interfaceinvoke $r1.<org.apache.lucene.search.similarities.LMSimilarity$CollectionModel: java.lang.String getName()>() 
 ; Statement: if r2 == null goto $r4 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (= var2812 null-String))) ; Negate: Cond: r2 == null  
(define-const var2564 var919 var919-ROOT) ; Statement: $r8 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1653 (Array Int var3106) arr-var3106-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var3672 String (getName/-1804900268 var3769)) ; Statement: $r9 = virtualinvoke r0.<org.apache.lucene.search.similarities.LMSimilarity: java.lang.String getName()>() 
(declare-const var1653!1 (Array Int var3106))
(assert (not (= var1653!1 null-__Array__Int__var3106__)))
(assert (= (select var1653!1 0) (cast-from-String-to-var3106 var3672))) ; Statement: $r7[0] = $r9 
(declare-const var1653!2 (Array Int var3106))
(assert (not (= var1653!2 null-__Array__Int__var3106__)))
(assert (= (select var1653!2 1) (cast-from-String-to-var3106 var2812))) ; Statement: $r7[1] = r2 
(define-const var2264 String (String_format/-647569892 var2564 "LM %s - %s" var1653!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "LM %s - %s", $r7) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionModel/1715405313=([org.apache.lucene.search.similarities.LMSimilarity], org.apache.lucene.search.similarities.LMSimilarity$CollectionModel), var3819_getName/1092146509=([org.apache.lucene.search.similarities.LMSimilarity$CollectionModel], java.lang.String), arr-var3106-init=([], java.lang.Object[]), getName/-1804900268=([org.apache.lucene.search.similarities.LMSimilarity], java.lang.String), cast-from-String-to-var3106=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3277=org.apache.lucene.search.similarities.LMSimilarity, var3769=r0, var3819=org.apache.lucene.search.similarities.LMSimilarity$CollectionModel, var109=$r1, var2812=r2, var922=null_type, var919=java.util.Locale, var2564=$r8, var3106=java.lang.Object, var1653=$r7, var3672=$r9, var2264=$r10}
; {org.apache.lucene.search.similarities.LMSimilarity=var3277, r0=var3769, org.apache.lucene.search.similarities.LMSimilarity$CollectionModel=var3819, $r1=var109, r2=var2812, null_type=var922, java.util.Locale=var919, $r8=var2564, java.lang.Object=var3106, $r7=var1653, $r9=var3672, $r10=var2264}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.search.similarities.LMSimilarity;	$r1 = r0.<org.apache.lucene.search.similarities.LMSimilarity: org.apache.lucene.search.similarities.LMSimilarity$CollectionModel collectionModel>;	r2 = interfaceinvoke $r1.<org.apache.lucene.search.similarities.LMSimilarity$CollectionModel: java.lang.String getName()>();	if r2 == null goto $r4 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = <java.util.Locale: java.util.Locale ROOT>;	$r7 = newarray (java.lang.Object)[2];	$r9 = virtualinvoke r0.<org.apache.lucene.search.similarities.LMSimilarity: java.lang.String getName()>();	$r7[0] = $r9;	$r7[1] = r2;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "LM %s - %s", $r7);	return $r10
;block_num 2