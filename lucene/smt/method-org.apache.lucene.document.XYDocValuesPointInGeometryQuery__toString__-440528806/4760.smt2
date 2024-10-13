(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3222 0)
(declare-sort var3732 0)
(declare-sort var857 0)
(declare-sort var1282 0)
(declare-sort var3562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-1137660579 (var3222) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun geometries/-1137660579 (var3222) (Array Int var857))
(declare-fun var1282_toString/-575966009 ((Array Int var3562)) String)
(declare-fun cast-from-__Array__Int__var857__-to-__Array__Int__var3562__ ((Array Int var857)) (Array Int var3562))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3222 var3222)
(declare-const null-String String)
(declare-const var1430 var3222) ; Statement: r1 := @this: org.apache.lucene.document.XYDocValuesPointInGeometryQuery 
(assert (not (= var1430 null-var3222)))
(declare-const var322 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var322 null-String)))
(define-const var2370 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2370)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2370!1 String)
(assert (= var2370!1 ""))
(define-const var2259 String (field/-1137660579 var1430)) ; Statement: $r3 = r1.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: java.lang.String field> 
(assert true)
(define-const var89 Bool (= var2259 var322)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("geometries(") 
(assert (not (= (ite var89 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2778 String (append/672562846 var2370!1 "geometries(")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("geometries(") 
(declare-const var2370!2 String)
(assert (= var2370!2 (str.++ var2370!1 "geometries(")))
(define-const var2208 (Array Int var857) (geometries/-1137660579 var1430)) ; Statement: $r4 = r1.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] geometries> 
(define-const var2683 String (var1282_toString/-575966009 (cast-from-__Array__Int__var857__-to-__Array__Int__var3562__ var2208))) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r4) 
(assert true)
;(assert (append/672562846 var2778 var2683)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2778!1 String)
(assert (= var2778!1 (str.++ var2778 var2683)))
(assert true)
(define-const var451 String (append/672562846 var2370!2 ")")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2370!3 String)
(assert (= var2370!3 (str.++ var2370!2 ")")))
(assert true)
(define-const var1226 String (toString/-2075883882 var451)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-1137660579=([org.apache.lucene.document.XYDocValuesPointInGeometryQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), geometries/-1137660579=([org.apache.lucene.document.XYDocValuesPointInGeometryQuery], org.apache.lucene.geo.XYGeometry[]), var1282_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var857__-to-__Array__Int__var3562__=([org.apache.lucene.geo.XYGeometry[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3222=org.apache.lucene.document.XYDocValuesPointInGeometryQuery, var1430=r1, var322=r2, var3732=null_type, var2370=$r0, var2259=$r3, var89=$z0, var2778=$r6, var857=org.apache.lucene.geo.XYGeometry, var2208=$r4, var1282=java.util.Arrays, var3562=java.lang.Object, var2683=$r5, var451=$r7, var1226=$r8}
; {org.apache.lucene.document.XYDocValuesPointInGeometryQuery=var3222, r1=var1430, r2=var322, null_type=var3732, $r0=var2370, $r3=var2259, $z0=var89, $r6=var2778, org.apache.lucene.geo.XYGeometry=var857, $r4=var2208, java.util.Arrays=var1282, java.lang.Object=var3562, $r5=var2683, $r7=var451, $r8=var1226}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.XYDocValuesPointInGeometryQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("geometries(");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("geometries(");	$r4 = r1.<org.apache.lucene.document.XYDocValuesPointInGeometryQuery: org.apache.lucene.geo.XYGeometry[] geometries>;	$r5 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2