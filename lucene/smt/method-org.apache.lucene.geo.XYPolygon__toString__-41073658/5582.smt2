(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun x/667658982 (var1263) (Array Int Float32))
(declare-fun getLength-Arr-Float32-1 ((Array Int Float32)) Int)
(declare-fun holes/667658982 (var1263) (Array Int var1263))
(declare-fun getLength-Arr-var1263-1 ((Array Int var1263)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1263 var1263)
(declare-const var329 var1263) ; Statement: r1 := @this: org.apache.lucene.geo.XYPolygon 
(assert (not (= var329 null-var1263)))
(define-const var3967 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3967)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3967!1 String)
(assert (= var3967!1 ""))
(define-const var2392 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1812 (Array Int Float32) (x/667658982 var329)) ; Statement: $r2 = r1.<org.apache.lucene.geo.XYPolygon: float[] x> 
(define-const var1223 Int (getLength-Arr-Float32-1 var1812)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i2 >= $i0 goto $r3 = r1.<org.apache.lucene.geo.XYPolygon: org.apache.lucene.geo.XYPolygon[] holes> 
(assert (>= var2392 var1223)) ; Cond: i2 >= $i0 
(define-const var1715 (Array Int var1263) (holes/667658982 var329)) ; Statement: $r3 = r1.<org.apache.lucene.geo.XYPolygon: org.apache.lucene.geo.XYPolygon[] holes> 
(define-const var1379 Int (getLength-Arr-var1263-1 var1715)) ; Statement: $i1 = lengthof $r3 
 ; Statement: if $i1 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var1379 0)) ; Cond: $i1 <= 0 
(assert true)
(define-const var2465 String (toString/-2075883882 var3967!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), x/667658982=([org.apache.lucene.geo.XYPolygon], float[]), getLength-Arr-Float32-1=([float[]], int), holes/667658982=([org.apache.lucene.geo.XYPolygon], org.apache.lucene.geo.XYPolygon[]), getLength-Arr-var1263-1=([org.apache.lucene.geo.XYPolygon[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1263=org.apache.lucene.geo.XYPolygon, var329=r1, var3967=$r0, var2392=i2, var1812=$r2, var1223=$i0, var1715=$r3, var1379=$i1, var2465=$r4}
; {org.apache.lucene.geo.XYPolygon=var1263, r1=var329, $r0=var3967, i2=var2392, $r2=var1812, $i0=var1223, $r3=var1715, $i1=var1379, $r4=var2465}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.geo.XYPolygon;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$r2 = r1.<org.apache.lucene.geo.XYPolygon: float[] x>;	$i0 = lengthof $r2;	if i2 >= $i0 goto $r3 = r1.<org.apache.lucene.geo.XYPolygon: org.apache.lucene.geo.XYPolygon[] holes>;	$r3 = r1.<org.apache.lucene.geo.XYPolygon: org.apache.lucene.geo.XYPolygon[] holes>;	$i1 = lengthof $r3;	if $i1 <= 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4