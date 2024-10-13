(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3899 0)
(declare-sort var644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun upto/2142337893 (var3899) Int)
(declare-fun input/2142337893 (var3899) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-Int-to-String (Int) String)
(declare-fun newParseException/-1382180882 (var3899 String) var644)
(declare-const null-var3899 var3899)
(declare-const null-Int Int)
(declare-const var2723 var3899) ; Statement: r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var2723 null-var3899)))
(declare-const var450 Int) ; Statement: c2 := @parameter0: char 
(assert (not (= var450 null-Int)))
(assert true) ; Non Conditional
(define-const var3330 Int (upto/2142337893 var2723)) ; Statement: $i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var1193 String (input/2142337893 var2723)) ; Statement: $r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var2754 Int (length/-134980193 var1193)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= $i1 goto $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char)>(c2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected \'\u0001\' but got EOF") 
(assert (>= var3330 var2754)) ; Cond: $i0 >= $i1 
(define-const var186 String (str.++ "expected \u0027\u0001\u0027 but got EOF" (cast-from-Int-to-String var450))) ; Statement: $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char)>(c2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected \'\u0001\' but got EOF") 
(assert true)
(define-const var1374 var644 (newParseException/-1382180882 var2723 var186)) ; Statement: $r3 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>($r2) 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-String=([char], java.lang.String), newParseException/-1382180882=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser, java.lang.String], java.text.ParseException)}
; {var3899=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var2723=r0, var450=c2, var3330=$i0, var1193=$r1, var2754=$i1, var186=$r2, var644=java.text.ParseException, var1374=$r3}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var3899, r0=var2723, c2=var450, $i0=var3330, $r1=var1193, $i1=var2754, $r2=var186, java.text.ParseException=var644, $r3=var1374}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	c2 := @parameter0: char;	$i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 >= $i1 goto $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char)>(c2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected \'\u0001\' but got EOF");	$r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char)>(c2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("expected \'\u0001\' but got EOF");	$r3 = virtualinvoke r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.text.ParseException newParseException(java.lang.String)>($r2);	throw $r3
;block_num 3