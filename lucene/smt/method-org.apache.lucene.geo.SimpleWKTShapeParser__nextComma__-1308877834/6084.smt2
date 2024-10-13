(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1840 0)
(declare-sort var3523 0)
(declare-sort var2007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3523_nextWord/-947882919 (var1840) String)
(declare-fun var2007-init () var2007)
(declare-fun var3523_tokenString/1629423294 (var1840) String)
(declare-fun lineno/-895092174 (var1840) Int)
(declare-fun <init>/1495607482 (var2007 String Int) void)
(declare-const null-var1840 var1840)
(declare-const var1956 var1840) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1956 null-var1840)))
(define-const var3315 String (var3523_nextWord/-947882919 var1956)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2923 Bool (= var3315 ",")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(",") 
 ; Statement: if $z0 != 1 goto $r2 = new java.text.ParseException 
(assert (not (= (ite var2923 1 0) 1))) ; Cond: $z0 != 1 
(define-const var1548 var2007 var2007-init) ; Statement: $r2 = new java.text.ParseException 
(define-const var1969 String (var3523_tokenString/1629423294 var1956)) ; Statement: $r3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String tokenString(java.io.StreamTokenizer)>(r0) 
(define-const var1110 String (str.++ "expected , but found: \u0001" var1969)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected , but found: \u0001") 
(assert true)
(define-const var2428 Int (lineno/-895092174 var1956)) ; Statement: $i0 = virtualinvoke r0.<java.io.StreamTokenizer: int lineno()>() 
(assert true)
;(assert (<init>/1495607482 var1548 var1110 var2428)) ; Statement: specialinvoke $r2.<java.text.ParseException: void <init>(java.lang.String,int)>($r4, $i0) 

(declare-const var1548!1 var2007)
(declare-const var1110!1 String)
(declare-const var2428!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3523_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String), var2007-init=([], java.text.ParseException), var3523_tokenString/1629423294=([java.io.StreamTokenizer], java.lang.String), lineno/-895092174=([java.io.StreamTokenizer], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var1840=java.io.StreamTokenizer, var1956=r0, var3523=org.apache.lucene.geo.SimpleWKTShapeParser, var3315=$r1, var2923=$z0, var2007=java.text.ParseException, var1548=$r2, var1969=$r3, var1110=$r4, var2428=$i0}
; {java.io.StreamTokenizer=var1840, r0=var1956, org.apache.lucene.geo.SimpleWKTShapeParser=var3523, $r1=var3315, $z0=var2923, java.text.ParseException=var2007, $r2=var1548, $r3=var1969, $r4=var1110, $i0=var2428}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(",");	if $z0 != 1 goto $r2 = new java.text.ParseException;	$r2 = new java.text.ParseException;	$r3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String tokenString(java.io.StreamTokenizer)>(r0);	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected , but found: \u0001");	$i0 = virtualinvoke r0.<java.io.StreamTokenizer: int lineno()>();	specialinvoke $r2.<java.text.ParseException: void <init>(java.lang.String,int)>($r4, $i0);	throw $r2
;block_num 2