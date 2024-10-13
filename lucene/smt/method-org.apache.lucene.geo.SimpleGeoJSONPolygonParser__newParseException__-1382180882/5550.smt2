(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3249 0)
(declare-sort var3596 0)
(declare-sort var3069 0)
(declare-sort var3926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/2142337893 (var3249) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun upto/2142337893 (var3249) Int)
(declare-fun var3069_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3926-init () var3926)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-fun <init>/1495607482 (var3926 String Int) void)
(declare-const null-var3249 var3249)
(declare-const null-String String)
(declare-const var2151 var3249) ; Statement: r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser 
(assert (not (= var2151 null-var3249)))
(declare-const var1286 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1286 null-String)))
(define-const var2450 String (input/2142337893 var2151)) ; Statement: $r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert true)
(define-const var31 Int (length/-134980193 var2450)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var882 Int (upto/2142337893 var2151)) ; Statement: $i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var57 Int (+ var882 1)) ; Statement: $i1 = $i0 + 1 
(define-const var3082 Int (var3069_min/-1112089438 var31 var57)) ; Statement: i3 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1) 
(define-const var3338 Int (upto/2142337893 var2151)) ; Statement: $i4 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
 ; Statement: if $i4 >= 50 goto $r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert (not (>= var3338 50))) ; Negate: Cond: $i4 >= 50  
(define-const var1583 String (input/2142337893 var2151)) ; Statement: $r7 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input> 
(assert (and true (and (>= 0 0) (>= (str.len var1583) var3082) (>= var3082 0))))
(define-const var963 String (substring/-1240304868 var1583 0 var3082)) ; Statement: r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int,int)>(0, i3) 
 ; Statement: goto [?= $r4 = new java.text.ParseException] 
(assert true) ; Non Conditional
(define-const var1361 var3926 var3926-init) ; Statement: $r4 = new java.text.ParseException 
(define-const var2893 Int (upto/2142337893 var2151)) ; Statement: $i7 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(define-const var2036 String (str.++ "\u0001 at character offset \u0001; fragment leading to this:\n\u0001" var1286 (cast-from-Int-to-String var2893) var963)) ; Statement: $r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,java.lang.String)>(r5, $i7, r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001 at character offset \u0001; fragment leading to this:\n\u0001") 
(define-const var380 Int (upto/2142337893 var2151)) ; Statement: $i8 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto> 
(assert true)
;(assert (<init>/1495607482 var1361 var2036 var380)) ; Statement: specialinvoke $r4.<java.text.ParseException: void <init>(java.lang.String,int)>($r6, $i8) 

(declare-const var1361!1 var3926)
(declare-const var2036!1 String)
(declare-const var380!1 Int)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {input/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], java.lang.String), length/-134980193=([java.lang.String], int), upto/2142337893=([org.apache.lucene.geo.SimpleGeoJSONPolygonParser], int), var3069_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3926-init=([], java.text.ParseException), cast-from-Int-to-String=([int], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var3249=org.apache.lucene.geo.SimpleGeoJSONPolygonParser, var2151=r0, var1286=r5, var3596=null_type, var2450=$r1, var31=$i2, var882=$i0, var57=$i1, var3069=java.lang.Math, var3082=i3, var3338=$i4, var1583=$r7, var963=r8, var3926=java.text.ParseException, var1361=$r4, var2893=$i7, var2036=$r6, var380=$i8}
; {org.apache.lucene.geo.SimpleGeoJSONPolygonParser=var3249, r0=var2151, r5=var1286, null_type=var3596, $r1=var2450, $i2=var31, $i0=var882, $i1=var57, java.lang.Math=var3069, i3=var3082, $i4=var3338, $r7=var1583, r8=var963, java.text.ParseException=var3926, $r4=var1361, $i7=var2893, $r6=var2036, $i8=var380}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.lucene.geo.SimpleGeoJSONPolygonParser;	r5 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$i2 = virtualinvoke $r1.<java.lang.String: int length()>();	$i0 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$i1 = $i0 + 1;	i3 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1);	$i4 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	if $i4 >= 50 goto $r2 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	$r7 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: java.lang.String input>;	r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int,int)>(0, i3);	goto [?= $r4 = new java.text.ParseException];	$r4 = new java.text.ParseException;	$i7 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	$r6 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,int,java.lang.String)>(r5, $i7, r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001 at character offset \u0001; fragment leading to this:\n\u0001");	$i8 = r0.<org.apache.lucene.geo.SimpleGeoJSONPolygonParser: int upto>;	specialinvoke $r4.<java.text.ParseException: void <init>(java.lang.String,int)>($r6, $i8);	return $r4
;block_num 3