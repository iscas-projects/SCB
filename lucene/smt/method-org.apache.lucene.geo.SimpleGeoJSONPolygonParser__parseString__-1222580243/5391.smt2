(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1937 0)
(declare-sort var1192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun scan/1235240977 (var1937 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun upto/2142337893 (var1937) Int)
(declare-fun input/2142337893 (var1937) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun newParseException/-1382180882 (var1937 String) var1192)
(declare-const null-var1937 var1937)
(declare-const var3476 var1937) ; Statement: r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var3476 null-var1937)))
(assert true)
;(assert (scan/1235240977 var3476 34)) ; Statement: virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: void scan(char)>(34) 

(declare-const var3476!1 var1937)
(declare-const var594 Int)
(define-const var69 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var69)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var69!1 String)
(assert (= var69!1 ""))
(assert true) ; Non Conditional
(define-const var3107 Int (upto/2142337893 var3476!1)) ; Statement: $i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var1058 String (input/2142337893 var3476!1)) ; Statement: $r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var3962 Int (length/-134980193 var1058)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $r3 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF inside string literal") 
(assert (>= var3107 var3962)) ; Cond: $i0 >= $i1 
(assert true)
(define-const var456 var1192 (newParseException/-1382180882 var3476!1 "hit EOF inside string literal")) ; Statement: $r3 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF inside string literal") 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {scan/1235240977=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, char], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int), newParseException/-1382180882=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, java.lang.String], java.text.ParseException)}
; {var1937=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var3476=r0, var594=34, var69=$r15, var3107=$i0, var1058=$r2, var3962=$i1, var1192=java.text.ParseException, var456=$r3}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var1937, r0=var3476, 34=var594, $r15=var69, $i0=var3107, $r2=var1058, $i1=var3962, java.text.ParseException=var1192, $r3=var456}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: void scan(char)>(34);	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 >= $i1 goto $r3 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF inside string literal");	$r3 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF inside string literal");	throw $r3
;block_num 3