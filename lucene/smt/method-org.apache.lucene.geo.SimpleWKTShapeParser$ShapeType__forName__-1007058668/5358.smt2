(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1299 0)
(declare-sort var104 0)
(declare-sort var2233 0)
(declare-sort var3008 0)
(declare-sort var1064 0)
(declare-sort var2836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var104) String)
(declare-fun var2233_get/1088891777 (var2233 var1064) var1064)
(declare-fun cast-from-String-to-var1064 (String) var1064)
(declare-fun cast-from-var1064-to-var3008 (var1064) var3008)
(declare-fun var2836-init () var2836)
(declare-fun <init>/875830710 (var2836 String) void)
(declare-const null-String String)
(declare-const var104-ROOT var104)
(declare-const var3008-shapeTypeMap var2233)
(declare-const null-var3008 var3008)
(declare-const var977 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var977 null-String)))
(define-const var1384 var104 var104-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3261 String (toLowerCase/1946809429 var977 var1384)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var2260 var2233 var3008-shapeTypeMap) ; Statement: $r3 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap> 
(define-const var986 var1064 (var2233_get/1088891777 var2260 (cast-from-String-to-var1064 var3261))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var2866 var3008 (cast-from-var1064-to-var3008 var986)) ; Statement: r5 = (org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType) $r4 
 ; Statement: if r5 == null goto $r6 = new java.lang.IllegalArgumentException 
(assert (= var2866 null-var3008)) ; Cond: r5 == null 
(define-const var607 var2836 var2836-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var931 String (str.++ "unknown geo_shape [\u0001]" var977)) ; Statement: $r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("unknown geo_shape [\u0001]") 
(assert true)
;(assert (<init>/875830710 var607 var931)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var607!1 var2836)
(declare-const var931!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var2233_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1064=([java.lang.String], java.lang.Object), cast-from-var1064-to-var3008=([java.lang.Object], org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType), var2836-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var977=r0, var1299=null_type, var104=java.util.Locale, var1384=$r1, var3261=r2, var2233=java.util.Map, var3008=org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType, var2260=$r3, var1064=java.lang.Object, var986=$r4, var2866=r5, var2836=java.lang.IllegalArgumentException, var607=$r6, var931=$r7}
; {r0=var977, null_type=var1299, java.util.Locale=var104, $r1=var1384, r2=var3261, java.util.Map=var2233, org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType=var3008, $r3=var2260, java.lang.Object=var1064, $r4=var986, r5=var2866, java.lang.IllegalArgumentException=var2836, $r6=var607, $r7=var931}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r5 = (org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType) $r4;	if r5 == null goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("unknown geo_shape [\u0001]");	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 2