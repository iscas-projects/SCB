(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var101 0)
(declare-sort var3186 0)
(declare-sort var2250 0)
(declare-sort var3269 0)
(declare-sort var3331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3186) ClassObject)
(declare-fun cast-from-var101-to-var3186 (var101) var3186)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/835448125 (var2250) String)
(declare-fun cast-from-var101-to-var2250 (var101) var2250)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldsData/835448125 (var2250) var3186)
(declare-fun cast-from-var3186-to-var3269 (var3186) var3269)
(declare-fun type/835448125 (var2250) var3331)
(declare-fun var3331_pointDimensionCount/2066917553 (var3331) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var101 var101)
(declare-const var911 var101) ; Statement: r1 := @this: org.apache.lucene.document.IntPoint 
(assert (not (= var911 null-var101)))
(define-const var3319 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3319)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3319!1 String)
(assert (= var3319!1 ""))
(assert true)
(define-const var3502 ClassObject (getClass/1258963082 (cast-from-var101-to-var3186 var911))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var720 String (getSimpleName/-390194377 var3502)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var3319!1 var720)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3319!2 String)
(assert (= var3319!2 (str.++ var3319!1 var720)))
(assert true)
;(assert (append/672562846 var3319!2 " <")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var3319!3 String)
(assert (= var3319!3 (str.++ var3319!2 " <")))
(define-const var342 String (name/835448125 (cast-from-var101-to-var2250 var911))) ; Statement: $r4 = r1.<org.apache.lucene.document.IntPoint: java.lang.String name> 
(assert true)
;(assert (append/672562846 var3319!3 var342)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3319!4 String)
(assert (= var3319!4 (str.++ var3319!3 var342)))
(assert true)
;(assert (append/-1166366385 var3319!4 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3319!5 String)
(assert (str.prefixof var3319!4 var3319!5))
(define-const var3394 var3186 (fieldsData/835448125 (cast-from-var101-to-var2250 var911))) ; Statement: $r5 = r1.<org.apache.lucene.document.IntPoint: java.lang.Object fieldsData> 
(define-const var3142 var3269 (cast-from-var3186-to-var3269 var3394)) ; Statement: r6 = (org.apache.lucene.util.BytesRef) $r5 
(define-const var521 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3718 var3331 (type/835448125 (cast-from-var101-to-var2250 var911))) ; Statement: $r7 = r1.<org.apache.lucene.document.IntPoint: org.apache.lucene.index.IndexableFieldType type> 
(define-const var1576 Int (var3331_pointDimensionCount/2066917553 var3718)) ; Statement: $i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>() 
 ; Statement: if i5 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var521 var1576)) ; Cond: i5 >= $i0 
(assert true)
;(assert (append/-1166366385 var3319!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3319!6 String)
(assert (str.prefixof var3319!5 var3319!6))
(assert true)
(define-const var2045 String (toString/-2075883882 var3319!6)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var101-to-var3186=([org.apache.lucene.document.IntPoint], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/835448125=([org.apache.lucene.document.Field], java.lang.String), cast-from-var101-to-var2250=([org.apache.lucene.document.IntPoint], org.apache.lucene.document.Field), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldsData/835448125=([org.apache.lucene.document.Field], java.lang.Object), cast-from-var3186-to-var3269=([java.lang.Object], org.apache.lucene.util.BytesRef), type/835448125=([org.apache.lucene.document.Field], org.apache.lucene.index.IndexableFieldType), var3331_pointDimensionCount/2066917553=([org.apache.lucene.index.IndexableFieldType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var101=org.apache.lucene.document.IntPoint, var911=r1, var3319=$r0, var3186=java.lang.Object, var3502=$r2, var720=$r3, var2250=org.apache.lucene.document.Field, var342=$r4, var3394=$r5, var3269=org.apache.lucene.util.BytesRef, var3142=r6, var521=i5, var3331=org.apache.lucene.index.IndexableFieldType, var3718=$r7, var1576=$i0, var2045=$r8}
; {org.apache.lucene.document.IntPoint=var101, r1=var911, $r0=var3319, java.lang.Object=var3186, $r2=var3502, $r3=var720, org.apache.lucene.document.Field=var2250, $r4=var342, $r5=var3394, org.apache.lucene.util.BytesRef=var3269, r6=var3142, i5=var521, org.apache.lucene.index.IndexableFieldType=var3331, $r7=var3718, $i0=var1576, $r8=var2045}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.IntPoint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r4 = r1.<org.apache.lucene.document.IntPoint: java.lang.String name>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.IntPoint: java.lang.Object fieldsData>;	r6 = (org.apache.lucene.util.BytesRef) $r5;	i5 = 0;	$r7 = r1.<org.apache.lucene.document.IntPoint: org.apache.lucene.index.IndexableFieldType type>;	$i0 = interfaceinvoke $r7.<org.apache.lucene.index.IndexableFieldType: int pointDimensionCount()>();	if i5 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3