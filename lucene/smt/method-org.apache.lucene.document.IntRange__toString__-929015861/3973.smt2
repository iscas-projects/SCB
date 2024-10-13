(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1366 0)
(declare-sort var1847 0)
(declare-sort var3724 0)
(declare-sort var1082 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1847) ClassObject)
(declare-fun cast-from-var1366-to-var1847 (var1366) var1847)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var3724) String)
(declare-fun cast-from-var1366-to-var3724 (var1366) var3724)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var3724) var1847)
(declare-fun cast-from-var1847-to-var1082 (var1847) var1082)
(declare-fun bytes/727234302 (var1082) (Array Int Int))
(declare-fun var1366_toString/-134055240 ((Array Int Int) Int) String)
(declare-fun type/835448125 (var3724) var3154)
(declare-fun var3154_pointDimensionCount/2066917553 (var3154) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1366 var1366)
(declare-const var3862 var1366) ; Statement: r1 := @this: org.apache.lucene.document.IntRange 
(assert (not (= var3862 null-var1366)))
(define-const var1577 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1577)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1577!1 String)
(assert (= var1577!1 ""))
(assert true)
(define-const var265 ClassObject (getClass/1258963082 (cast-from-var1366-to-var1847 var3862))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2108 String (getSimpleName/-390194377 var265)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var1577!1 var2108)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1577!2 String)
(assert (= var1577!2 (str.++ var1577!1 var2108)))
(assert true)
;(assert (append/672562846 var1577!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var1577!3 String)
(assert (= var1577!3 (str.++ var1577!2 " <")))
(define-const var1304 String (name/835448125 (cast-from-var1366-to-var3724 var3862))) ; Statement: $r4 = r1.<org.apache.lucene.document.IntRange: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1577!3 var1304)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1577!4 String)
(assert (= var1577!4 (str.++ var1577!3 var1304)))
(assert true)
;(assert (append/-1166366385 var1577!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1577!5 String)
(assert (str.prefixof var1577!4 var1577!5))
(define-const var506 var1847 (fieldsData/835448125 (cast-from-var1366-to-var3724 var3862))) ; Statement: $r5 = r1.<org.apache.lucene.document.IntRange: java.lang.Object fieldsData> 
(define-const var2632 var1082 (cast-from-var1847-to-var1082 var506)) ; Statement: $r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var3344 (Array Int Int) (bytes/727234302 var2632)) ; Statement: r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes> 
;(assert (var1366_toString/-134055240 var3344 0)) ; Statement: staticinvoke <org.apache.lucene.document.IntRange: java.lang.String toString(byte[],int)>(r7, 0) 

(declare-const var3344!1 (Array Int Int))
(declare-const var2908 Int)
(define-const var95 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2153 var3154 (type/835448125 (cast-from-var1366-to-var3724 var3862))) ; Statement: $r8 = r1.<org.apache.lucene.document.IntRange: org.apache.lucene.index.IndexableFieldType type> 
(define-const var3048 Int (var3154_pointDimensionCount/2066917553 var2153)) ; Statement: $i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
(define-const var1317 Int (div var3048 2)) ; Statement: $i1 = $i0 / 2 
 ; Statement: if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var95 var1317)) ; Cond: i2 >= $i1 
(assert true)
;(assert (append/-1166366385 var1577!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1577!6 String)
(assert (str.prefixof var1577!5 var1577!6))
(assert true)
(define-const var488 String (toString/-2075883882 var1577!6)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1366-to-var1847=([org.apache.lucene.document.IntRange], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var1366-to-var3724=([org.apache.lucene.document.IntRange], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var1847-to-var1082=([java.lang.Object], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var1366_toString/-134055240=([byte[], int], java.lang.String), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var3154_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1366=org.apache.lucene.document.IntRange, var3862=r1, var1577=$r0, var1847=java.lang.Object, var265=$r2, var2108=$r3, var3724=org.apache.lucene.document.Field, var1304=$r4, var506=$r5, var1082=org.apache.lucene.util.BytesRef, var2632=$r6, var3344=r7, var2908=0, var95=i2, var3154=org.apache.lucene.index.IndexableFieldType, var2153=$r8, var3048=$i0, var1317=$i1, var488=$r9}
; {org.apache.lucene.document.IntRange=var1366, r1=var3862, $r0=var1577, java.lang.Object=var1847, $r2=var265, $r3=var2108, org.apache.lucene.document.Field=var3724, $r4=var1304, $r5=var506, org.apache.lucene.util.BytesRef=var1082, $r6=var2632, r7=var3344, 0=var2908, i2=var95, org.apache.lucene.index.IndexableFieldType=var3154, $r8=var2153, $i0=var3048, $i1=var1317, $r9=var488}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.apache.lucene.document.IntRange: java.lang.String toString(byte[],int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.IntRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.IntRange: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.IntRange: java.lang.Object fieldsData>;	$r6 = (org.apache.lucene.util.BytesRef) $r5;	r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes>;	staticinvoke <org.apache.lucene.document.IntRange: java.lang.String toString(byte[],int)>(r7, 0);	i2 = 0;	$r8 = r1.<org.apache.lucene.document.IntRange: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	$i1 = $i0 / 2;	if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3