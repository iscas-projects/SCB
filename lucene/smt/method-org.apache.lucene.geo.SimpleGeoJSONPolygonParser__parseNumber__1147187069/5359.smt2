(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1617 0)
(declare-sort var2172 0)
(declare-sort var1041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun upto/2142337893 (var1617) Int)
(declare-fun input/2142337893 (var1617) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun newParseException/-1382180882 (var1617 String) var1041)
(declare-const null-var1617 var1617)
(declare-const null-var2172 var2172)
(declare-const var1084 var1617) ; Statement: r1 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var1084 null-var1617)))
(define-const var3348 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3348)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3348!1 String)
(assert (= var3348!1 ""))
(define-const var927 Int (upto/2142337893 var1084)) ; Statement: i0 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(assert true) ; Non Conditional
(define-const var1559 Int (upto/2142337893 var1084)) ; Statement: $i1 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var3639 String (input/2142337893 var1084)) ; Statement: $r2 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var1368 Int (length/-134980193 var3639)) ; Statement: $i2 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= $i2 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var1559 var1368))) ; Negate: Cond: $i1 >= $i2  
(declare-const var793 var2172) ; Statement: $r6 := @caughtexception 
(assert (not (= var793 null-var2172)))
(declare-const var1084!1 var1617)
(assert (not (= var1084!1 null-var1617)))
(assert (= (upto/2142337893 var1084!1) var927)) ; Statement: r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> = i0 
(assert true)
(define-const var266 var1041 (newParseException/-1382180882 var1084!1 "could not parse number as double")) ; Statement: $r7 = virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("could not parse number as double") 
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int), newParseException/-1382180882=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, java.lang.String], java.text.ParseException)}
; {var1617=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var1084=r1, var3348=$r8, var927=i0, var1559=$i1, var3639=$r2, var1368=$i2, var2172=java.lang.NumberFormatException, var793=$r6, var1041=java.text.ParseException, var266=$r7}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var1617, r1=var1084, $r8=var3348, i0=var927, $i1=var1559, $r2=var3639, $i2=var1368, java.lang.NumberFormatException=var2172, $r6=var793, java.text.ParseException=var1041, $r7=var266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	i0 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$i1 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r2 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i2 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i1 >= $i2 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 := @caughtexception;	r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> = i0;	$r7 = virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("could not parse number as double");	throw $r7
;block_num 3