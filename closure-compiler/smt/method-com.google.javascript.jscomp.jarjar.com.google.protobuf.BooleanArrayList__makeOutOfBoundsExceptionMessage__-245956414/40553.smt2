(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/-451246533 (var630) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var630 var630)
(declare-const null-Int Int)
(declare-const var3382 var630) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList 
(assert (not (= var3382 null-var630)))
(declare-const var1971 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1971 null-Int)))
(define-const var977 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var977)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var977!1 String)
(assert (= var977!1 ""))
(assert true)
(define-const var70 String (append/672562846 var977!1 "Index:")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:") 
(declare-const var977!2 String)
(assert (= var977!2 (str.++ var977!1 "Index:")))
(assert true)
(define-const var1619 String (append/-1001720160 var70 var1971)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var70!1 String)
(assert (str.prefixof var70 var70!1))
(assert true)
(define-const var533 String (append/672562846 var1619 ", Size:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:") 
(declare-const var1619!1 String)
(assert (= var1619!1 (str.++ var1619 ", Size:")))
(define-const var3049 Int (size/-451246533 var3382)) ; Statement: $i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList: int size> 
(assert true)
(define-const var2789 String (append/-1001720160 var533 var3049)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var533!1 String)
(assert (str.prefixof var533 var533!1))
(assert true)
(define-const var604 String (toString/-2075883882 var2789)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/-451246533=([com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var630=com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList, var3382=r3, var1971=i0, var977=$r0, var70=$r1, var1619=$r2, var533=$r4, var3049=$i1, var2789=$r5, var604=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList=var630, r3=var3382, i0=var1971, $r0=var977, $r1=var70, $r2=var1619, $r4=var533, $i1=var3049, $r5=var2789, $r6=var604}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:");	$i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.BooleanArrayList: int size>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1