(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var331 0)
(declare-sort var1398 0)
(declare-sort var2661 0)
(declare-sort var201 0)
(declare-sort var2567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1398) String)
(declare-fun var2661_get/1088891777 (var2661 var2567) var2567)
(declare-fun cast-from-String-to-var2567 (String) var2567)
(declare-fun cast-from-var2567-to-var201 (var2567) var201)
(declare-const null-String String)
(declare-const var1398-ROOT var1398)
(declare-const var201-shapeTypeMap var2661)
(declare-const null-var201 var201)
(declare-const var3205 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3205 null-String)))
(define-const var171 var1398 var1398-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1858 String (toLowerCase/1946809429 var3205 var171)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var565 var2661 var201-shapeTypeMap) ; Statement: $r3 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap> 
(define-const var3127 var2567 (var2661_get/1088891777 var565 (cast-from-String-to-var2567 var1858))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var0 var201 (cast-from-var2567-to-var201 var3127)) ; Statement: r5 = (org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType) $r4 
 ; Statement: if r5 == null goto $r6 = new java.lang.IllegalArgumentException 
(assert (not (= var0 null-var201))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var2661_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2567=([java.lang.String], java.lang.Object), cast-from-var2567-to-var201=([java.lang.Object], org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType)}
; {var3205=r0, var331=null_type, var1398=java.util.Locale, var171=$r1, var1858=r2, var2661=java.util.Map, var201=org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType, var565=$r3, var2567=java.lang.Object, var3127=$r4, var0=r5}
; {r0=var3205, null_type=var331, java.util.Locale=var1398, $r1=var171, r2=var1858, java.util.Map=var2661, org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType=var201, $r3=var565, java.lang.Object=var2567, $r4=var3127, r5=var0}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r5 = (org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType) $r4;	if r5 == null goto $r6 = new java.lang.IllegalArgumentException;	return r5
;block_num 2