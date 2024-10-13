(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/-718667692 (var971) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var971 var971)
(declare-const null-Int Int)
(declare-const var969 var971) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList 
(assert (not (= var969 null-var971)))
(declare-const var459 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var459 null-Int)))
(define-const var2030 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2030)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2030!1 String)
(assert (= var2030!1 ""))
(assert true)
(define-const var1741 String (append/672562846 var2030!1 "Index:")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:") 
(declare-const var2030!2 String)
(assert (= var2030!2 (str.++ var2030!1 "Index:")))
(assert true)
(define-const var3413 String (append/-1001720160 var1741 var459)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1741!1 String)
(assert (str.prefixof var1741 var1741!1))
(assert true)
(define-const var547 String (append/672562846 var3413 ", Size:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:") 
(declare-const var3413!1 String)
(assert (= var3413!1 (str.++ var3413 ", Size:")))
(define-const var3991 Int (size/-718667692 var969)) ; Statement: $i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList: int size> 
(assert true)
(define-const var2997 String (append/-1001720160 var547 var3991)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var547!1 String)
(assert (str.prefixof var547 var547!1))
(assert true)
(define-const var3751 String (toString/-2075883882 var2997)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/-718667692=([com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var971=com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList, var969=r3, var459=i0, var2030=$r0, var1741=$r1, var3413=$r2, var547=$r4, var3991=$i1, var2997=$r5, var3751=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList=var971, r3=var969, i0=var459, $r0=var2030, $r1=var1741, $r2=var3413, $r4=var547, $i1=var3991, $r5=var2997, $r6=var3751}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:");	$i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.IntArrayList: int size>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1