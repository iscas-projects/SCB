(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2 0)
(declare-sort var3589 0)
(declare-sort var2388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3589_nextWord/-947882919 (var2) String)
(declare-fun var2388-init () var2388)
(declare-fun var3589_tokenString/1629423294 (var2) String)
(declare-fun lineno/-895092174 (var2) Int)
(declare-fun <init>/1495607482 (var2388 String Int) void)
(declare-const null-var2 var2)
(declare-const var1885 var2) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1885 null-var2)))
(define-const var153 String (var3589_nextWord/-947882919 var1885)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var354 Bool (= var153 "(")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("(") 
 ; Statement: if $z0 == 0 goto $r2 = new java.text.ParseException 
(assert (= (ite var354 1 0) 0)) ; Cond: $z0 == 0 
(define-const var671 var2388 var2388-init) ; Statement: $r2 = new java.text.ParseException 
(define-const var2221 String (var3589_tokenString/1629423294 var1885)) ; Statement: $r3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String tokenString(java.io.StreamTokenizer)>(r0) 
(define-const var1879 String (str.++ "expected ( but found: \u0001" var2221)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected ( but found: \u0001") 
(assert true)
(define-const var3263 Int (lineno/-895092174 var1885)) ; Statement: $i0 = virtualinvoke r0.<java.io.StreamTokenizer: int lineno()>() 
(assert true)
;(assert (<init>/1495607482 var671 var1879 var3263)) ; Statement: specialinvoke $r2.<java.text.ParseException: void <init>(java.lang.String,int)>($r4, $i0) 

(declare-const var671!1 var2388)
(declare-const var1879!1 String)
(declare-const var3263!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3589_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String), var2388-init=([], java.text.ParseException), var3589_tokenString/1629423294=([java.io.StreamTokenizer], java.lang.String), lineno/-895092174=([java.io.StreamTokenizer], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var2=java.io.StreamTokenizer, var1885=r0, var3589=org.apache.lucene.geo.SimpleWKTShapeParser, var153=$r1, var354=$z0, var2388=java.text.ParseException, var671=$r2, var2221=$r3, var1879=$r4, var3263=$i0}
; {java.io.StreamTokenizer=var2, r0=var1885, org.apache.lucene.geo.SimpleWKTShapeParser=var3589, $r1=var153, $z0=var354, java.text.ParseException=var2388, $r2=var671, $r3=var2221, $r4=var1879, $i0=var3263}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("(");	if $z0 == 0 goto $r2 = new java.text.ParseException;	$r2 = new java.text.ParseException;	$r3 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String tokenString(java.io.StreamTokenizer)>(r0);	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected ( but found: \u0001");	$i0 = virtualinvoke r0.<java.io.StreamTokenizer: int lineno()>();	specialinvoke $r2.<java.text.ParseException: void <init>(java.lang.String,int)>($r4, $i0);	throw $r2
;block_num 2