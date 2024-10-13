(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var131 0)
(declare-sort var1682 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1682_nextWord/-947882919 (var131) String)
(declare-fun var3337-init () var3337)
(declare-fun var1682_tokenString/1629423294 (var131) String)
(declare-fun lineno/-895092174 (var131) Int)
(declare-fun <init>/1495607482 (var3337 String Int) void)
(declare-const null-var131 var131)
(declare-const var2362 var131) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var2362 null-var131)))
(define-const var789 String (var1682_nextWord/-947882919 var2362)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var135 Bool (= var789 ")")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(")") 
 ; Statement: if $z0 == 0 goto $r2 = new java.text.ParseException 
(assert (= (ite var135 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2296 var3337 var3337-init) ; Statement: $r2 = new java.text.ParseException 
(define-const var1971 String (var1682_tokenString/1629423294 var2362)) ; Statement: $r3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String tokenString(java.io.StreamTokenizer)>(r0) 
(define-const var1556 String (str.++ "expected ) but found: \u0001" var1971)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected ) but found: \u0001") 
(assert true)
(define-const var408 Int (lineno/-895092174 var2362)) ; Statement: $i0 = virtualinvoke r0.<java.io.StreamTokenizer: int lineno()>() 
(assert true)
;(assert (<init>/1495607482 var2296 var1556 var408)) ; Statement: specialinvoke $r2.<java.text.ParseException: void <init>(java.lang.String,int)>($r4, $i0) 

(declare-const var2296!1 var3337)
(declare-const var1556!1 String)
(declare-const var408!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1682_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String), var3337-init=([], java.text.ParseException), var1682_tokenString/1629423294=([java.io.StreamTokenizer], java.lang.String), lineno/-895092174=([java.io.StreamTokenizer], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var131=java.io.StreamTokenizer, var2362=r0, var1682=org.apache.lucene.geo.SimpleWKTShapeParser, var789=$r1, var135=$z0, var3337=java.text.ParseException, var2296=$r2, var1971=$r3, var1556=$r4, var408=$i0}
; {java.io.StreamTokenizer=var131, r0=var2362, org.apache.lucene.geo.SimpleWKTShapeParser=var1682, $r1=var789, $z0=var135, java.text.ParseException=var3337, $r2=var2296, $r3=var1971, $r4=var1556, $i0=var408}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(")");	if $z0 == 0 goto $r2 = new java.text.ParseException;	$r2 = new java.text.ParseException;	$r3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String tokenString(java.io.StreamTokenizer)>(r0);	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected ) but found: \u0001");	$i0 = virtualinvoke r0.<java.io.StreamTokenizer: int lineno()>();	specialinvoke $r2.<java.text.ParseException: void <init>(java.lang.String,int)>($r4, $i0);	throw $r2
;block_num 2