(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2594 0)
(declare-sort var3773 0)
(declare-sort var2326 0)
(declare-sort var371 0)
(declare-sort var1593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionModel/1715405313 (var2594) var3773)
(declare-fun var3773_getName/1092146509 (var3773) String)
(declare-fun arr-var1593-init () (Array Int var1593))
(declare-fun getName/-1804900268 (var2594) String)
(declare-fun cast-from-String-to-var1593 (String) var1593)
(declare-fun String_format/-647569892 (var371 String (Array Int var1593)) String)
(declare-const null-var2594 var2594)
(declare-const null-String String)
(declare-const var371-ROOT var371)
(declare-const null-__Array__Int__var1593__ (Array Int var1593))
(declare-const var3447 var2594) ; Statement: r0 := @this: org.apache.lucene.search.similarities.LMSimilarity 
(assert (not (= var3447 null-var2594)))
(define-const var3553 var3773 (collectionModel/1715405313 var3447)) ; Statement: $r1 = r0.<org.apache.lucene.search.similarities.LMSimilarity: org.apache.lucene.search.similarities.LMSimilarity$CollectionModel collectionModel> 
(define-const var3272 String (var3773_getName/1092146509 var3553)) ; Statement: r2 = interfaceinvoke $r1.<org.apache.lucene.search.similarities.LMSimilarity$CollectionModel: java.lang.String getName()>() 
 ; Statement: if r2 == null goto $r4 = <java.util.Locale: java.util.Locale ROOT> 
(assert (= var3272 null-String)) ; Cond: r2 == null 
(define-const var3655 var371 var371-ROOT) ; Statement: $r4 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var919 (Array Int var1593) arr-var1593-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var2526 String (getName/-1804900268 var3447)) ; Statement: $r5 = virtualinvoke r0.<org.apache.lucene.search.similarities.LMSimilarity: java.lang.String getName()>() 
(declare-const var919!1 (Array Int var1593))
(assert (not (= var919!1 null-__Array__Int__var1593__)))
(assert (= (select var919!1 0) (cast-from-String-to-var1593 var2526))) ; Statement: $r3[0] = $r5 
(define-const var2859 String (String_format/-647569892 var3655 "LM %s" var919!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "LM %s", $r3) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionModel/1715405313=([org.apache.lucene.search.similarities.LMSimilarity], org.apache.lucene.search.similarities.LMSimilarity$CollectionModel), var3773_getName/1092146509=([org.apache.lucene.search.similarities.LMSimilarity$CollectionModel], java.lang.String), arr-var1593-init=([], java.lang.Object[]), getName/-1804900268=([org.apache.lucene.search.similarities.LMSimilarity], java.lang.String), cast-from-String-to-var1593=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2594=org.apache.lucene.search.similarities.LMSimilarity, var3447=r0, var3773=org.apache.lucene.search.similarities.LMSimilarity$CollectionModel, var3553=$r1, var3272=r2, var2326=null_type, var371=java.util.Locale, var3655=$r4, var1593=java.lang.Object, var919=$r3, var2526=$r5, var2859=$r6}
; {org.apache.lucene.search.similarities.LMSimilarity=var2594, r0=var3447, org.apache.lucene.search.similarities.LMSimilarity$CollectionModel=var3773, $r1=var3553, r2=var3272, null_type=var2326, java.util.Locale=var371, $r4=var3655, java.lang.Object=var1593, $r3=var919, $r5=var2526, $r6=var2859}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.search.similarities.LMSimilarity;	$r1 = r0.<org.apache.lucene.search.similarities.LMSimilarity: org.apache.lucene.search.similarities.LMSimilarity$CollectionModel collectionModel>;	r2 = interfaceinvoke $r1.<org.apache.lucene.search.similarities.LMSimilarity$CollectionModel: java.lang.String getName()>();	if r2 == null goto $r4 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = newarray (java.lang.Object)[1];	$r5 = virtualinvoke r0.<org.apache.lucene.search.similarities.LMSimilarity: java.lang.String getName()>();	$r3[0] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, "LM %s", $r3);	return $r6
;block_num 2