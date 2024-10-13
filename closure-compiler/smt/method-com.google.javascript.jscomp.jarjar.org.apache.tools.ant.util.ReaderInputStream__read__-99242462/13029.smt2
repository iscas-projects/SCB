(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2593 0)
(declare-sort var1857 0)
(declare-sort var1792 0)
(declare-sort var1567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1857_requireNonNull/1378936425 (var1792 String) var1792)
(declare-fun cast-from-__Array__Int__Int__-to-var1792 ((Array Int Int)) var1792)
(declare-fun var1567-init () var1567)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1567 String) void)
(declare-const null-var2593 var2593)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3127 var2593) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ReaderInputStream 
(assert (not (= var3127 null-var2593)))
(declare-const var1908 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1908 null-__Array__Int__Int__)))
(declare-const var3895 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var3895 null-Int)))
(declare-const var3926 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3926 null-Int)))
;(assert (var1857_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var1792 var1908) "array")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "array") 

(declare-const var1908!1 (Array Int Int))
(declare-const var3528 String)
 ; Statement: if i5 < 0 goto $r16 = new java.lang.IndexOutOfBoundsException 
(assert (< var3926 0)) ; Cond: i5 < 0 
(define-const var2847 var1567 var1567-init) ; Statement: $r16 = new java.lang.IndexOutOfBoundsException 
(define-const var3484 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3484)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3484!1 String)
(assert (= var3484!1 ""))
(assert true)
(define-const var3370 String (append/672562846 var3484!1 "Array Size=")) ; Statement: $r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=") 
(declare-const var3484!2 String)
(assert (= var3484!2 (str.++ var3484!1 "Array Size=")))
(define-const var1057 Int (getLength-Arr-Int-1 var1908!1)) ; Statement: $i6 = lengthof r0 
(assert true)
(define-const var25 String (append/-1001720160 var3370 var1057)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var3370!1 String)
(assert (str.prefixof var3370 var3370!1))
(assert true)
(define-const var3905 String (append/672562846 var25 ", offset=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=") 
(declare-const var25!1 String)
(assert (= var25!1 (str.++ var25 ", offset=")))
(assert true)
(define-const var2660 String (append/-1001720160 var3905 var3895)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var3905!1 String)
(assert (str.prefixof var3905 var3905!1))
(assert true)
(define-const var1616 String (append/672562846 var2660 ", length=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=") 
(declare-const var2660!1 String)
(assert (= var2660!1 (str.++ var2660 ", length=")))
(assert true)
(define-const var1863 String (append/-1001720160 var1616 var3926)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var1616!1 String)
(assert (str.prefixof var1616 var1616!1))
(assert true)
(define-const var2033 String (toString/-2075883882 var1863)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2847 var2033)) ; Statement: specialinvoke $r16.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r14) 

(declare-const var2847!1 var1567)
(declare-const var2033!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1857_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var1792=([byte[]], java.lang.Object), var1567-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2593=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ReaderInputStream, var3127=r1, var1908=r0, var3895=i4, var3926=i5, var1857=java.util.Objects, var1792=java.lang.Object, var3528="array", var1567=java.lang.IndexOutOfBoundsException, var2847=$r16, var3484=$r15, var3370=$r8, var1057=$i6, var25=$r9, var3905=$r10, var2660=$r11, var1616=$r12, var1863=$r13, var2033=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ReaderInputStream=var2593, r1=var3127, r0=var1908, i4=var3895, i5=var3926, java.util.Objects=var1857, java.lang.Object=var1792, "array"=var3528, java.lang.IndexOutOfBoundsException=var1567, $r16=var2847, $r15=var3484, $r8=var3370, $i6=var1057, $r9=var25, $r10=var3905, $r11=var2660, $r12=var1616, $r13=var1863, $r14=var2033}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ReaderInputStream;	r0 := @parameter0: byte[];	i4 := @parameter1: int;	i5 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "array");	if i5 < 0 goto $r16 = new java.lang.IndexOutOfBoundsException;	$r16 = new java.lang.IndexOutOfBoundsException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=");	$i6 = lengthof r0;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r14);	throw $r16
;block_num 2