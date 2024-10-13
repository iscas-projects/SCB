(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2790 0)
(declare-sort var1467 0)
(declare-sort var502 0)
(declare-sort var3598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var502-init () var502)
(declare-fun <init>/-325640736 (var502) void)
(declare-fun scan/1235240977 (var2790 Int) void)
(declare-fun upto/2142337893 (var2790) Int)
(declare-fun input/2142337893 (var2790) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun newParseException/-1382180882 (var2790 String) var3598)
(declare-const null-var2790 var2790)
(declare-const null-String String)
(declare-const var3415 var2790) ; Statement: r1 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var3415 null-var2790)))
(declare-const var3912 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3912 null-String)))
(define-const var554 var502 var502-init) ; Statement: $r14 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var554)) ; Statement: specialinvoke $r14.<java.util.ArrayList: void <init>()>() 

(declare-const var554!1 var502)
(assert true)
;(assert (scan/1235240977 var3415 91)) ; Statement: virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: void scan(char)>(91) 

(declare-const var3415!1 var2790)
(declare-const var1927 Int)
(assert true) ; Non Conditional
(define-const var2659 Int (upto/2142337893 var3415!1)) ; Statement: $i0 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var2229 String (input/2142337893 var3415!1)) ; Statement: $r2 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var3702 Int (length/-134980193 var2229)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $r3 = virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF while reading array") 
(assert (>= var2659 var3702)) ; Cond: $i0 >= $i1 
(assert true)
(define-const var1572 var3598 (newParseException/-1382180882 var3415!1 "hit EOF while reading array")) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF while reading array") 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var502-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), scan/1235240977=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, char], void), upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int), newParseException/-1382180882=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, java.lang.String], java.text.ParseException)}
; {var2790=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var3415=r1, var3912=r6, var1467=null_type, var502=java.util.ArrayList, var554=$r14, var1927=91, var2659=$i0, var2229=$r2, var3702=$i1, var3598=java.text.ParseException, var1572=$r3}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var2790, r1=var3415, r6=var3912, null_type=var1467, java.util.ArrayList=var502, $r14=var554, 91=var1927, $i0=var2659, $r2=var2229, $i1=var3702, java.text.ParseException=var3598, $r3=var1572}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	r6 := @parameter0: java.lang.String;	$r14 = new java.util.ArrayList;	specialinvoke $r14.<java.util.ArrayList: void <init>()>();	virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: void scan(char)>(91);	$i0 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r2 = r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 >= $i1 goto $r3 = virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF while reading array");	$r3 = virtualinvoke r1.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>("hit EOF while reading array");	throw $r3
;block_num 3