(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/-1212731046 (var3919) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3919 var3919)
(declare-const null-Int Int)
(declare-const var2833 var3919) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList 
(assert (not (= var2833 null-var3919)))
(declare-const var2173 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2173 null-Int)))
(define-const var3294 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3294)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3294!1 String)
(assert (= var3294!1 ""))
(assert true)
(define-const var1581 String (append/672562846 var3294!1 "Index:")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:") 
(declare-const var3294!2 String)
(assert (= var3294!2 (str.++ var3294!1 "Index:")))
(assert true)
(define-const var3609 String (append/-1001720160 var1581 var2173)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1581!1 String)
(assert (str.prefixof var1581 var1581!1))
(assert true)
(define-const var2295 String (append/672562846 var3609 ", Size:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:") 
(declare-const var3609!1 String)
(assert (= var3609!1 (str.++ var3609 ", Size:")))
(define-const var3871 Int (size/-1212731046 var2833)) ; Statement: $i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList: int size> 
(assert true)
(define-const var1952 String (append/-1001720160 var2295 var3871)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2295!1 String)
(assert (str.prefixof var2295 var2295!1))
(assert true)
(define-const var3514 String (toString/-2075883882 var1952)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/-1212731046=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3919=com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList, var2833=r3, var2173=i0, var3294=$r0, var1581=$r1, var3609=$r2, var2295=$r4, var3871=$i1, var1952=$r5, var3514=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList=var3919, r3=var2833, i0=var2173, $r0=var3294, $r1=var1581, $r2=var3609, $r4=var2295, $i1=var3871, $r5=var1952, $r6=var3514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:");	$i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DoubleArrayList: int size>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1