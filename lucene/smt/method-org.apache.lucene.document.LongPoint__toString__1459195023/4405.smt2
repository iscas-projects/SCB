(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3779 0)
(declare-sort var3549 0)
(declare-sort var2133 0)
(declare-sort var1214 0)
(declare-sort var1675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3549) ClassObject)
(declare-fun cast-from-var3779-to-var3549 (var3779) var3549)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var2133) String)
(declare-fun cast-from-var3779-to-var2133 (var3779) var2133)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var2133) var3549)
(declare-fun cast-from-var3549-to-var1214 (var3549) var1214)
(declare-fun type/835448125 (var2133) var1675)
(declare-fun var1675_pointDimensionCount/2066917553 (var1675) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3779 var3779)
(declare-const var1451 var3779) ; Statement: r1 := @this: org.apache.lucene.document.LongPoint 
(assert (not (= var1451 null-var3779)))
(define-const var3912 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3912)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3912!1 String)
(assert (= var3912!1 ""))
(assert true)
(define-const var2604 ClassObject (getClass/1258963082 (cast-from-var3779-to-var3549 var1451))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var677 String (getSimpleName/-390194377 var2604)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var3912!1 var677)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3912!2 String)
(assert (= var3912!2 (str.++ var3912!1 var677)))
(assert true)
;(assert (append/672562846 var3912!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var3912!3 String)
(assert (= var3912!3 (str.++ var3912!2 " <")))
(define-const var1873 String (name/835448125 (cast-from-var3779-to-var2133 var1451))) ; Statement: $r4 = r1.<org.apache.lucene.document.LongPoint: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3912!3 var1873)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3912!4 String)
(assert (= var3912!4 (str.++ var3912!3 var1873)))
(assert true)
;(assert (append/-1166366385 var3912!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3912!5 String)
(assert (str.prefixof var3912!4 var3912!5))
(define-const var1752 var3549 (fieldsData/835448125 (cast-from-var3779-to-var2133 var1451))) ; Statement: $r5 = r1.<org.apache.lucene.document.LongPoint: java.lang.Object fieldsData> 
(define-const var1440 var1214 (cast-from-var3549-to-var1214 var1752)) ; Statement: r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var225 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3424 var1675 (type/835448125 (cast-from-var3779-to-var2133 var1451))) ; Statement: $r7 = r1.<org.apache.lucene.document.LongPoint: org.apache.lucene.index.IndexableFieldType type> 
(define-const var3444 Int (var1675_pointDimensionCount/2066917553 var3424)) ; Statement: $i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
 ; Statement: if i5 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var225 var3444)) ; Cond: i5 >= $i0 
(assert true)
;(assert (append/-1166366385 var3912!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3912!6 String)
(assert (str.prefixof var3912!5 var3912!6))
(assert true)
(define-const var3789 String (toString/-2075883882 var3912!6)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3779-to-var3549=([org.apache.lucene.document.LongPoint], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var3779-to-var2133=([org.apache.lucene.document.LongPoint], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var3549-to-var1214=([java.lang.Object], org.apache.lucene.util.BytesRef), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var1675_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3779=org.apache.lucene.document.LongPoint, var1451=r1, var3912=$r0, var3549=java.lang.Object, var2604=$r2, var677=$r3, var2133=org.apache.lucene.document.Field, var1873=$r4, var1752=$r5, var1214=org.apache.lucene.util.BytesRef, var1440=r6, var225=i5, var1675=org.apache.lucene.index.IndexableFieldType, var3424=$r7, var3444=$i0, var3789=$r8}
; {org.apache.lucene.document.LongPoint=var3779, r1=var1451, $r0=var3912, java.lang.Object=var3549, $r2=var2604, $r3=var677, org.apache.lucene.document.Field=var2133, $r4=var1873, $r5=var1752, org.apache.lucene.util.BytesRef=var1214, r6=var1440, i5=var225, org.apache.lucene.index.IndexableFieldType=var1675, $r7=var3424, $i0=var3444, $r8=var3789}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LongPoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.LongPoint: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.LongPoint: java.lang.Object fieldsData>;	r6 = (org.apache.lucene.util.BytesRef) $r5;	i5 = 0;	$r7 = r1.<org.apache.lucene.document.LongPoint: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	if i5 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3