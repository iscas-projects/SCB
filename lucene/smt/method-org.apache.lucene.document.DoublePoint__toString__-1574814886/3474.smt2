(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var445 0)
(declare-sort var2613 0)
(declare-sort var311 0)
(declare-sort var1645 0)
(declare-sort var3729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2613) ClassObject)
(declare-fun cast-from-var445-to-var2613 (var445) var2613)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var311) String)
(declare-fun cast-from-var445-to-var311 (var445) var311)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var311) var2613)
(declare-fun cast-from-var2613-to-var1645 (var2613) var1645)
(declare-fun type/835448125 (var311) var3729)
(declare-fun var3729_pointDimensionCount/2066917553 (var3729) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var445 var445)
(declare-const var3869 var445) ; Statement: r1 := @this: org.apache.lucene.document.DoublePoint 
(assert (not (= var3869 null-var445)))
(define-const var3555 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3555)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3555!1 String)
(assert (= var3555!1 ""))
(assert true)
(define-const var3947 ClassObject (getClass/1258963082 (cast-from-var445-to-var2613 var3869))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3788 String (getSimpleName/-390194377 var3947)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var3555!1 var3788)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3555!2 String)
(assert (= var3555!2 (str.++ var3555!1 var3788)))
(assert true)
;(assert (append/672562846 var3555!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var3555!3 String)
(assert (= var3555!3 (str.++ var3555!2 " <")))
(define-const var1980 String (name/835448125 (cast-from-var445-to-var311 var3869))) ; Statement: $r4 = r1.<org.apache.lucene.document.DoublePoint: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3555!3 var1980)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3555!4 String)
(assert (= var3555!4 (str.++ var3555!3 var1980)))
(assert true)
;(assert (append/-1166366385 var3555!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3555!5 String)
(assert (str.prefixof var3555!4 var3555!5))
(define-const var3579 var2613 (fieldsData/835448125 (cast-from-var445-to-var311 var3869))) ; Statement: $r5 = r1.<org.apache.lucene.document.DoublePoint: java.lang.Object fieldsData> 
(define-const var172 var1645 (cast-from-var2613-to-var1645 var3579)) ; Statement: r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var461 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3731 var3729 (type/835448125 (cast-from-var445-to-var311 var3869))) ; Statement: $r7 = r1.<org.apache.lucene.document.DoublePoint: org.apache.lucene.index.IndexableFieldType type> 
(define-const var2588 Int (var3729_pointDimensionCount/2066917553 var3731)) ; Statement: $i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
 ; Statement: if i4 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var461 var2588)) ; Cond: i4 >= $i0 
(assert true)
;(assert (append/-1166366385 var3555!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3555!6 String)
(assert (str.prefixof var3555!5 var3555!6))
(assert true)
(define-const var2579 String (toString/-2075883882 var3555!6)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var445-to-var2613=([org.apache.lucene.document.DoublePoint], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var445-to-var311=([org.apache.lucene.document.DoublePoint], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var2613-to-var1645=([java.lang.Object], org.apache.lucene.util.BytesRef), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var3729_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var445=org.apache.lucene.document.DoublePoint, var3869=r1, var3555=$r0, var2613=java.lang.Object, var3947=$r2, var3788=$r3, var311=org.apache.lucene.document.Field, var1980=$r4, var3579=$r5, var1645=org.apache.lucene.util.BytesRef, var172=r6, var461=i4, var3729=org.apache.lucene.index.IndexableFieldType, var3731=$r7, var2588=$i0, var2579=$r8}
; {org.apache.lucene.document.DoublePoint=var445, r1=var3869, $r0=var3555, java.lang.Object=var2613, $r2=var3947, $r3=var3788, org.apache.lucene.document.Field=var311, $r4=var1980, $r5=var3579, org.apache.lucene.util.BytesRef=var1645, r6=var172, i4=var461, org.apache.lucene.index.IndexableFieldType=var3729, $r7=var3731, $i0=var2588, $r8=var2579}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.DoublePoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.DoublePoint: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.DoublePoint: java.lang.Object fieldsData>;	r6 = (org.apache.lucene.util.BytesRef) $r5;	i4 = 0;	$r7 = r1.<org.apache.lucene.document.DoublePoint: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	if i4 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3