(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2363 0)
(declare-sort var1672 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun query/-1155275691 (var2363) var2521)
(declare-fun toString/2128869141 (var2521 String) String)
(declare-fun boost/-1155275691 (var2363) Float32)
(declare-fun append/991902413 (String Float32) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2363 var2363)
(declare-const null-String String)
(declare-const var3101 var2363) ; Statement: r1 := @this: org.apache.lucene.search.BoostQuery 
(assert (not (= var3101 null-var2363)))
(declare-const var3590 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3590 null-String)))
(define-const var474 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var474)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var474!1 String)
(assert (= var474!1 ""))
(assert true)
;(assert (append/672562846 var474!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var474!2 String)
(assert (= var474!2 (str.++ var474!1 "(")))
(define-const var909 var2521 (query/-1155275691 var3101)) ; Statement: $r3 = r1.<org.apache.lucene.search.BoostQuery: org.apache.lucene.search.Query query> 
(assert true)
(define-const var3546 String (toString/2128869141 var909 var3590)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.lucene.search.Query: java.lang.String toString(java.lang.String)>(r2) 
(assert true)
;(assert (append/672562846 var474!2 var3546)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var474!3 String)
(assert (= var474!3 (str.++ var474!2 var3546)))
(assert true)
;(assert (append/672562846 var474!3 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var474!4 String)
(assert (= var474!4 (str.++ var474!3 ")")))
(assert true)
;(assert (append/672562846 var474!4 "^")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^") 
(declare-const var474!5 String)
(assert (= var474!5 (str.++ var474!4 "^")))
(define-const var195 Float32 (boost/-1155275691 var3101)) ; Statement: $f0 = r1.<org.apache.lucene.search.BoostQuery: float boost> 
(assert true)
;(assert (append/991902413 var474!5 var195)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var474!6 String)
(assert (str.prefixof var474!5 var474!6))
(assert true)
(define-const var2851 String (toString/-2075883882 var474!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), query/-1155275691=([org.apache.lucene.search.BoostQuery], org.apache.lucene.search.Query), toString/2128869141=([org.apache.lucene.search.Query, java.lang.String], java.lang.String), boost/-1155275691=([org.apache.lucene.search.BoostQuery], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2363=org.apache.lucene.search.BoostQuery, var3101=r1, var3590=r2, var1672=null_type, var474=$r0, var2521=org.apache.lucene.search.Query, var909=$r3, var3546=$r4, var195=$f0, var2851=$r5}
; {org.apache.lucene.search.BoostQuery=var2363, r1=var3101, r2=var3590, null_type=var1672, $r0=var474, org.apache.lucene.search.Query=var2521, $r3=var909, $r4=var3546, $f0=var195, $r5=var2851}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.lucene.search.Query: java.lang.String toString(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.BoostQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.lucene.search.BoostQuery: org.apache.lucene.search.Query query>;	$r4 = virtualinvoke $r3.<org.apache.lucene.search.Query: java.lang.String toString(java.lang.String)>(r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^");	$f0 = r1.<org.apache.lucene.search.BoostQuery: float boost>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1