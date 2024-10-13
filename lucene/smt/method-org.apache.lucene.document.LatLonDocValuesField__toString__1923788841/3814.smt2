(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var372 0)
(declare-sort var2445 0)
(declare-sort var3520 0)
(declare-sort var3135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2445) ClassObject)
(declare-fun cast-from-var372-to-var2445 (var372) var2445)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var3520) String)
(declare-fun cast-from-var372-to-var3520 (var372) var3520)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var3520) var2445)
(declare-fun cast-from-var2445-to-Int (var2445) Int)
(declare-fun longValue/1313863450 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3135_decodeLatitude/1529670819 (Int) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun var3135_decodeLongitude/5395728 (Int) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var372 var372)
(declare-const var3300 var372) ; Statement: r1 := @this: org.apache.lucene.document.LatLonDocValuesField 
(assert (not (= var3300 null-var372)))
(define-const var1354 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1354)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1354!1 String)
(assert (= var1354!1 ""))
(assert true)
(define-const var2724 ClassObject (getClass/1258963082 (cast-from-var372-to-var2445 var3300))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1813 String (getSimpleName/-390194377 var2724)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var1354!1 var1813)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1354!2 String)
(assert (= var1354!2 (str.++ var1354!1 var1813)))
(assert true)
;(assert (append/672562846 var1354!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var1354!3 String)
(assert (= var1354!3 (str.++ var1354!2 " <")))
(define-const var1072 String (name/835448125 (cast-from-var372-to-var3520 var3300))) ; Statement: $r4 = r1.<org.apache.lucene.document.LatLonDocValuesField: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1354!3 var1072)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1354!4 String)
(assert (= var1354!4 (str.++ var1354!3 var1072)))
(assert true)
;(assert (append/-1166366385 var1354!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1354!5 String)
(assert (str.prefixof var1354!4 var1354!5))
(define-const var3663 var2445 (fieldsData/835448125 (cast-from-var372-to-var3520 var3300))) ; Statement: $r5 = r1.<org.apache.lucene.document.LatLonDocValuesField: java.lang.Object fieldsData> 
(define-const var1453 Int (cast-from-var2445-to-Int var3663)) ; Statement: $r6 = (java.lang.Long) $r5 
(assert true)
(define-const var3548 Int (longValue/1313863450 var1453)) ; Statement: l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>() 
(define-const var1465 Int (div var3548 (to_int (^ 2 32)))) ; Statement: $l1 = l0 >> 32 
(define-const var2479 Int (cast-from-Int-to-Int var1465)) ; Statement: $i2 = (int) $l1 
(define-const var1774 Float64 (var3135_decodeLatitude/1529670819 var2479)) ; Statement: $d0 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLatitude(int)>($i2) 
(assert true)
;(assert (append/33611274 var1354!5 var1774)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var1354!6 String)
(assert (str.prefixof var1354!5 var1354!6))
(assert true)
;(assert (append/-1166366385 var1354!6 44)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var1354!7 String)
(assert (str.prefixof var1354!6 var1354!7))
(define-const var3097 Int (bv2nat (bvand ((_ int2bv 64) var3548) ((_ int2bv 64) (- 1))))) ; Statement: $l3 = l0 & -1L 
(define-const var2265 Int (cast-from-Int-to-Int var3097)) ; Statement: $i4 = (int) $l3 
(define-const var3921 Float64 (var3135_decodeLongitude/5395728 var2265)) ; Statement: $d1 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLongitude(int)>($i4) 
(assert true)
;(assert (append/33611274 var1354!7 var3921)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var1354!8 String)
(assert (str.prefixof var1354!7 var1354!8))
(assert true)
;(assert (append/-1166366385 var1354!8 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1354!9 String)
(assert (str.prefixof var1354!8 var1354!9))
(assert true)
(define-const var2360 String (toString/-2075883882 var1354!9)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var372-to-var2445=([org.apache.lucene.document.LatLonDocValuesField], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var372-to-var3520=([org.apache.lucene.document.LatLonDocValuesField], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var2445-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long), cast-from-Int-to-Int=([long], int), var3135_decodeLatitude/1529670819=([int], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), var3135_decodeLongitude/5395728=([int], double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var372=org.apache.lucene.document.LatLonDocValuesField, var3300=r1, var1354=$r0, var2445=java.lang.Object, var2724=$r2, var1813=$r3, var3520=org.apache.lucene.document.Field, var1072=$r4, var3663=$r5, var1453=$r6, var3548=l0, var1465=$l1, var2479=$i2, var3135=org.apache.lucene.geo.GeoEncodingUtils, var1774=$d0, var3097=$l3, var2265=$i4, var3921=$d1, var2360=$r7}
; {org.apache.lucene.document.LatLonDocValuesField=var372, r1=var3300, $r0=var1354, java.lang.Object=var2445, $r2=var2724, $r3=var1813, org.apache.lucene.document.Field=var3520, $r4=var1072, $r5=var3663, $r6=var1453, l0=var3548, $l1=var1465, $i2=var2479, org.apache.lucene.geo.GeoEncodingUtils=var3135, $d0=var1774, $l3=var3097, $i4=var2265, $d1=var3921, $r7=var2360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LatLonDocValuesField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.LatLonDocValuesField: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.LatLonDocValuesField: java.lang.Object fieldsData>;	$r6 = (java.lang.Long) $r5;	l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>();	$l1 = l0 >> 32;	$i2 = (int) $l1;	$d0 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLatitude(int)>($i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$l3 = l0 & -1L;	$i4 = (int) $l3;	$d1 = staticinvoke <org.apache.lucene.geo.GeoEncodingUtils: double decodeLongitude(int)>($i4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1