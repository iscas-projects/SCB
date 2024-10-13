(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2854 0)
(declare-sort var2518 0)
(declare-sort var3391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun upto/2142337893 (var2854) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun input/2142337893 (var2854) String)
(declare-fun newParseException/-1382180882 (var2854 String) var3391)
(declare-const null-var2854 var2854)
(declare-const null-String String)
(declare-const var1363 var2854) ; Statement: r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var1363 null-var2854)))
(declare-const var2259 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2259 null-String)))
(define-const var3047 Int (upto/2142337893 var1363)) ; Statement: $i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(assert true)
(define-const var3307 Int (length/-134980193 var2259)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1560 Int (+ var3047 var3307)) ; Statement: $i3 = $i0 + $i1 
(define-const var592 String (input/2142337893 var1363)) ; Statement: $r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var1574 Int (length/-134980193 var592)) ; Statement: $i2 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= $i2 goto $r3 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert (not (<= var1560 var1574))) ; Negate: Cond: $i3 <= $i2  
(define-const var1091 String (str.++ "expected \u0022\u0001\u0022 but hit EOF" var2259)) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected \"\u0001\" but hit EOF") 
(assert true)
(define-const var1210 var3391 (newParseException/-1382180882 var1363 var1091)) ; Statement: $r8 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>($r7) 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), length/-134980193=([java.lang.String], int), input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), newParseException/-1382180882=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, java.lang.String], java.text.ParseException)}
; {var2854=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var1363=r0, var2259=r1, var2518=null_type, var3047=$i0, var3307=$i1, var1560=$i3, var592=$r2, var1574=$i2, var1091=$r7, var3391=java.text.ParseException, var1210=$r8}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var2854, r0=var1363, r1=var2259, null_type=var2518, $i0=var3047, $i1=var3307, $i3=var1560, $r2=var592, $i2=var1574, $r7=var1091, java.text.ParseException=var3391, $r8=var1210}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	r1 := @parameter0: java.lang.String;	$i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i0 + $i1;	$r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i2 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i3 <= $i2 goto $r3 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected \"\u0001\" but hit EOF");	$r8 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>($r7);	throw $r8
;block_num 2