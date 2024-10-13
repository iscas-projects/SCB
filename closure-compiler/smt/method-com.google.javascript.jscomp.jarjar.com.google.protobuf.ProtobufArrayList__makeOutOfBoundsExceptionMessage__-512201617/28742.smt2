(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun size/-1870946848 (var2560) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2560 var2560)
(declare-const null-Int Int)
(declare-const var3965 var2560) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtobufArrayList 
(assert (not (= var3965 null-var2560)))
(declare-const var1056 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1056 null-Int)))
(define-const var809 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var809)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var809!1 String)
(assert (= var809!1 ""))
(assert true)
(define-const var1159 String (append/672562846 var809!1 "Index:")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:") 
(declare-const var809!2 String)
(assert (= var809!2 (str.++ var809!1 "Index:")))
(assert true)
(define-const var3610 String (append/-1001720160 var1159 var1056)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1159!1 String)
(assert (str.prefixof var1159 var1159!1))
(assert true)
(define-const var1128 String (append/672562846 var3610 ", Size:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:") 
(declare-const var3610!1 String)
(assert (= var3610!1 (str.++ var3610 ", Size:")))
(define-const var2046 Int (size/-1870946848 var3965)) ; Statement: $i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtobufArrayList: int size> 
(assert true)
(define-const var691 String (append/-1001720160 var1128 var2046)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1128!1 String)
(assert (str.prefixof var1128 var1128!1))
(assert true)
(define-const var559 String (toString/-2075883882 var691)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), size/-1870946848=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtobufArrayList], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2560=com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtobufArrayList, var3965=r3, var1056=i0, var809=$r0, var1159=$r1, var3610=$r2, var1128=$r4, var2046=$i1, var691=$r5, var559=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtobufArrayList=var2560, r3=var3965, i0=var1056, $r0=var809, $r1=var1159, $r2=var3610, $r4=var1128, $i1=var2046, $r5=var691, $r6=var559}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtobufArrayList;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index:");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size:");	$i1 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtobufArrayList: int size>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1