(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3087 0)
(declare-sort var3733 0)
(declare-sort var2328 0)
(declare-sort var1916 0)
(declare-sort var3717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3733) ClassObject)
(declare-fun cast-from-var3087-to-var3733 (var3087) var3733)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var2328) String)
(declare-fun cast-from-var3087-to-var2328 (var3087) var2328)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var2328) var3733)
(declare-fun cast-from-var3733-to-var1916 (var3733) var1916)
(declare-fun bytes/727234302 (var1916) (Array Int Int))
(declare-fun var3087_toString/871857449 ((Array Int Int) Int) String)
(declare-fun type/835448125 (var2328) var3717)
(declare-fun var3717_pointDimensionCount/2066917553 (var3717) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3087 var3087)
(declare-const var2363 var3087) ; Statement: r1 := @this: org.apache.lucene.document.LongRange 
(assert (not (= var2363 null-var3087)))
(define-const var1809 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1809)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1809!1 String)
(assert (= var1809!1 ""))
(assert true)
(define-const var1753 ClassObject (getClass/1258963082 (cast-from-var3087-to-var3733 var2363))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1190 String (getSimpleName/-390194377 var1753)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var1809!1 var1190)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1809!2 String)
(assert (= var1809!2 (str.++ var1809!1 var1190)))
(assert true)
;(assert (append/672562846 var1809!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var1809!3 String)
(assert (= var1809!3 (str.++ var1809!2 " <")))
(define-const var3370 String (name/835448125 (cast-from-var3087-to-var2328 var2363))) ; Statement: $r4 = r1.<org.apache.lucene.document.LongRange: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1809!3 var3370)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1809!4 String)
(assert (= var1809!4 (str.++ var1809!3 var3370)))
(assert true)
;(assert (append/-1166366385 var1809!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1809!5 String)
(assert (str.prefixof var1809!4 var1809!5))
(define-const var2023 var3733 (fieldsData/835448125 (cast-from-var3087-to-var2328 var2363))) ; Statement: $r5 = r1.<org.apache.lucene.document.LongRange: java.lang.Object fieldsData> 
(define-const var938 var1916 (cast-from-var3733-to-var1916 var2023)) ; Statement: $r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var3361 (Array Int Int) (bytes/727234302 var938)) ; Statement: r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes> 
;(assert (var3087_toString/871857449 var3361 0)) ; Statement: staticinvoke <org.apache.lucene.document.LongRange: java.lang.String toString(byte[],int)>(r7, 0) 

(declare-const var3361!1 (Array Int Int))
(declare-const var3816 Int)
(define-const var1206 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3861 var3717 (type/835448125 (cast-from-var3087-to-var2328 var2363))) ; Statement: $r8 = r1.<org.apache.lucene.document.LongRange: org.apache.lucene.index.IndexableFieldType type> 
(define-const var3304 Int (var3717_pointDimensionCount/2066917553 var3861)) ; Statement: $i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
(define-const var1339 Int (div var3304 2)) ; Statement: $i1 = $i0 / 2 
 ; Statement: if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var1206 var1339)) ; Cond: i2 >= $i1 
(assert true)
;(assert (append/-1166366385 var1809!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1809!6 String)
(assert (str.prefixof var1809!5 var1809!6))
(assert true)
(define-const var2657 String (toString/-2075883882 var1809!6)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3087-to-var3733=([org.apache.lucene.document.LongRange], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var3087-to-var2328=([org.apache.lucene.document.LongRange], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var3733-to-var1916=([java.lang.Object], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var3087_toString/871857449=([byte[], int], java.lang.String), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var3717_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3087=org.apache.lucene.document.LongRange, var2363=r1, var1809=$r0, var3733=java.lang.Object, var1753=$r2, var1190=$r3, var2328=org.apache.lucene.document.Field, var3370=$r4, var2023=$r5, var1916=org.apache.lucene.util.BytesRef, var938=$r6, var3361=r7, var3816=0, var1206=i2, var3717=org.apache.lucene.index.IndexableFieldType, var3861=$r8, var3304=$i0, var1339=$i1, var2657=$r9}
; {org.apache.lucene.document.LongRange=var3087, r1=var2363, $r0=var1809, java.lang.Object=var3733, $r2=var1753, $r3=var1190, org.apache.lucene.document.Field=var2328, $r4=var3370, $r5=var2023, org.apache.lucene.util.BytesRef=var1916, $r6=var938, r7=var3361, 0=var3816, i2=var1206, org.apache.lucene.index.IndexableFieldType=var3717, $r8=var3861, $i0=var3304, $i1=var1339, $r9=var2657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.apache.lucene.document.LongRange: java.lang.String toString(byte[],int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LongRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.LongRange: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.LongRange: java.lang.Object fieldsData>;	$r6 = (org.apache.lucene.util.BytesRef) $r5;	r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes>;	staticinvoke <org.apache.lucene.document.LongRange: java.lang.String toString(byte[],int)>(r7, 0);	i2 = 0;	$r8 = r1.<org.apache.lucene.document.LongRange: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	$i1 = $i0 / 2;	if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3