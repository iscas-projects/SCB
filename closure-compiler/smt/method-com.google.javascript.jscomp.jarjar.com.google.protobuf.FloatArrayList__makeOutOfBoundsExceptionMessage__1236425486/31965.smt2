(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/1173443975 (var3264) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3264 var3264)
(declare-const null-Int Int)
(declare-const var3461 var3264) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList 
(assert (not (= var3461 null-var3264)))
(declare-const var517 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var517 null-Int)))
(define-const var863 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var863)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var863!1 String)
(assert (= var863!1 ""))
(assert true)
(define-const var3025 String (append/672562846 var863!1 "Index:")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:") 
(declare-const var863!2 String)
(assert (= var863!2 (str.++ var863!1 "Index:")))
(assert true)
(define-const var364 String (append/-1001720160 var3025 var517)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3025!1 String)
(assert (str.prefixof var3025 var3025!1))
(assert true)
(define-const var713 String (append/672562846 var364 ", Size:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:") 
(declare-const var364!1 String)
(assert (= var364!1 (str.++ var364 ", Size:")))
(define-const var1124 Int (size/1173443975 var3461)) ; Statement: $i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList: int size> 
(assert true)
(define-const var875 String (append/-1001720160 var713 var1124)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var713!1 String)
(assert (str.prefixof var713 var713!1))
(assert true)
(define-const var3131 String (toString/-2075883882 var875)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/1173443975=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3264=com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList, var3461=r3, var517=i0, var863=$r0, var3025=$r1, var364=$r2, var713=$r4, var1124=$i1, var875=$r5, var3131=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList=var3264, r3=var3461, i0=var517, $r0=var863, $r1=var3025, $r2=var364, $r4=var713, $i1=var1124, $r5=var875, $r6=var3131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:");	$i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FloatArrayList: int size>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1