(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2077 0)
(declare-sort var1181 0)
(declare-sort var856 0)
(declare-sort var816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var856) ClassObject)
(declare-fun cast-from-var2077-to-var856 (var2077) var856)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun field/-1847263103 (var2077) String)
(declare-fun geometries/-1847263103 (var2077) (Array Int var816))
(declare-fun getLength-Arr-var816-1 ((Array Int var816)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2077 var2077)
(declare-const null-String String)
(declare-const var2470 var2077) ; Statement: r1 := @this: org.apache.lucene.document.SpatialQuery 
(assert (not (= var2470 null-var2077)))
(declare-const var196 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var196 null-String)))
(define-const var2240 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2240)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2240!1 String)
(assert (= var2240!1 ""))
(assert true)
(define-const var3318 ClassObject (getClass/1258963082 (cast-from-var2077-to-var856 var2470))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var176 String (getSimpleName/-390194377 var3318)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var2240!1 var176)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2240!2 String)
(assert (= var2240!2 (str.++ var2240!1 var176)))
(assert true)
;(assert (append/-1166366385 var2240!2 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2240!3 String)
(assert (str.prefixof var2240!2 var2240!3))
(define-const var2386 String (field/-1847263103 var2470)) ; Statement: $r5 = r1.<org.apache.lucene.document.SpatialQuery: java.lang.String field> 
(assert true)
(define-const var225 Bool (= var2386 var196)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var225 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var2240!3 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2240!4 String)
(assert (= var2240!4 (str.++ var2240!3 "[")))
(define-const var3349 Int 0) ; Statement: i0 = 0 
(assert true) ; Non Conditional
(define-const var3858 (Array Int var816) (geometries/-1847263103 var2470)) ; Statement: $r11 = r1.<org.apache.lucene.document.SpatialQuery: org.apache.lucene.geo.Geometry[] geometries> 
(define-const var1194 Int (getLength-Arr-var816-1 var3858)) ; Statement: $i1 = lengthof $r11 
 ; Statement: if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3349 var1194)) ; Cond: i0 >= $i1 
(assert true)
;(assert (append/-1166366385 var2240!4 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2240!5 String)
(assert (str.prefixof var2240!4 var2240!5))
(assert true)
(define-const var1071 String (toString/-2075883882 var2240!5)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2077-to-var856=([org.apache.lucene.document.SpatialQuery], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), field/-1847263103=([org.apache.lucene.document.SpatialQuery], java.lang.String), geometries/-1847263103=([org.apache.lucene.document.SpatialQuery], org.apache.lucene.geo.Geometry[]), getLength-Arr-var816-1=([org.apache.lucene.geo.Geometry[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2077=org.apache.lucene.document.SpatialQuery, var2470=r1, var196=r4, var1181=null_type, var2240=$r0, var856=java.lang.Object, var3318=$r2, var176=$r3, var2386=$r5, var225=$z0, var3349=i0, var816=org.apache.lucene.geo.Geometry, var3858=$r11, var1194=$i1, var1071=$r6}
; {org.apache.lucene.document.SpatialQuery=var2077, r1=var2470, r4=var196, null_type=var1181, $r0=var2240, java.lang.Object=var856, $r2=var3318, $r3=var176, $r5=var2386, $z0=var225, i0=var3349, org.apache.lucene.geo.Geometry=var816, $r11=var3858, $i1=var1194, $r6=var1071}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.SpatialQuery;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.SpatialQuery: java.lang.String field>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	i0 = 0;	$r11 = r1.<org.apache.lucene.document.SpatialQuery: org.apache.lucene.geo.Geometry[] geometries>;	$i1 = lengthof $r11;	if i0 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4