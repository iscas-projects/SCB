(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1341 0)
(declare-sort var2670 0)
(declare-sort var1694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1694_isNumberNext/-1429064083 (var1341) Bool)
(declare-fun var1694_nextWord/-947882919 (var1341) String)
(declare-fun var1694_nextCloserOrComma/1176041017 (var1341) String)
(declare-const null-var1341 var1341)
(declare-const null-var2670 var2670)
(declare-const var3486 var1341) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var3486 null-var1341)))
(declare-const var427 var2670) ; Statement: r1 := @parameter1: java.util.ArrayList 
(assert (not (= var427 null-var2670)))
(declare-const var3732 var2670) ; Statement: r2 := @parameter2: java.util.ArrayList 
(assert (not (= var3732 null-var2670)))
(define-const var3830 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1466 Bool (var1694_isNumberNext/-1429064083 var3486)) ; Statement: $z0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: boolean isNumberNext(java.io.StreamTokenizer)>(r0) 
 ; Statement: if $z0 != 0 goto staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinate(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, r1, r2) 
(assert (not (not (= (ite var1466 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3871 String (var1694_nextWord/-947882919 var3486)) ; Statement: $r12 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var394 Bool (= var3871 "(")) ; Statement: $z5 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>("(") 
(define-const var3830!1 Bool var394) ; Statement: z6 = $z5 
 ; Statement: if $z5 == 0 goto $r13 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloserOrComma(java.io.StreamTokenizer)>(r0) 
(assert (= (ite var394 1 0) 0)) ; Cond: $z5 == 0 
(define-const var1671 String (var1694_nextCloserOrComma/1176041017 var3486)) ; Statement: $r13 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloserOrComma(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var1236 Bool (= var1671 ",")) ; Statement: $z7 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(",") 
 ; Statement: if $z7 == 0 goto (branch) 
(assert (= (ite var1236 1 0) 0)) ; Cond: $z7 == 0 
 ; Statement: if z6 == 0 goto return 
(assert (= (ite var3830!1 1 0) 0)) ; Cond: z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1694_isNumberNext/-1429064083=([java.io.StreamTokenizer], boolean), var1694_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String), var1694_nextCloserOrComma/1176041017=([java.io.StreamTokenizer], java.lang.String)}
; {var1341=java.io.StreamTokenizer, var3486=r0, var2670=java.util.ArrayList, var427=r1, var3732=r2, var3830=z6, var1694=org.apache.lucene.geo.SimpleWKTShapeParser, var1466=$z0, var3871=$r12, var394=$z5, var1671=$r13, var1236=$z7}
; {java.io.StreamTokenizer=var1341, r0=var3486, java.util.ArrayList=var2670, r1=var427, r2=var3732, z6=var3830, org.apache.lucene.geo.SimpleWKTShapeParser=var1694, $z0=var1466, $r12=var3871, $z5=var394, $r13=var1671, $z7=var1236}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 := @parameter1: java.util.ArrayList;	r2 := @parameter2: java.util.ArrayList;	z6 = 0;	$z0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: boolean isNumberNext(java.io.StreamTokenizer)>(r0);	if $z0 != 0 goto staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinate(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, r1, r2);	$r12 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z5 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>("(");	z6 = $z5;	if $z5 == 0 goto $r13 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloserOrComma(java.io.StreamTokenizer)>(r0);	$r13 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloserOrComma(java.io.StreamTokenizer)>(r0);	$z7 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(",");	if $z7 == 0 goto (branch);	if z6 == 0 goto return;	return
;block_num 5