(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var825 0)
(declare-sort var3196 0)
(declare-sort var3459 0)
(declare-sort var3467 0)
(declare-sort var2938 0)
(declare-sort var3473 0)
(declare-sort var2417 0)
(declare-sort var2974 0)
(declare-sort var1427 0)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3196_nextEmptyOrOpen/751675547 (var825) String)
(declare-fun var3459-init () var3459)
(declare-fun <init>/-325640736 (var3459) void)
(declare-fun var3196_parseCoordinates/1958953355 (var825 var3459 var3459) void)
(declare-fun var3467-init () var3467)
(declare-fun stream/-1288525013 (var3473) var2938)
(declare-fun cast-from-var3459-to-var3473 (var3459) var3473)
(declare-fun var2974_bootstrap$/507868829 () var2417)
(declare-fun var2938_mapToDouble/-1409710570 (var2938 var2417) var1427)
(declare-fun var1427_toArray/286542371 (var1427) (Array Int Float64))
(declare-fun var1324_bootstrap$/-1459251047 () var2417)
(declare-fun <init>/-490129074 (var3467 (Array Int Float64) (Array Int Float64)) void)
(declare-const null-var825 var825)
(declare-const var949 var825) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var949 null-var825)))
(define-const var460 String (var3196_nextEmptyOrOpen/751675547 var949)) ; Statement: r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var756 Bool (= var460 "EMPTY")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto $r2 = new java.util.ArrayList 
(assert (= (ite var756 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3855 var3459 var3459-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3855)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var3855!1 var3459)
(define-const var2100 var3459 var3459-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2100)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var2100!1 var3459)
;(assert (var3196_parseCoordinates/1958953355 var949 var3855!1 var2100!1)) ; Statement: staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinates(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, $r2, $r3) 

(declare-const var949!1 var825)
(declare-const var3855!2 var3459)
(declare-const var2100!2 var3459)
(define-const var2315 var3467 var3467-init) ; Statement: $r4 = new org.apache.lucene.geo.Line 
(assert true)
(define-const var3127 var2938 (stream/-1288525013 (cast-from-var3459-to-var3473 var3855!2))) ; Statement: $r6 = virtualinvoke $r2.<java.util.ArrayList: java.util.stream.Stream stream()>() 
(define-const var3239 var2417 var2974_bootstrap$/507868829) ; Statement: $r5 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_0__50: java.util.function.ToDoubleFunction bootstrap$()>() 
(define-const var3894 var1427 (var2938_mapToDouble/-1409710570 var3127 var3239)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.stream.DoubleStream mapToDouble(java.util.function.ToDoubleFunction)>($r5) 
(define-const var3269 (Array Int Float64) (var1427_toArray/286542371 var3894)) ; Statement: $r12 = interfaceinvoke $r7.<java.util.stream.DoubleStream: double[] toArray()>() 
(assert true)
(define-const var3517 var2938 (stream/-1288525013 (cast-from-var3459-to-var3473 var2100!2))) ; Statement: $r9 = virtualinvoke $r3.<java.util.ArrayList: java.util.stream.Stream stream()>() 
(define-const var276 var2417 var1324_bootstrap$/-1459251047) ; Statement: $r8 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_1__53: java.util.function.ToDoubleFunction bootstrap$()>() 
(define-const var2851 var1427 (var2938_mapToDouble/-1409710570 var3517 var276)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.DoubleStream mapToDouble(java.util.function.ToDoubleFunction)>($r8) 
(define-const var1040 (Array Int Float64) (var1427_toArray/286542371 var2851)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.stream.DoubleStream: double[] toArray()>() 
(assert true)
;(assert (<init>/-490129074 var2315 var3269 var1040)) ; Statement: specialinvoke $r4.<org.apache.lucene.geo.Line: void <init>(double[],double[])>($r12, $r11) 

(declare-const var2315!1 var3467)
(declare-const var3269!1 (Array Int Float64))
(declare-const var1040!1 (Array Int Float64))
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3196_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String), var3459-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var3196_parseCoordinates/1958953355=([java.io.StreamTokenizer, java.util.ArrayList, java.util.ArrayList], void), var3467-init=([], org.apache.lucene.geo.Line), stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var3459-to-var3473=([java.util.ArrayList], java.util.Collection), var2974_bootstrap$/507868829=([], java.util.function.ToDoubleFunction), var2938_mapToDouble/-1409710570=([java.util.stream.Stream, java.util.function.ToDoubleFunction], java.util.stream.DoubleStream), var1427_toArray/286542371=([java.util.stream.DoubleStream], double[]), var1324_bootstrap$/-1459251047=([], java.util.function.ToDoubleFunction), <init>/-490129074=([org.apache.lucene.geo.Line, double[], double[]], void)}
; {var825=java.io.StreamTokenizer, var949=r0, var3196=org.apache.lucene.geo.SimpleWKTShapeParser, var460=r1, var756=$z0, var3459=java.util.ArrayList, var3855=$r2, var2100=$r3, var3467=org.apache.lucene.geo.Line, var2315=$r4, var2938=java.util.stream.Stream, var3473=java.util.Collection, var3127=$r6, var2417=java.util.function.ToDoubleFunction, var2974=org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_0__50, var3239=$r5, var1427=java.util.stream.DoubleStream, var3894=$r7, var3269=$r12, var3517=$r9, var1324=org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_1__53, var276=$r8, var2851=$r10, var1040=$r11}
; {java.io.StreamTokenizer=var825, r0=var949, org.apache.lucene.geo.SimpleWKTShapeParser=var3196, r1=var460, $z0=var756, java.util.ArrayList=var3459, $r2=var3855, $r3=var2100, org.apache.lucene.geo.Line=var3467, $r4=var2315, java.util.stream.Stream=var2938, java.util.Collection=var3473, $r6=var3127, java.util.function.ToDoubleFunction=var2417, org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_0__50=var2974, $r5=var3239, java.util.stream.DoubleStream=var1427, $r7=var3894, $r12=var3269, $r9=var3517, org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_1__53=var1324, $r8=var276, $r10=var2851, $r11=var1040}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto $r2 = new java.util.ArrayList;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinates(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, $r2, $r3);	$r4 = new org.apache.lucene.geo.Line;	$r6 = virtualinvoke $r2.<java.util.ArrayList: java.util.stream.Stream stream()>();	$r5 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_0__50: java.util.function.ToDoubleFunction bootstrap$()>();	$r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.stream.DoubleStream mapToDouble(java.util.function.ToDoubleFunction)>($r5);	$r12 = interfaceinvoke $r7.<java.util.stream.DoubleStream: double[] toArray()>();	$r9 = virtualinvoke $r3.<java.util.ArrayList: java.util.stream.Stream stream()>();	$r8 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser$lambda_parseLine_1__53: java.util.function.ToDoubleFunction bootstrap$()>();	$r10 = interfaceinvoke $r9.<java.util.stream.Stream: java.util.stream.DoubleStream mapToDouble(java.util.function.ToDoubleFunction)>($r8);	$r11 = interfaceinvoke $r10.<java.util.stream.DoubleStream: double[] toArray()>();	specialinvoke $r4.<org.apache.lucene.geo.Line: void <init>(double[],double[])>($r12, $r11);	return $r4
;block_num 2