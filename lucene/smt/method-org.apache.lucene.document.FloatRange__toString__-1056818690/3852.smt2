(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1195 0)
(declare-sort var1201 0)
(declare-sort var3675 0)
(declare-sort var3713 0)
(declare-sort var3661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1201) ClassObject)
(declare-fun cast-from-var1195-to-var1201 (var1195) var1201)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var3675) String)
(declare-fun cast-from-var1195-to-var3675 (var1195) var3675)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var3675) var1201)
(declare-fun cast-from-var1201-to-var3713 (var1201) var3713)
(declare-fun bytes/727234302 (var3713) (Array Int Int))
(declare-fun var1195_toString/981563691 ((Array Int Int) Int) String)
(declare-fun type/835448125 (var3675) var3661)
(declare-fun var3661_pointDimensionCount/2066917553 (var3661) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1195 var1195)
(declare-const var3547 var1195) ; Statement: r1 := @this: org.apache.lucene.document.FloatRange 
(assert (not (= var3547 null-var1195)))
(define-const var3997 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3997)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3997!1 String)
(assert (= var3997!1 ""))
(assert true)
(define-const var2184 ClassObject (getClass/1258963082 (cast-from-var1195-to-var1201 var3547))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1470 String (getSimpleName/-390194377 var2184)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var3997!1 var1470)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3997!2 String)
(assert (= var3997!2 (str.++ var3997!1 var1470)))
(assert true)
;(assert (append/672562846 var3997!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var3997!3 String)
(assert (= var3997!3 (str.++ var3997!2 " <")))
(define-const var1559 String (name/835448125 (cast-from-var1195-to-var3675 var3547))) ; Statement: $r4 = r1.<org.apache.lucene.document.FloatRange: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3997!3 var1559)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3997!4 String)
(assert (= var3997!4 (str.++ var3997!3 var1559)))
(assert true)
;(assert (append/-1166366385 var3997!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3997!5 String)
(assert (str.prefixof var3997!4 var3997!5))
(define-const var3814 var1201 (fieldsData/835448125 (cast-from-var1195-to-var3675 var3547))) ; Statement: $r5 = r1.<org.apache.lucene.document.FloatRange: java.lang.Object fieldsData> 
(define-const var2318 var3713 (cast-from-var1201-to-var3713 var3814)) ; Statement: $r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var3302 (Array Int Int) (bytes/727234302 var2318)) ; Statement: r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes> 
;(assert (var1195_toString/981563691 var3302 0)) ; Statement: staticinvoke <org.apache.lucene.document.FloatRange: java.lang.String toString(byte[],int)>(r7, 0) 

(declare-const var3302!1 (Array Int Int))
(declare-const var2854 Int)
(define-const var3067 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var351 var3661 (type/835448125 (cast-from-var1195-to-var3675 var3547))) ; Statement: $r8 = r1.<org.apache.lucene.document.FloatRange: org.apache.lucene.index.IndexableFieldType type> 
(define-const var502 Int (var3661_pointDimensionCount/2066917553 var351)) ; Statement: $i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
(define-const var392 Int (div var502 2)) ; Statement: $i1 = $i0 / 2 
 ; Statement: if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var3067 var392)) ; Cond: i2 >= $i1 
(assert true)
;(assert (append/-1166366385 var3997!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3997!6 String)
(assert (str.prefixof var3997!5 var3997!6))
(assert true)
(define-const var2653 String (toString/-2075883882 var3997!6)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1195-to-var1201=([org.apache.lucene.document.FloatRange], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var1195-to-var3675=([org.apache.lucene.document.FloatRange], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var1201-to-var3713=([java.lang.Object], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var1195_toString/981563691=([byte[], int], java.lang.String), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var3661_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1195=org.apache.lucene.document.FloatRange, var3547=r1, var3997=$r0, var1201=java.lang.Object, var2184=$r2, var1470=$r3, var3675=org.apache.lucene.document.Field, var1559=$r4, var3814=$r5, var3713=org.apache.lucene.util.BytesRef, var2318=$r6, var3302=r7, var2854=0, var3067=i2, var3661=org.apache.lucene.index.IndexableFieldType, var351=$r8, var502=$i0, var392=$i1, var2653=$r9}
; {org.apache.lucene.document.FloatRange=var1195, r1=var3547, $r0=var3997, java.lang.Object=var1201, $r2=var2184, $r3=var1470, org.apache.lucene.document.Field=var3675, $r4=var1559, $r5=var3814, org.apache.lucene.util.BytesRef=var3713, $r6=var2318, r7=var3302, 0=var2854, i2=var3067, org.apache.lucene.index.IndexableFieldType=var3661, $r8=var351, $i0=var502, $i1=var392, $r9=var2653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.apache.lucene.document.FloatRange: java.lang.String toString(byte[],int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.FloatRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.FloatRange: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.FloatRange: java.lang.Object fieldsData>;	$r6 = (org.apache.lucene.util.BytesRef) $r5;	r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes>;	staticinvoke <org.apache.lucene.document.FloatRange: java.lang.String toString(byte[],int)>(r7, 0);	i2 = 0;	$r8 = r1.<org.apache.lucene.document.FloatRange: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	$i1 = $i0 / 2;	if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3