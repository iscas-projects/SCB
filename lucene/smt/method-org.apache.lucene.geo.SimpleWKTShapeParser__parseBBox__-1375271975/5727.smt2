(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var310 0)
(declare-sort var324 0)
(declare-sort var3254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var324_nextEmptyOrOpen/751675547 (var310) String)
(declare-fun var324_nextNumber/956283756 (var310) Float64)
(declare-fun var324_nextComma/-1308877834 (var310) String)
(declare-fun var324_nextCloser/1551881481 (var310) String)
(declare-fun var3254-init () var3254)
(declare-fun <init>/655947153 (var3254 Float64 Float64 Float64 Float64) void)
(declare-const null-var310 var310)
(declare-const var1779 var310) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1779 null-var310)))
(define-const var2777 String (var324_nextEmptyOrOpen/751675547 var1779)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2539 Bool (= var2777 "EMPTY")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto d0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0) 
(assert (= (ite var2539 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2536 Float64 (var324_nextNumber/956283756 var1779)) ; Statement: d0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0) 
;(assert (var324_nextComma/-1308877834 var1779)) ; Statement: staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextComma(java.io.StreamTokenizer)>(r0) 

(declare-const var1779!1 var310)
(define-const var414 Float64 (var324_nextNumber/956283756 var1779!1)) ; Statement: d1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0) 
;(assert (var324_nextComma/-1308877834 var1779!1)) ; Statement: staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextComma(java.io.StreamTokenizer)>(r0) 

(declare-const var1779!2 var310)
(define-const var2388 Float64 (var324_nextNumber/956283756 var1779!2)) ; Statement: d2 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0) 
;(assert (var324_nextComma/-1308877834 var1779!2)) ; Statement: staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextComma(java.io.StreamTokenizer)>(r0) 

(declare-const var1779!3 var310)
(define-const var2821 Float64 (var324_nextNumber/956283756 var1779!3)) ; Statement: d3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0) 
;(assert (var324_nextCloser/1551881481 var1779!3)) ; Statement: staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloser(java.io.StreamTokenizer)>(r0) 

(declare-const var1779!4 var310)
(define-const var2861 var3254 var3254-init) ; Statement: $r2 = new org.apache.lucene.geo.Rectangle 
(assert true)
;(assert (<init>/655947153 var2861 var2821 var2388 var2536 var414)) ; Statement: specialinvoke $r2.<org.apache.lucene.geo.Rectangle: void <init>(double,double,double,double)>(d3, d2, d0, d1) 

(declare-const var2861!1 var3254)
(declare-const var2821!1 Float64)
(declare-const var2388!1 Float64)
(declare-const var2536!1 Float64)
(declare-const var414!1 Float64)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var324_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String), var324_nextNumber/956283756=([java.io.StreamTokenizer], double), var324_nextComma/-1308877834=([java.io.StreamTokenizer], java.lang.String), var324_nextCloser/1551881481=([java.io.StreamTokenizer], java.lang.String), var3254-init=([], org.apache.lucene.geo.Rectangle), <init>/655947153=([org.apache.lucene.geo.Rectangle, double, double, double, double], void)}
; {var310=java.io.StreamTokenizer, var1779=r0, var324=org.apache.lucene.geo.SimpleWKTShapeParser, var2777=$r1, var2539=$z0, var2536=d0, var414=d1, var2388=d2, var2821=d3, var3254=org.apache.lucene.geo.Rectangle, var2861=$r2}
; {java.io.StreamTokenizer=var310, r0=var1779, org.apache.lucene.geo.SimpleWKTShapeParser=var324, $r1=var2777, $z0=var2539, d0=var2536, d1=var414, d2=var2388, d3=var2821, org.apache.lucene.geo.Rectangle=var3254, $r2=var2861}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto d0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0);	d0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0);	staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextComma(java.io.StreamTokenizer)>(r0);	d1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0);	staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextComma(java.io.StreamTokenizer)>(r0);	d2 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0);	staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextComma(java.io.StreamTokenizer)>(r0);	d3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0);	staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloser(java.io.StreamTokenizer)>(r0);	$r2 = new org.apache.lucene.geo.Rectangle;	specialinvoke $r2.<org.apache.lucene.geo.Rectangle: void <init>(double,double,double,double)>(d3, d2, d0, d1);	return $r2
;block_num 2