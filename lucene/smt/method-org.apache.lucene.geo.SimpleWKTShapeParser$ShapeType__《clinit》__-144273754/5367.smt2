(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3765 0)
(declare-sort var3157 0)
(declare-sort var393 0)
(declare-sort var3414 0)
(declare-sort var471 0)
(declare-sort var3468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3765-init () var3765)
(declare-fun <init>/-2130824746 (var3765 String Int String) void)
(declare-fun arr-var3765-init () (Array Int var3765))
(declare-fun var3157-init () var3157)
(declare-fun <init>/-201242697 (var3157) void)
(declare-fun var3765_values/1844631703 () (Array Int var3765))
(declare-fun getLength-Arr-var3765-1 ((Array Int var3765)) Int)
(declare-fun wktName/2044193647 (var3765) String)
(declare-fun toLowerCase/1946809429 (String var393) String)
(declare-fun var3414_put/1464166817 (var3414 var471 var471) var471)
(declare-fun cast-from-var3157-to-var3414 (var3157) var3414)
(declare-fun cast-from-String-to-var471 (String) var471)
(declare-fun cast-from-var3765-to-var471 (var3765) var471)
(declare-fun var3468_unmodifiableMap/-1864031675 (var3414) var3414)
(declare-const var3765-POINT var3765)
(declare-const null-__Array__Int__var3765__ (Array Int var3765))
(declare-const var3765-MULTIPOINT var3765)
(declare-const var3765-LINESTRING var3765)
(declare-const var3765-MULTILINESTRING var3765)
(declare-const var3765-POLYGON var3765)
(declare-const var3765-MULTIPOLYGON var3765)
(declare-const var3765-GEOMETRYCOLLECTION var3765)
(declare-const var3765-ENVELOPE var3765)
(declare-const var393-ROOT var393)
(define-const var2114 var3765 var3765-init) ; Statement: $r0 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var2114 "POINT" 0 "point")) ; Statement: specialinvoke $r0.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("POINT", 0, "point") 

(declare-const var2114!1 var3765)
(declare-const var2006 String)
(declare-const var3518 Int)
(declare-const var748 String)
(define-const var423 var3765 var2114!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POINT> = $r0 
(define-const var3886 var3765 var3765-init) ; Statement: $r1 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var3886 "MULTIPOINT" 1 "multipoint")) ; Statement: specialinvoke $r1.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("MULTIPOINT", 1, "multipoint") 

(declare-const var3886!1 var3765)
(declare-const var3888 String)
(declare-const var1919 Int)
(declare-const var716 String)
(define-const var1451 var3765 var3886!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOINT> = $r1 
(define-const var2096 var3765 var3765-init) ; Statement: $r2 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var2096 "LINESTRING" 2 "linestring")) ; Statement: specialinvoke $r2.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("LINESTRING", 2, "linestring") 

(declare-const var2096!1 var3765)
(declare-const var262 String)
(declare-const var2797 Int)
(declare-const var2313 String)
(define-const var3668 var3765 var2096!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType LINESTRING> = $r2 
(define-const var424 var3765 var3765-init) ; Statement: $r3 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var424 "MULTILINESTRING" 3 "multilinestring")) ; Statement: specialinvoke $r3.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("MULTILINESTRING", 3, "multilinestring") 

(declare-const var424!1 var3765)
(declare-const var344 String)
(declare-const var3842 Int)
(declare-const var2579 String)
(define-const var3020 var3765 var424!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTILINESTRING> = $r3 
(define-const var566 var3765 var3765-init) ; Statement: $r4 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var566 "POLYGON" 4 "polygon")) ; Statement: specialinvoke $r4.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("POLYGON", 4, "polygon") 

(declare-const var566!1 var3765)
(declare-const var1175 String)
(declare-const var913 Int)
(declare-const var1204 String)
(define-const var1447 var3765 var566!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POLYGON> = $r4 
(define-const var1925 var3765 var3765-init) ; Statement: $r5 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var1925 "MULTIPOLYGON" 5 "multipolygon")) ; Statement: specialinvoke $r5.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("MULTIPOLYGON", 5, "multipolygon") 

