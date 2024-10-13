(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1930 0)
(declare-sort var61 0)
(declare-sort var1431 0)
(declare-sort var978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/2142337893 (var1930) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun upto/2142337893 (var1930) Int)
(declare-fun var1431_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var978-init () var978)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-fun <init>/1495607482 (var978 String Int) void)
(declare-const null-var1930 var1930)
(declare-const null-String String)
(declare-const var1790 var1930) ; Statement: r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var1790 null-var1930)))
(declare-const var3231 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3231 null-String)))
(define-const var1599 String (input/2142337893 var1790)) ; Statement: $r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var3149 Int (length/-134980193 var1599)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1332 Int (upto/2142337893 var1790)) ; Statement: $i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var3950 Int (+ var1332 1)) ; Statement: $i1 = $i0 + 1 
(define-const var1706 Int (var1431_min/-1112089438 var3149 var3950)) ; Statement: i3 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1) 
(define-const var3382 Int (upto/2142337893 var1790)) ; Statement: $i4 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
 ; Statement: if $i4 >= 50 goto $r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert (>= var3382 50)) ; Cond: $i4 >= 50 
(define-const var2677 String (input/2142337893 var1790)) ; Statement: $r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(define-const var1108 Int (upto/2142337893 var1790)) ; Statement: $i5 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var225 Int (- var1108 50)) ; Statement: $i6 = $i5 - 50 
(assert (and true (and (>= var225 0) (>= (str.len var2677) var1706) (>= var1706 var225))))
(define-const var1087 String (substring/-1240304868 var2677 var225 var1706)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i6, i3) 
(define-const var2593 String (str.++ "...\u0001" var1087)) ; Statement: r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("...\u0001") 
(assert true) ; Non Conditional
(define-const var1702 var978 var978-init) ; Statement: $r4 = new java.text.ParseException 
(define-const var442 Int (upto/2142337893 var1790)) ; Statement: $i7 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var603 String (str.++ "\u0001 at character offset \u0001; fragment leading to this:\n\u0001" var3231 (cast-from-Int-to-String var442) var2593)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,java.lang.String)>(r5, $i7, r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001 at character offset \u0001; fragment leading to this:\n\u0001") 
(define-const var1773 Int (upto/2142337893 var1790)) ; Statement: $i8 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(assert true)
;(assert (<init>/1495607482 var1702 var603 var1773)) ; Statement: specialinvoke $r4.<java.text.ParseException: void <init>(java.lang.String,int)>($r6, $i8) 

(declare-const var1702!1 var978)
(declare-const var603!1 String)
(declare-const var1773!1 Int)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int), upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), var1431_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var978-init=([], java.text.ParseException), cast-from-Int-to-String=([int], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var1930=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var1790=r0, var3231=r5, var61=null_type, var1599=$r1, var3149=$i2, var1332=$i0, var3950=$i1, var1431=java.lang.Math, var1706=i3, var3382=$i4, var2677=$r2, var1108=$i5, var225=$i6, var1087=$r3, var2593=r8, var978=java.text.ParseException, var1702=$r4, var442=$i7, var603=$r6, var1773=$i8}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var1930, r0=var1790, r5=var3231, null_type=var61, $r1=var1599, $i2=var3149, $i0=var1332, $i1=var3950, java.lang.Math=var1431, i3=var1706, $i4=var3382, $r2=var2677, $i5=var1108, $i6=var225, $r3=var1087, r8=var2593, java.text.ParseException=var978, $r4=var1702, $i7=var442, $r6=var603, $i8=var1773}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i2 = virtualinvoke $r1.<java.lang.String: int length()>();	$i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$i1 = $i0 + 1;	i3 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1);	$i4 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	if $i4 >= 50 goto $r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i5 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$i6 = $i5 - 50;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>($i6, i3);	r8 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("...\u0001");	$r4 = new java.text.ParseException;	$i7 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,java.lang.String)>(r5, $i7, r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001 at character offset \u0001; fragment leading to this:\n\u0001");	$i8 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	specialinvoke $r4.<java.text.ParseException: void <init>(java.lang.String,int)>($r6, $i8);	return $r4
;block_num 3