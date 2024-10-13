(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun clazz/1483157849 (var1857) ClassObject)
(declare-fun getCanonicalName/935544231 (ClassObject) String)
(declare-fun instances/1483157849 (var1857) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun bytes/1483157849 (var1857) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1857 var1857)
(declare-const var3553 var1857) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.ClassHistogramElement 
(assert (not (= var3553 null-var1857)))
(define-const var2488 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2488)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2488!1 String)
(assert (= var2488!1 ""))
(assert true)
(define-const var3904 String (append/672562846 var2488!1 "ClassHistogramElement[class=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ClassHistogramElement[class=") 
(declare-const var2488!2 String)
(assert (= var2488!2 (str.++ var2488!1 "ClassHistogramElement[class=")))
(define-const var1735 ClassObject (clazz/1483157849 var3553)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.debug.ClassHistogramElement: java.lang.Class clazz> 
(assert true)
(define-const var860 String (getCanonicalName/935544231 var1735)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getCanonicalName()>() 
(assert true)
(define-const var1480 String (append/672562846 var3904 var860)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3904!1 String)
(assert (= var3904!1 (str.++ var3904 var860)))
(assert true)
(define-const var1823 String (append/672562846 var1480 ", instances=")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", instances=") 
(declare-const var1480!1 String)
(assert (= var1480!1 (str.++ var1480 ", instances=")))
(define-const var1211 Int (instances/1483157849 var3553)) ; Statement: $l0 = r1.<jdk.nashorn.internal.ir.debug.ClassHistogramElement: long instances> 
(assert true)
(define-const var2312 String (append/-901862667 var1823 var1211)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1823!1 String)
(assert (str.prefixof var1823 var1823!1))
(assert true)
(define-const var2114 String (append/672562846 var2312 ", bytes=")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", bytes=") 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 ", bytes=")))
(define-const var2822 Int (bytes/1483157849 var3553)) ; Statement: $l1 = r1.<jdk.nashorn.internal.ir.debug.ClassHistogramElement: long bytes> 
(assert true)
(define-const var2888 String (append/-901862667 var2114 var2822)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var2114!1 String)
(assert (str.prefixof var2114 var2114!1))
(assert true)
(define-const var2739 String (append/672562846 var2888 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 "]")))
(assert true)
(define-const var2169 String (toString/-2075883882 var2739)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), clazz/1483157849=([jdk.nashorn.internal.ir.debug.ClassHistogramElement], java.lang.Class), getCanonicalName/935544231=([java.lang.Class], java.lang.String), instances/1483157849=([jdk.nashorn.internal.ir.debug.ClassHistogramElement], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), bytes/1483157849=([jdk.nashorn.internal.ir.debug.ClassHistogramElement], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1857=jdk.nashorn.internal.ir.debug.ClassHistogramElement, var3553=r1, var2488=$r0, var3904=$r4, var1735=$r2, var860=$r3, var1480=$r5, var1823=$r6, var1211=$l0, var2312=$r7, var2114=$r8, var2822=$l1, var2888=$r9, var2739=$r10, var2169=$r11}
; {jdk.nashorn.internal.ir.debug.ClassHistogramElement=var1857, r1=var3553, $r0=var2488, $r4=var3904, $r2=var1735, $r3=var860, $r5=var1480, $r6=var1823, $l0=var1211, $r7=var2312, $r8=var2114, $l1=var2822, $r9=var2888, $r10=var2739, $r11=var2169}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.ClassHistogramElement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ClassHistogramElement[class=");	$r2 = r1.<jdk.nashorn.internal.ir.debug.ClassHistogramElement: java.lang.Class clazz>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getCanonicalName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", instances=");	$l0 = r1.<jdk.nashorn.internal.ir.debug.ClassHistogramElement: long instances>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", bytes=");	$l1 = r1.<jdk.nashorn.internal.ir.debug.ClassHistogramElement: long bytes>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1