(declare-const var1925!1 var3765)
(declare-const var2056 String)
(declare-const var3183 Int)
(declare-const var3217 String)
(define-const var1776 var3765 var1925!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOLYGON> = $r5 
(define-const var3057 var3765 var3765-init) ; Statement: $r6 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var3057 "GEOMETRYCOLLECTION" 6 "geometrycollection")) ; Statement: specialinvoke $r6.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("GEOMETRYCOLLECTION", 6, "geometrycollection") 

(declare-const var3057!1 var3765)
(declare-const var3422 String)
(declare-const var3952 Int)
(declare-const var828 String)
(define-const var100 var3765 var3057!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType GEOMETRYCOLLECTION> = $r6 
(define-const var530 var3765 var3765-init) ; Statement: $r7 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType 
(assert true)
;(assert (<init>/-2130824746 var530 "ENVELOPE" 7 "envelope")) ; Statement: specialinvoke $r7.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("ENVELOPE", 7, "envelope") 

(declare-const var530!1 var3765)
(declare-const var1561 String)
(declare-const var2317 Int)
(declare-const var2480 String)
(define-const var1142 var3765 var530!1) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE> = $r7 
(define-const var3960 (Array Int var3765) arr-var3765-init) ; Statement: $r8 = newarray (org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType)[8] 
(define-const var1271 var3765 var3765-POINT) ; Statement: $r9 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POINT> 
(declare-const var3960!1 (Array Int var3765))
(assert (not (= var3960!1 null-__Array__Int__var3765__)))
(assert (= (select var3960!1 0) var1271)) ; Statement: $r8[0] = $r9 
(define-const var1020 var3765 var3765-MULTIPOINT) ; Statement: $r10 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOINT> 
(declare-const var3960!2 (Array Int var3765))
(assert (not (= var3960!2 null-__Array__Int__var3765__)))
(assert (= (select var3960!2 1) var1020)) ; Statement: $r8[1] = $r10 
(define-const var617 var3765 var3765-LINESTRING) ; Statement: $r11 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType LINESTRING> 
(declare-const var3960!3 (Array Int var3765))
(assert (not (= var3960!3 null-__Array__Int__var3765__)))
(assert (= (select var3960!3 2) var617)) ; Statement: $r8[2] = $r11 
(define-const var3822 var3765 var3765-MULTILINESTRING) ; Statement: $r12 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTILINESTRING> 
(declare-const var3960!4 (Array Int var3765))
(assert (not (= var3960!4 null-__Array__Int__var3765__)))
(assert (= (select var3960!4 3) var3822)) ; Statement: $r8[3] = $r12 
(define-const var679 var3765 var3765-POLYGON) ; Statement: $r13 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POLYGON> 
(declare-const var3960!5 (Array Int var3765))
(assert (not (= var3960!5 null-__Array__Int__var3765__)))
(assert (= (select var3960!5 4) var679)) ; Statement: $r8[4] = $r13 
(define-const var586 var3765 var3765-MULTIPOLYGON) ; Statement: $r14 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOLYGON> 
(declare-const var3960!6 (Array Int var3765))
(assert (not (= var3960!6 null-__Array__Int__var3765__)))
(assert (= (select var3960!6 5) var586)) ; Statement: $r8[5] = $r14 
(define-const var922 var3765 var3765-GEOMETRYCOLLECTION) ; Statement: $r15 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType GEOMETRYCOLLECTION> 
(declare-const var3960!7 (Array Int var3765))
(assert (not (= var3960!7 null-__Array__Int__var3765__)))
(assert (= (select var3960!7 6) var922)) ; Statement: $r8[6] = $r15 
(define-const var81 var3765 var3765-ENVELOPE) ; Statement: $r16 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE> 
(declare-const var3960!8 (Array Int var3765))
(assert (not (= var3960!8 null-__Array__Int__var3765__)))
(assert (= (select var3960!8 7) var81)) ; Statement: $r8[7] = $r16 
(define-const var2918 (Array Int var3765) var3960!8) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[] $VALUES> = $r8 
(define-const var1863 var3157 var3157-init) ; Statement: $r17 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1863)) ; Statement: specialinvoke $r17.<java.util.HashMap: void <init>()>() 

