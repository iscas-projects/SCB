(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1181 0)
(declare-sort var710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1181 var1181)
(declare-const null-String String)
(declare-const var1108 var1181) ; Statement: r1 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var1108 null-var1181)))
(declare-const var3637 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3637 null-String)))
(assert true)
(define-const var1105 Bool (isEmpty/-1285796103 var3637)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var1105 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1884 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1181=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var1108=r1, var3637=r0, var710=null_type, var1105=$z0, var1884=$z3}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var1181, r1=var1108, r0=var3637, null_type=var710, $z0=var1105, $z3=var1884}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3