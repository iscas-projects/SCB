(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3245 0)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun upto/2142337893 (var3245) Int)
(declare-fun input/2142337893 (var3245) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun newParseException/-1382180882 (var3245 String) var3701)
(declare-const null-var3245 var3245)
(declare-const var3323 var3245) ; Statement: r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var3323 null-var3245)))
(assert true) ; Non Conditional
(define-const var1838 Int (upto/2142337893 var3323)) ; Statement: $i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var1295 String (input/2142337893 var3323)) ; Statement: $r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var884 Int (length/-134980193 var1295)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $r2 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("unexpected EOF") 
(assert (>= var1838 var884)) ; Cond: $i0 >= $i1 
(assert true)
(define-const var476 var3701 (newParseException/-1382180882 var3323 "unexpected EOF")) ; Statement: $r2 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("unexpected EOF") 
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int), newParseException/-1382180882=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, java.lang.String], java.text.ParseException)}
; {var3245=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var3323=r0, var1838=$i0, var1295=$r1, var884=$i1, var3701=java.text.ParseException, var476=$r2}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var3245, r0=var3323, $i0=var1838, $r1=var1295, $i1=var884, java.text.ParseException=var3701, $r2=var476}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	$i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $r2 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("unexpected EOF");	$r2 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("unexpected EOF");	throw $r2
;block_num 3