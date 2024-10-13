(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/1686408207 (var638) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var638 var638)
(declare-const null-Int Int)
(declare-const var1535 var638) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList 
(assert (not (= var1535 null-var638)))
(declare-const var2614 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2614 null-Int)))
(define-const var3382 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3382)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3382!1 String)
(assert (= var3382!1 ""))
(assert true)
(define-const var288 String (append/672562846 var3382!1 "Index:")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:") 
(declare-const var3382!2 String)
(assert (= var3382!2 (str.++ var3382!1 "Index:")))
(assert true)
(define-const var125 String (append/-1001720160 var288 var2614)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var288!1 String)
(assert (str.prefixof var288 var288!1))
(assert true)
(define-const var859 String (append/672562846 var125 ", Size:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:") 
(declare-const var125!1 String)
(assert (= var125!1 (str.++ var125 ", Size:")))
(define-const var858 Int (size/1686408207 var1535)) ; Statement: $i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList: int size> 
(assert true)
(define-const var2087 String (append/-1001720160 var859 var858)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var859!1 String)
(assert (str.prefixof var859 var859!1))
(assert true)
(define-const var2961 String (toString/-2075883882 var2087)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/1686408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var638=com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList, var1535=r3, var2614=i0, var3382=$r0, var288=$r1, var125=$r2, var859=$r4, var858=$i1, var2087=$r5, var2961=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList=var638, r3=var1535, i0=var2614, $r0=var3382, $r1=var288, $r2=var125, $r4=var859, $i1=var858, $r5=var2087, $r6=var2961}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:");	$i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.LongArrayList: int size>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1