(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var85 0)
(declare-sort var1990 0)
(declare-sort var1110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-1521151305 (var85) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun min/-1521151305 (var85) (Array Int Int))
(declare-fun var1110_toString/1240813769 ((Array Int Int)) String)
(declare-fun max/-1521151305 (var85) (Array Int Int))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var85 var85)
(declare-const null-String String)
(declare-const var2380 var85) ; Statement: r1 := @this: org.apache.lucene.document.IntRangeSlowRangeQuery 
(assert (not (= var2380 null-var85)))
(declare-const var114 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var114 null-String)))
(define-const var3608 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3608)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3608!1 String)
(assert (= var3608!1 ""))
(define-const var2762 String (field/-1521151305 var2380)) ; Statement: $r3 = r1.<org.apache.lucene.document.IntRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var459 Bool (= var2762 var114)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var459 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3159 String (append/672562846 var3608!1 "[")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3608!2 String)
(assert (= var3608!2 (str.++ var3608!1 "[")))
(define-const var1074 (Array Int Int) (min/-1521151305 var2380)) ; Statement: $r4 = r1.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] min> 
(define-const var3343 String (var1110_toString/1240813769 var1074)) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r4) 
(assert true)
(define-const var403 String (append/672562846 var3159 var3343)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3159!1 String)
(assert (= var3159!1 (str.++ var3159 var3343)))
(assert true)
(define-const var1802 String (append/672562846 var403 " TO ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var403!1 String)
(assert (= var403!1 (str.++ var403 " TO ")))
(define-const var854 (Array Int Int) (max/-1521151305 var2380)) ; Statement: $r8 = r1.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] max> 
(define-const var3971 String (var1110_toString/1240813769 var854)) ; Statement: $r9 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r8) 
(assert true)
(define-const var119 String (append/672562846 var1802 var3971)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1802!1 String)
(assert (= var1802!1 (str.++ var1802 var3971)))
(assert true)
(define-const var3645 String (append/672562846 var119 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var119!1 String)
(assert (= var119!1 (str.++ var119 "]")))
(assert true)
(define-const var3585 String (toString/-2075883882 var3645)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-1521151305=([org.apache.lucene.document.IntRangeSlowRangeQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), min/-1521151305=([org.apache.lucene.document.IntRangeSlowRangeQuery], int[]), var1110_toString/1240813769=([int[]], java.lang.String), max/-1521151305=([org.apache.lucene.document.IntRangeSlowRangeQuery], int[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var85=org.apache.lucene.document.IntRangeSlowRangeQuery, var2380=r1, var114=r2, var1990=null_type, var3608=$r0, var2762=$r3, var459=$z0, var3159=$r6, var1074=$r4, var1110=java.util.Arrays, var3343=$r5, var403=$r7, var1802=$r10, var854=$r8, var3971=$r9, var119=$r11, var3645=$r12, var3585=$r13}
; {org.apache.lucene.document.IntRangeSlowRangeQuery=var85, r1=var2380, r2=var114, null_type=var1990, $r0=var3608, $r3=var2762, $z0=var459, $r6=var3159, $r4=var1074, java.util.Arrays=var1110, $r5=var3343, $r7=var403, $r10=var1802, $r8=var854, $r9=var3971, $r11=var119, $r12=var3645, $r13=var3585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.IntRangeSlowRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.IntRangeSlowRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = r1.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] min>;	$r5 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r8 = r1.<org.apache.lucene.document.IntRangeSlowRangeQuery: int[] max>;	$r9 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2