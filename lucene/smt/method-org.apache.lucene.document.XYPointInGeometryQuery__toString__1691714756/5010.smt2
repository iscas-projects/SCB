(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var1303 0)
(declare-sort var1995 0)
(declare-sort var744 0)
(declare-sort var225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1995) ClassObject)
(declare-fun cast-from-var742-to-var1995 (var742) var1995)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun field/1318910271 (var742) String)
(declare-fun xyGeometries/1318910271 (var742) (Array Int var744))
(declare-fun var225_toString/-575966009 ((Array Int var1995)) String)
(declare-fun cast-from-__Array__Int__var744__-to-__Array__Int__var1995__ ((Array Int var744)) (Array Int var1995))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var742 var742)
(declare-const null-String String)
(declare-const var3132 var742) ; Statement: r1 := @this: org.apache.lucene.document.XYPointInGeometryQuery 
(assert (not (= var3132 null-var742)))
(declare-const var921 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var921 null-String)))
(define-const var648 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var648)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var648!1 String)
(assert (= var648!1 ""))
(assert true)
(define-const var2145 ClassObject (getClass/1258963082 (cast-from-var742-to-var1995 var3132))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2322 String (getSimpleName/-390194377 var2145)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var648!1 var2322)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var648!2 String)
(assert (= var648!2 (str.++ var648!1 var2322)))
(assert true)
;(assert (append/-1166366385 var648!2 58)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var648!3 String)
(assert (str.prefixof var648!2 var648!3))
(define-const var374 String (field/1318910271 var3132)) ; Statement: $r5 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field> 
(assert true)
(define-const var3825 Bool (= var374 var921)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto $r6 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] xyGeometries> 
(assert (not (= (ite var3825 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1693 (Array Int var744) (xyGeometries/1318910271 var3132)) ; Statement: $r6 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] xyGeometries> 
(define-const var1947 String (var225_toString/-575966009 (cast-from-__Array__Int__var744__-to-__Array__Int__var1995__ var1693))) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6) 
(assert true)
;(assert (append/672562846 var648!3 var1947)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var648!4 String)
(assert (= var648!4 (str.++ var648!3 var1947)))
(assert true)
(define-const var2122 String (toString/-2075883882 var648!4)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var742-to-var1995=([org.apache.lucene.document.XYPointInGeometryQuery], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), field/1318910271=([org.apache.lucene.document.XYPointInGeometryQuery], java.lang.String), xyGeometries/1318910271=([org.apache.lucene.document.XYPointInGeometryQuery], org.apache.lucene.geo.XYGeometry[]), var225_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var744__-to-__Array__Int__var1995__=([org.apache.lucene.geo.XYGeometry[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var742=org.apache.lucene.document.XYPointInGeometryQuery, var3132=r1, var921=r4, var1303=null_type, var648=$r0, var1995=java.lang.Object, var2145=$r2, var2322=$r3, var374=$r5, var3825=$z0, var744=org.apache.lucene.geo.XYGeometry, var1693=$r6, var225=java.util.Arrays, var1947=$r7, var2122=$r8}
; {org.apache.lucene.document.XYPointInGeometryQuery=var742, r1=var3132, r4=var921, null_type=var1303, $r0=var648, java.lang.Object=var1995, $r2=var2145, $r3=var2322, $r5=var374, $z0=var3825, org.apache.lucene.geo.XYGeometry=var744, $r6=var1693, java.util.Arrays=var225, $r7=var1947, $r8=var2122}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.XYPointInGeometryQuery;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto $r6 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] xyGeometries>;	$r6 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] xyGeometries>;	$r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2