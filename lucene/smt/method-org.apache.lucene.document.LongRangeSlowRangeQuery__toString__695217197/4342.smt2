(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3855 0)
(declare-sort var1036 0)
(declare-sort var1203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun field/1452521072 (var3855) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun min/1452521072 (var3855) (Array Int Int))
(declare-fun var1203_toString/1470785712 ((Array Int Int)) String)
(declare-fun max/1452521072 (var3855) (Array Int Int))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3855 var3855)
(declare-const null-String String)
(declare-const var2161 var3855) ; Statement: r1 := @this: org.apache.lucene.document.LongRangeSlowRangeQuery 
(assert (not (= var2161 null-var3855)))
(declare-const var2746 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2746 null-String)))
(define-const var3039 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3039)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3039!1 String)
(assert (= var3039!1 ""))
(define-const var319 String (field/1452521072 var2161)) ; Statement: $r3 = r1.<org.apache.lucene.document.LongRangeSlowRangeQuery: java.lang.String field> 
(assert true)
(define-const var2593 Bool (= var319 var2746)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(assert (not (= (ite var2593 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2579 String (append/672562846 var3039!1 "[")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3039!2 String)
(assert (= var3039!2 (str.++ var3039!1 "[")))
(define-const var3800 (Array Int Int) (min/1452521072 var2161)) ; Statement: $r4 = r1.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] min> 
(define-const var1136 String (var1203_toString/1470785712 var3800)) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.String toString(long[])>($r4) 
(assert true)
(define-const var2081 String (append/672562846 var2579 var1136)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2579!1 String)
(assert (= var2579!1 (str.++ var2579 var1136)))
(assert true)
(define-const var2996 String (append/672562846 var2081 " TO ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ") 
(declare-const var2081!1 String)
(assert (= var2081!1 (str.++ var2081 " TO ")))
(define-const var2191 (Array Int Int) (max/1452521072 var2161)) ; Statement: $r8 = r1.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] max> 
(define-const var385 String (var1203_toString/1470785712 var2191)) ; Statement: $r9 = staticinvoke <java.util.Arrays: java.lang.String toString(long[])>($r8) 
(assert true)
(define-const var3895 String (append/672562846 var2996 var385)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2996!1 String)
(assert (= var2996!1 (str.++ var2996 var385)))
(assert true)
(define-const var3293 String (append/672562846 var3895 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3895!1 String)
(assert (= var3895!1 (str.++ var3895 "]")))
(assert true)
(define-const var3592 String (toString/-2075883882 var3293)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), field/1452521072=([org.apache.lucene.document.LongRangeSlowRangeQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), min/1452521072=([org.apache.lucene.document.LongRangeSlowRangeQuery], long[]), var1203_toString/1470785712=([long[]], java.lang.String), max/1452521072=([org.apache.lucene.document.LongRangeSlowRangeQuery], long[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3855=org.apache.lucene.document.LongRangeSlowRangeQuery, var2161=r1, var2746=r2, var1036=null_type, var3039=$r0, var319=$r3, var2593=$z0, var2579=$r6, var3800=$r4, var1203=java.util.Arrays, var1136=$r5, var2081=$r7, var2996=$r10, var2191=$r8, var385=$r9, var3895=$r11, var3293=$r12, var3592=$r13}
; {org.apache.lucene.document.LongRangeSlowRangeQuery=var3855, r1=var2161, r2=var2746, null_type=var1036, $r0=var3039, $r3=var319, $z0=var2593, $r6=var2579, $r4=var3800, java.util.Arrays=var1203, $r5=var1136, $r7=var2081, $r10=var2996, $r8=var2191, $r9=var385, $r11=var3895, $r12=var3293, $r13=var3592}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(long[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(long[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.document.LongRangeSlowRangeQuery;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.apache.lucene.document.LongRangeSlowRangeQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = r1.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] min>;	$r5 = staticinvoke <java.util.Arrays: java.lang.String toString(long[])>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TO ");	$r8 = r1.<org.apache.lucene.document.LongRangeSlowRangeQuery: long[] max>;	$r9 = staticinvoke <java.util.Arrays: java.lang.String toString(long[])>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2