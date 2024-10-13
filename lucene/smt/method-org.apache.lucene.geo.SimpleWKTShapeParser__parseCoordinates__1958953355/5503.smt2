(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1007 0)
(declare-sort var3709 0)
(declare-sort var3007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3007_isNumberNext/-1429064083 (var1007) Bool)
(declare-fun var3007_parseCoordinate/968511972 (var1007 var3709 var3709) void)
(declare-fun var3007_nextCloserOrComma/1176041017 (var1007) String)
(declare-const null-var1007 var1007)
(declare-const null-var3709 var3709)
(declare-const var170 var1007) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var170 null-var1007)))
(declare-const var42 var3709) ; Statement: r1 := @parameter1: java.util.ArrayList 
(assert (not (= var42 null-var3709)))
(declare-const var1944 var3709) ; Statement: r2 := @parameter2: java.util.ArrayList 
(assert (not (= var1944 null-var3709)))
(define-const var816 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var919 Bool (var3007_isNumberNext/-1429064083 var170)) ; Statement: $z0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: boolean isNumberNext(java.io.StreamTokenizer)>(r0) 
 ; Statement: if $z0 != 0 goto staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinate(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, r1, r2) 
(assert (not (= (ite var919 1 0) 0))) ; Cond: $z0 != 0 
;(assert (var3007_parseCoordinate/968511972 var170 var42 var1944)) ; Statement: staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinate(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, r1, r2) 

(declare-const var170!1 var1007)
(declare-const var42!1 var3709)
(declare-const var1944!1 var3709)
(assert true) ; Non Conditional
(define-const var123 String (var3007_nextCloserOrComma/1176041017 var170!1)) ; Statement: $r13 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloserOrComma(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var3115 Bool (= var123 ",")) ; Statement: $z7 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(",") 
 ; Statement: if $z7 == 0 goto (branch) 
(assert (= (ite var3115 1 0) 0)) ; Cond: $z7 == 0 
 ; Statement: if z6 == 0 goto return 
(assert (= (ite var816 1 0) 0)) ; Cond: z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3007_isNumberNext/-1429064083=([java.io.StreamTokenizer], boolean), var3007_parseCoordinate/968511972=([java.io.StreamTokenizer, java.util.ArrayList, java.util.ArrayList], void), var3007_nextCloserOrComma/1176041017=([java.io.StreamTokenizer], java.lang.String)}
; {var1007=java.io.StreamTokenizer, var170=r0, var3709=java.util.ArrayList, var42=r1, var1944=r2, var816=z6, var3007=org.apache.lucene.geo.SimpleWKTShapeParser, var919=$z0, var123=$r13, var3115=$z7}
; {java.io.StreamTokenizer=var1007, r0=var170, java.util.ArrayList=var3709, r1=var42, r2=var1944, z6=var816, org.apache.lucene.geo.SimpleWKTShapeParser=var3007, $z0=var919, $r13=var123, $z7=var3115}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 := @parameter1: java.util.ArrayList;	r2 := @parameter2: java.util.ArrayList;	z6 = 0;	$z0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: boolean isNumberNext(java.io.StreamTokenizer)>(r0);	if $z0 != 0 goto staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinate(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, r1, r2);	staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: void parseCoordinate(java.io.StreamTokenizer,java.util.ArrayList,java.util.ArrayList)>(r0, r1, r2);	$r13 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextCloserOrComma(java.io.StreamTokenizer)>(r0);	$z7 = virtualinvoke $r13.<java.lang.String: boolean equals(java.lang.Object)>(",");	if $z7 == 0 goto (branch);	if z6 == 0 goto return;	return
;block_num 5