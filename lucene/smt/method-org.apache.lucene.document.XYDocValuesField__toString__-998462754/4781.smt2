(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var401 0)
(declare-sort var3780 0)
(declare-sort var2759 0)
(declare-sort var2323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3780) ClassObject)
(declare-fun cast-from-var401-to-var3780 (var401) var3780)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var2759) String)
(declare-fun cast-from-var401-to-var2759 (var401) var2759)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var2759) var3780)
(declare-fun cast-from-var3780-to-Int (var3780) Int)
(declare-fun longValue/1313863450 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2323_decode/-1380081502 (Int) Float32)
(declare-fun append/991902413 (String Float32) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var401 var401)
(declare-const var2830 var401) ; Statement: r1 := @this: org.apache.lucene.document.XYDocValuesField 
(assert (not (= var2830 null-var401)))
(define-const var1217 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1217)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1217!1 String)
(assert (= var1217!1 ""))
(assert true)
(define-const var16 ClassObject (getClass/1258963082 (cast-from-var401-to-var3780 var2830))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var85 String (getSimpleName/-390194377 var16)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var1217!1 var85)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1217!2 String)
(assert (= var1217!2 (str.++ var1217!1 var85)))
(assert true)
;(assert (append/672562846 var1217!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var1217!3 String)
(assert (= var1217!3 (str.++ var1217!2 " <")))
(define-const var1418 String (name/835448125 (cast-from-var401-to-var2759 var2830))) ; Statement: $r4 = r1.<org.apache.lucene.document.XYDocValuesField: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1217!3 var1418)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1217!4 String)
(assert (= var1217!4 (str.++ var1217!3 var1418)))
(assert true)
;(assert (append/-1166366385 var1217!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1217!5 String)
(assert (str.prefixof var1217!4 var1217!5))
(define-const var2069 var3780 (fieldsData/835448125 (cast-from-var401-to-var2759 var2830))) ; Statement: $r5 = r1.<org.apache.lucene.document.XYDocValuesField: java.lang.Object fieldsData> 
(define-const var815 Int (cast-from-var3780-to-Int var2069)) ; Statement: $r6 = (java.lang.Long) $r5 
(assert true)
(define-const var2530 Int (longValue/1313863450 var815)) ; Statement: l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>() 
(define-const var202 Int (div var2530 (to_int (^ 2 32)))) ; Statement: $l1 = l0 >> 32 
(define-const var3729 Int (cast-from-Int-to-Int var202)) ; Statement: $i2 = (int) $l1 
(define-const var1724 Float32 (var2323_decode/-1380081502 var3729)) ; Statement: $f0 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(int)>($i2) 
(assert true)
;(assert (append/991902413 var1217!5 var1724)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var1217!6 String)
(assert (str.prefixof var1217!5 var1217!6))
(assert true)
;(assert (append/-1166366385 var1217!6 44)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var1217!7 String)
(assert (str.prefixof var1217!6 var1217!7))
(define-const var47 Int (bv2nat (bvand ((_ int2bv 64) var2530) ((_ int2bv 64) (- 1))))) ; Statement: $l3 = l0 & -1L 
(define-const var3441 Int (cast-from-Int-to-Int var47)) ; Statement: $i4 = (int) $l3 
(define-const var161 Float32 (var2323_decode/-1380081502 var3441)) ; Statement: $f1 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(int)>($i4) 
(assert true)
;(assert (append/991902413 var1217!7 var161)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1) 
(declare-const var1217!8 String)
(assert (str.prefixof var1217!7 var1217!8))
(assert true)
;(assert (append/-1166366385 var1217!8 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1217!9 String)
(assert (str.prefixof var1217!8 var1217!9))
(assert true)
(define-const var2899 String (toString/-2075883882 var1217!9)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var401-to-var3780=([org.apache.lucene.document.XYDocValuesField], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var401-to-var2759=([org.apache.lucene.document.XYDocValuesField], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var3780-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long), cast-from-Int-to-Int=([long], int), var2323_decode/-1380081502=([int], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var401=org.apache.lucene.document.XYDocValuesField, var2830=r1, var1217=$r0, var3780=java.lang.Object, var16=$r2, var85=$r3, var2759=org.apache.lucene.document.Field, var1418=$r4, var2069=$r5, var815=$r6, var2530=l0, var202=$l1, var3729=$i2, var2323=org.apache.lucene.geo.XYEncodingUtils, var1724=$f0, var47=$l3, var3441=$i4, var161=$f1, var2899=$r7}
; {org.apache.lucene.document.XYDocValuesField=var401, r1=var2830, $r0=var1217, java.lang.Object=var3780, $r2=var16, $r3=var85, org.apache.lucene.document.Field=var2759, $r4=var1418, $r5=var2069, $r6=var815, l0=var2530, $l1=var202, $i2=var3729, org.apache.lucene.geo.XYEncodingUtils=var2323, $f0=var1724, $l3=var47, $i4=var3441, $f1=var161, $r7=var2899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.XYDocValuesField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.XYDocValuesField: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.XYDocValuesField: java.lang.Object fieldsData>;	$r6 = (java.lang.Long) $r5;	l0 = virtualinvoke $r6.<java.lang.Long: long longValue()>();	$l1 = l0 >> 32;	$i2 = (int) $l1;	$f0 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(int)>($i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$l3 = l0 & -1L;	$i4 = (int) $l3;	$f1 = staticinvoke <org.apache.lucene.geo.XYEncodingUtils: float decode(int)>($i4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1