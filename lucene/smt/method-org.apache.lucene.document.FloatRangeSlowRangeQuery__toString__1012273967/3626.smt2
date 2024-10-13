(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var510 0)
(declare-sort var3493 0)
(declare-sort var2700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/-349275158 (var510) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun min/-349275158 (var510) (Array Int Float32))
(declare-fun var2700_toString/409851894 ((Array Int Float32)) String)
(declare-fun max/-349275158 (var510) (Array Int Float32))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var510 var510)
(declare-const null-String String)
(declare-const var1989 var510) ; Statement: r1 := @this: org.apache.lucene.document.FloatRangeSlowRangeQuery 
(assert (not (= var1989 null-var510)))
(declare-const var1510 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1510 null-String)))
(define-const var971 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var971)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var971!1 String)
(assert (= var971!1 ""))
(define-const var37 String (field/-349275158 var1989)) ; Statement: $r3 = r1.<org.apache.lucene.document.FloatRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var3022 Bool (= var37 var1510)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var3022 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var662 String (append/672562846 var971!1 "[")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var971!2 String)
(assert (= var971!2 (str.++ var971!1 "[")))
(define-const var334 (Array Int Float32) (min/-349275158 var1989)) ; Statement: $r4 = r1.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] min> 
(define-const var2246 String (var2700_toString/409851894 var334)) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.String toString(float[])>($r4) 
(assert true)
(define-const var466 String (append/672562846 var662 var2246)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var662!1 String)
(assert (= var662!1 (str.++ var662 var2246)))
(assert true)
(define-const var2026 String (append/672562846 var466 " TO ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var466!1 String)
(assert (= var466!1 (str.++ var466 " TO ")))
(define-const var740 (Array Int Float32) (max/-349275158 var1989)) ; Statement: $r8 = r1.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] max> 
(define-const var503 String (var2700_toString/409851894 var740)) ; Statement: $r9 = staticinvoke <java.util.Arrays: java.lang.String toString(float[])>($r8) 
(assert true)
(define-const var2690 String (append/672562846 var2026 var503)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2026!1 String)
(assert (= var2026!1 (str.++ var2026 var503)))
(assert true)
(define-const var3502 String (append/672562846 var2690 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2690!1 String)
(assert (= var2690!1 (str.++ var2690 "]")))
(assert true)
(define-const var2109 String (toString/-2075883882 var3502)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/-349275158=([org.apache.lucene.document.FloatRangeSlowRangeQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), min/-349275158=([org.apache.lucene.document.FloatRangeSlowRangeQuery], float[]), var2700_toString/409851894=([float[]], java.lang.String), max/-349275158=([org.apache.lucene.document.FloatRangeSlowRangeQuery], float[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var510=org.apache.lucene.document.FloatRangeSlowRangeQuery, var1989=r1, var1510=r2, var3493=null_type, var971=$r0, var37=$r3, var3022=$z0, var662=$r6, var334=$r4, var2700=java.util.Arrays, var2246=$r5, var466=$r7, var2026=$r10, var740=$r8, var503=$r9, var2690=$r11, var3502=$r12, var2109=$r13}
; {org.apache.lucene.document.FloatRangeSlowRangeQuery=var510, r1=var1989, r2=var1510, null_type=var3493, $r0=var971, $r3=var37, $z0=var3022, $r6=var662, $r4=var334, java.util.Arrays=var2700, $r5=var2246, $r7=var466, $r10=var2026, $r8=var740, $r9=var503, $r11=var2690, $r12=var3502, $r13=var2109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(float[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(float[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.FloatRangeSlowRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.FloatRangeSlowRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = r1.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] min>;	$r5 = staticinvoke <java.util.Arrays: java.lang.String toString(float[])>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r8 = r1.<org.apache.lucene.document.FloatRangeSlowRangeQuery: float[] max>;	$r9 = staticinvoke <java.util.Arrays: java.lang.String toString(float[])>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2