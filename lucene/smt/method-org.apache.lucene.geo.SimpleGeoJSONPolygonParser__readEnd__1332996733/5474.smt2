(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun upto/2142337893 (var3184) Int)
(declare-fun input/2142337893 (var3184) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3184 var3184)
(declare-const var2592 var3184) ; Statement: r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var2592 null-var3184)))
(assert true) ; Non Conditional
(define-const var3866 Int (upto/2142337893 var2592)) ; Statement: $i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var1187 String (input/2142337893 var2592)) ; Statement: $r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var267 Int (length/-134980193 var1187)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto return 
(assert (>= var3866 var267)) ; Cond: $i0 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3184=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var2592=r0, var3866=$i0, var1187=$r1, var267=$i1}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var3184, r0=var2592, $i0=var3866, $r1=var1187, $i1=var267}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	$i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto return;	return
;block_num 3