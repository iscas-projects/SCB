(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1372 0)
(declare-sort var2588 0)
(declare-sort var622 0)
(declare-sort var1331 0)
(declare-sort var834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2588) ClassObject)
(declare-fun cast-from-var1372-to-var2588 (var1372) var2588)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var622) String)
(declare-fun cast-from-var1372-to-var622 (var1372) var622)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var622) var2588)
(declare-fun cast-from-var2588-to-var1331 (var2588) var1331)
(declare-fun type/835448125 (var622) var834)
(declare-fun var834_pointDimensionCount/2066917553 (var834) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1372 var1372)
(declare-const var1420 var1372) ; Statement: r1 := @this: org.apache.lucene.document.FloatPoint 
(assert (not (= var1420 null-var1372)))
(define-const var3744 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3744)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3744!1 String)
(assert (= var3744!1 ""))
(assert true)
(define-const var1246 ClassObject (getClass/1258963082 (cast-from-var1372-to-var2588 var1420))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3376 String (getSimpleName/-390194377 var1246)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var3744!1 var3376)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3744!2 String)
(assert (= var3744!2 (str.++ var3744!1 var3376)))
(assert true)
;(assert (append/672562846 var3744!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var3744!3 String)
(assert (= var3744!3 (str.++ var3744!2 " <")))
(define-const var2468 String (name/835448125 (cast-from-var1372-to-var622 var1420))) ; Statement: $r4 = r1.<org.apache.lucene.document.FloatPoint: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3744!3 var2468)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3744!4 String)
(assert (= var3744!4 (str.++ var3744!3 var2468)))
(assert true)
;(assert (append/-1166366385 var3744!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3744!5 String)
(assert (str.prefixof var3744!4 var3744!5))
(define-const var1315 var2588 (fieldsData/835448125 (cast-from-var1372-to-var622 var1420))) ; Statement: $r5 = r1.<org.apache.lucene.document.FloatPoint: java.lang.Object fieldsData> 
(define-const var3162 var1331 (cast-from-var2588-to-var1331 var1315)) ; Statement: r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var1570 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3297 var834 (type/835448125 (cast-from-var1372-to-var622 var1420))) ; Statement: $r7 = r1.<org.apache.lucene.document.FloatPoint: org.apache.lucene.index.IndexableFieldType type> 
(define-const var2579 Int (var834_pointDimensionCount/2066917553 var3297)) ; Statement: $i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
 ; Statement: if i4 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var1570 var2579)) ; Cond: i4 >= $i0 
(assert true)
;(assert (append/-1166366385 var3744!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3744!6 String)
(assert (str.prefixof var3744!5 var3744!6))
(assert true)
(define-const var3754 String (toString/-2075883882 var3744!6)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1372-to-var2588=([org.apache.lucene.document.FloatPoint], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var1372-to-var622=([org.apache.lucene.document.FloatPoint], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var2588-to-var1331=([java.lang.Object], org.apache.lucene.util.BytesRef), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var834_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1372=org.apache.lucene.document.FloatPoint, var1420=r1, var3744=$r0, var2588=java.lang.Object, var1246=$r2, var3376=$r3, var622=org.apache.lucene.document.Field, var2468=$r4, var1315=$r5, var1331=org.apache.lucene.util.BytesRef, var3162=r6, var1570=i4, var834=org.apache.lucene.index.IndexableFieldType, var3297=$r7, var2579=$i0, var3754=$r8}
; {org.apache.lucene.document.FloatPoint=var1372, r1=var1420, $r0=var3744, java.lang.Object=var2588, $r2=var1246, $r3=var3376, org.apache.lucene.document.Field=var622, $r4=var2468, $r5=var1315, org.apache.lucene.util.BytesRef=var1331, r6=var3162, i4=var1570, org.apache.lucene.index.IndexableFieldType=var834, $r7=var3297, $i0=var2579, $r8=var3754}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.FloatPoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.FloatPoint: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.FloatPoint: java.lang.Object fieldsData>;	r6 = (org.apache.lucene.util.BytesRef) $r5;	i4 = 0;	$r7 = r1.<org.apache.lucene.document.FloatPoint: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	if i4 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3