(declare-const var1863!1 var3157)
(define-const var1207 (Array Int var3765) var3765_values/1844631703) ; Statement: r18 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[] values()>() 
(define-const var2476 Int (getLength-Arr-var3765-1 var1207)) ; Statement: i0 = lengthof r18 
(define-const var1847 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r19 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE> 
(assert (>= var1847 var2476)) ; Cond: i1 >= i0 
(define-const var3587 var3765 var3765-ENVELOPE) ; Statement: $r19 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE> 
(assert true)
(define-const var1325 String (wktName/2044193647 var3587)) ; Statement: $r21 = virtualinvoke $r19.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.lang.String wktName()>() 
(define-const var1350 var393 var393-ROOT) ; Statement: $r20 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2337 String (toLowerCase/1946809429 var1325 var1350)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r20) 
(define-const var3326 var3765 var3765-ENVELOPE) ; Statement: $r22 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE> 
;(assert (var3414_put/1464166817 (cast-from-var3157-to-var3414 var1863!1) (cast-from-String-to-var471 var2337) (cast-from-var3765-to-var471 var3326))) ; Statement: interfaceinvoke $r17.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, $r22) 

(declare-const var1863!2 var3157)
(declare-const var2337!1 String)
(declare-const var3326!1 var3765)
(define-const var1413 var3414 (var3468_unmodifiableMap/-1864031675 (cast-from-var3157-to-var3414 var1863!2))) ; Statement: $r24 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r17) 
(define-const var1474 var3414 var1413) ; Statement: <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap> = $r24 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3765-init=([], org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType), <init>/-2130824746=([org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType, java.lang.String, int, java.lang.String], void), arr-var3765-init=([], org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[]), var3157-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var3765_values/1844631703=([], org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[]), getLength-Arr-var3765-1=([org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[]], int), wktName/2044193647=([org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3414_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3157-to-var3414=([java.util.HashMap], java.util.Map), cast-from-String-to-var471=([java.lang.String], java.lang.Object), cast-from-var3765-to-var471=([org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType], java.lang.Object), var3468_unmodifiableMap/-1864031675=([java.util.Map], java.util.Map)}
; {var3765=org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType, var2114=$r0, var2006="POINT", var3518=0, var748="point", var423=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POINT>, var3886=$r1, var3888="MULTIPOINT", var1919=1, var716="multipoint", var1451=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOINT>, var2096=$r2, var262="LINESTRING", var2797=2, var2313="linestring", var3668=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType LINESTRING>, var424=$r3, var344="MULTILINESTRING", var3842=3, var2579="multilinestring", var3020=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTILINESTRING>, var566=$r4, var1175="POLYGON", var913=4, var1204="polygon", var1447=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POLYGON>, var1925=$r5, var2056="MULTIPOLYGON", var3183=5, var3217="multipolygon", var1776=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOLYGON>, var3057=$r6, var3422="GEOMETRYCOLLECTION", var3952=6, var828="geometrycollection", var100=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType GEOMETRYCOLLECTION>, var530=$r7, var1561="ENVELOPE", var2317=7, var2480="envelope", var1142=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE>, var3960=$r8, var1271=$r9, var1020=$r10, var617=$r11, var3822=$r12, var679=$r13, var586=$r14, var922=$r15, var81=$r16, var2918=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[] $VALUES>, var3157=java.util.HashMap, var1863=$r17, var1207=r18, var2476=i0, var1847=i1, var3587=$r19, var1325=$r21, var393=java.util.Locale, var1350=$r20, var2337=$r23, var3326=$r22, var3414=java.util.Map, var471=java.lang.Object, var3468=java.util.Collections, var1413=$r24, var1474=<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap>}
; {org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType=var3765, $r0=var2114, "POINT"=var2006, 0=var3518, "point"=var748, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POINT>=var423, $r1=var3886, "MULTIPOINT"=var3888, 1=var1919, "multipoint"=var716, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOINT>=var1451, $r2=var2096, "LINESTRING"=var262, 2=var2797, "linestring"=var2313, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType LINESTRING>=var3668, $r3=var424, "MULTILINESTRING"=var344, 3=var3842, "multilinestring"=var2579, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTILINESTRING>=var3020, $r4=var566, "POLYGON"=var1175, 4=var913, "polygon"=var1204, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POLYGON>=var1447, $r5=var1925, "MULTIPOLYGON"=var2056, 5=var3183, "multipolygon"=var3217, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOLYGON>=var1776, $r6=var3057, "GEOMETRYCOLLECTION"=var3422, 6=var3952, "geometrycollection"=var828, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType GEOMETRYCOLLECTION>=var100, $r7=var530, "ENVELOPE"=var1561, 7=var2317, "envelope"=var2480, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE>=var1142, $r8=var3960, $r9=var1271, $r10=var1020, $r11=var617, $r12=var3822, $r13=var679, $r14=var586, $r15=var922, $r16=var81, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[] $VALUES>=var2918, java.util.HashMap=var3157, $r17=var1863, r18=var1207, i0=var2476, i1=var1847, $r19=var3587, $r21=var1325, java.util.Locale=var393, $r20=var1350, $r23=var2337, $r22=var3326, java.util.Map=var3414, java.lang.Object=var471, java.util.Collections=var3468, $r24=var1413, <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap>=var1474}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts $r0 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r0.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("POINT", 0, "point");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POINT> = $r0;	$r1 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r1.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("MULTIPOINT", 1, "multipoint");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOINT> = $r1;	$r2 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r2.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("LINESTRING", 2, "linestring");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType LINESTRING> = $r2;	$r3 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r3.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("MULTILINESTRING", 3, "multilinestring");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTILINESTRING> = $r3;	$r4 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r4.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("POLYGON", 4, "polygon");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POLYGON> = $r4;	$r5 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r5.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("MULTIPOLYGON", 5, "multipolygon");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOLYGON> = $r5;	$r6 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r6.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("GEOMETRYCOLLECTION", 6, "geometrycollection");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType GEOMETRYCOLLECTION> = $r6;	$r7 = new org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType;	specialinvoke $r7.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: void <init>(java.lang.String,int,java.lang.String)>("ENVELOPE", 7, "envelope");	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE> = $r7;	$r8 = newarray (org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType)[8];	$r9 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POINT>;	$r8[0] = $r9;	$r10 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOINT>;	$r8[1] = $r10;	$r11 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType LINESTRING>;	$r8[2] = $r11;	$r12 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTILINESTRING>;	$r8[3] = $r12;	$r13 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType POLYGON>;	$r8[4] = $r13;	$r14 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType MULTIPOLYGON>;	$r8[5] = $r14;	$r15 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType GEOMETRYCOLLECTION>;	$r8[6] = $r15;	$r16 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE>;	$r8[7] = $r16;	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[] $VALUES> = $r8;	$r17 = new java.util.HashMap;	specialinvoke $r17.<java.util.HashMap: void <init>()>();	r18 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType[] values()>();	i0 = lengthof r18;	i1 = 0;	if i1 >= i0 goto $r19 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE>;	$r19 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE>;	$r21 = virtualinvoke $r19.<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.lang.String wktName()>();	$r20 = <java.util.Locale: java.util.Locale ROOT>;	$r23 = virtualinvoke $r21.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r20);	$r22 = <org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType ENVELOPE>;	interfaceinvoke $r17.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, $r22);	$r24 = staticinvoke <java.util.Collections: java.util.Map unmodifiableMap(java.util.Map)>($r17);	<org.apache.lucene.geo.SimpleWKTShapeParser$ShapeType: java.util.Map shapeTypeMap> = $r24;	return
;block_num 3