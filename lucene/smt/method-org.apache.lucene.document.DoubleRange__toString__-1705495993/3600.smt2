(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2007 0)
(declare-sort var1998 0)
(declare-sort var2512 0)
(declare-sort var3123 0)
(declare-sort var462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1998) ClassObject)
(declare-fun cast-from-var2007-to-var1998 (var2007) var1998)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var2512) String)
(declare-fun cast-from-var2007-to-var2512 (var2007) var2512)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var2512) var1998)
(declare-fun cast-from-var1998-to-var3123 (var1998) var3123)
(declare-fun bytes/727234302 (var3123) (Array Int Int))
(declare-fun var2007_toString/804809268 ((Array Int Int) Int) String)
(declare-fun type/835448125 (var2512) var462)
(declare-fun var462_pointDimensionCount/2066917553 (var462) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2007 var2007)
(declare-const var2641 var2007) ; Statement: r1 := @this: org.apache.lucene.document.DoubleRange 
(assert (not (= var2641 null-var2007)))
(define-const var2909 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2909)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2909!1 String)
(assert (= var2909!1 ""))
(assert true)
(define-const var2862 ClassObject (getClass/1258963082 (cast-from-var2007-to-var1998 var2641))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1265 String (getSimpleName/-390194377 var2862)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var2909!1 var1265)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2909!2 String)
(assert (= var2909!2 (str.++ var2909!1 var1265)))
(assert true)
;(assert (append/672562846 var2909!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var2909!3 String)
(assert (= var2909!3 (str.++ var2909!2 " <")))
(define-const var2850 String (name/835448125 (cast-from-var2007-to-var2512 var2641))) ; Statement: $r4 = r1.<org.apache.lucene.document.DoubleRange: java.lang.String name> 
(assert true)
;(assert (append/672562846 var2909!3 var2850)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2909!4 String)
(assert (= var2909!4 (str.++ var2909!3 var2850)))
(assert true)
;(assert (append/-1166366385 var2909!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2909!5 String)
(assert (str.prefixof var2909!4 var2909!5))
(define-const var1241 var1998 (fieldsData/835448125 (cast-from-var2007-to-var2512 var2641))) ; Statement: $r5 = r1.<org.apache.lucene.document.DoubleRange: java.lang.Object fieldsData> 
(define-const var549 var3123 (cast-from-var1998-to-var3123 var1241)) ; Statement: $r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var638 (Array Int Int) (bytes/727234302 var549)) ; Statement: r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes> 
;(assert (var2007_toString/804809268 var638 0)) ; Statement: staticinvoke <org.apache.lucene.document.DoubleRange: java.lang.String toString(byte[],int)>(r7, 0) 

(declare-const var638!1 (Array Int Int))
(declare-const var1157 Int)
(define-const var1738 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1113 var462 (type/835448125 (cast-from-var2007-to-var2512 var2641))) ; Statement: $r8 = r1.<org.apache.lucene.document.DoubleRange: org.apache.lucene.index.IndexableFieldType type> 
(define-const var2779 Int (var462_pointDimensionCount/2066917553 var1113)) ; Statement: $i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
(define-const var2777 Int (div var2779 2)) ; Statement: $i1 = $i0 / 2 
 ; Statement: if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var1738 var2777)) ; Cond: i2 >= $i1 
(assert true)
;(assert (append/-1166366385 var2909!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var2909!6 String)
(assert (str.prefixof var2909!5 var2909!6))
(assert true)
(define-const var12 String (toString/-2075883882 var2909!6)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2007-to-var1998=([org.apache.lucene.document.DoubleRange], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var2007-to-var2512=([org.apache.lucene.document.DoubleRange], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var1998-to-var3123=([java.lang.Object], org.apache.lucene.util.BytesRef), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), var2007_toString/804809268=([byte[], int], java.lang.String), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var462_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2007=org.apache.lucene.document.DoubleRange, var2641=r1, var2909=$r0, var1998=java.lang.Object, var2862=$r2, var1265=$r3, var2512=org.apache.lucene.document.Field, var2850=$r4, var1241=$r5, var3123=org.apache.lucene.util.BytesRef, var549=$r6, var638=r7, var1157=0, var1738=i2, var462=org.apache.lucene.index.IndexableFieldType, var1113=$r8, var2779=$i0, var2777=$i1, var12=$r9}
; {org.apache.lucene.document.DoubleRange=var2007, r1=var2641, $r0=var2909, java.lang.Object=var1998, $r2=var2862, $r3=var1265, org.apache.lucene.document.Field=var2512, $r4=var2850, $r5=var1241, org.apache.lucene.util.BytesRef=var3123, $r6=var549, r7=var638, 0=var1157, i2=var1738, org.apache.lucene.index.IndexableFieldType=var462, $r8=var1113, $i0=var2779, $i1=var2777, $r9=var12}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.apache.lucene.document.DoubleRange: java.lang.String toString(byte[],int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.DoubleRange;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.DoubleRange: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.DoubleRange: java.lang.Object fieldsData>;	$r6 = (org.apache.lucene.util.BytesRef) $r5;	r7 = $r6.<org.apache.lucene.util.BytesRef: byte[] bytes>;	staticinvoke <org.apache.lucene.document.DoubleRange: java.lang.String toString(byte[],int)>(r7, 0);	i2 = 0;	$r8 = r1.<org.apache.lucene.document.DoubleRange: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r8.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	$i1 = $i0 / 2;	if i2 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3