(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1097 0)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1476) ClassObject)
(declare-fun cast-from-var1097-to-var1476 (var1097) var1476)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun charsetName/-139650297 (var1097) String)
(declare-fun bytes/-139650297 (var1097) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1097 var1097)
(declare-const var2503 var1097) ; Statement: r1 := @this: org.apache.commons.io.ByteOrderMark 
(assert (not (= var2503 null-var1097)))
(define-const var2524 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2524)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2524!1 String)
(assert (= var2524!1 ""))
(assert true)
(define-const var2131 ClassObject (getClass/1258963082 (cast-from-var1097-to-var1476 var2503))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var549 String (getSimpleName/-390194377 var2131)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var2524!1 var549)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2524!2 String)
(assert (= var2524!2 (str.++ var2524!1 var549)))
(assert true)
;(assert (append/-1166366385 var2524!2 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2524!3 String)
(assert (str.prefixof var2524!2 var2524!3))
(define-const var2404 String (charsetName/-139650297 var2503)) ; Statement: $r4 = r1.<org.apache.commons.io.ByteOrderMark: java.lang.String charsetName> 
(assert true)
;(assert (append/672562846 var2524!3 var2404)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2524!4 String)
(assert (= var2524!4 (str.++ var2524!3 var2404)))
(assert true)
;(assert (append/672562846 var2524!4 ": ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2524!5 String)
(assert (= var2524!5 (str.++ var2524!4 ": ")))
(define-const var3353 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2143 (Array Int Int) (bytes/-139650297 var2503)) ; Statement: $r5 = r1.<org.apache.commons.io.ByteOrderMark: int[] bytes> 
(define-const var2466 Int (getLength-Arr-Int-1 var2143)) ; Statement: $i0 = lengthof $r5 
 ; Statement: if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var3353 var2466)) ; Cond: i3 >= $i0 
(assert true)
;(assert (append/-1166366385 var2524!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2524!6 String)
(assert (str.prefixof var2524!5 var2524!6))
(assert true)
(define-const var2548 String (toString/-2075883882 var2524!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1097-to-var1476=([org.apache.commons.io.ByteOrderMark], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), charsetName/-139650297=([org.apache.commons.io.ByteOrderMark], java.lang.String), bytes/-139650297=([org.apache.commons.io.ByteOrderMark], int[]), getLength-Arr-Int-1=([int[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1097=org.apache.commons.io.ByteOrderMark, var2503=r1, var2524=$r0, var1476=java.lang.Object, var2131=$r2, var549=$r3, var2404=$r4, var3353=i3, var2143=$r5, var2466=$i0, var2548=$r6}
; {org.apache.commons.io.ByteOrderMark=var1097, r1=var2503, $r0=var2524, java.lang.Object=var1476, $r2=var2131, $r3=var549, $r4=var2404, i3=var3353, $r5=var2143, $i0=var2466, $r6=var2548}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.ByteOrderMark;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r4 = r1.<org.apache.commons.io.ByteOrderMark: java.lang.String charsetName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	i3 = 0;	$r5 = r1.<org.apache.commons.io.ByteOrderMark: int[] bytes>;	$i0 = lengthof $r5;	if i3 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3