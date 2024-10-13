(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1710 0)
(declare-sort var3684 0)
(declare-sort var227 0)
(declare-sort var3097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3684_getLength/1005357804 (var1710) Int)
(declare-fun var3684_clone/1678787205 ((Array Int Int)) (Array Int Int))
(declare-fun var227_sort/-179590612 ((Array Int Int)) (Array Int Int))
(declare-fun var3684_isNotEmpty/-1513181023 ((Array Int Int)) Bool)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3097-init () var3097)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3097 String) void)
(declare-const null-var1710 var1710)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2784 var1710) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2784 null-var1710)))
(declare-const var1173 (Array Int Int)) ; Statement: r1 := @parameter1: int[] 
(assert (not (= var1173 null-__Array__Int__Int__)))
(define-const var1877 Int (var3684_getLength/1005357804 var2784)) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int getLength(java.lang.Object)>(r0) 
(define-const var2531 Int 0) ; Statement: i8 = 0 
(define-const var2489 (Array Int Int) (var3684_clone/1678787205 var1173)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int[] clone(int[])>(r1) 
(define-const var407 (Array Int Int) (var227_sort/-179590612 var2489)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.ArraySorter: int[] sort(int[])>($r2) 
(define-const var3732 Bool (var3684_isNotEmpty/-1513181023 var407)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: boolean isNotEmpty(int[])>(r3) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var3732 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3193 Int (getLength-Arr-Int-1 var407)) ; Statement: i9 = lengthof r3 
(define-const var2450 Int var1877) ; Statement: i10 = i0 
(assert true) ; Non Conditional
(define-const var3697 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
(define-const var3193!1 Int (+ var3193 var3697)) ; Statement: i9 = i9 + $i16 
 ; Statement: if i9 < 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (< var3193!1 0))) ; Negate: Cond: i9 < 0  
(define-const var75 Int (select var407 var3193!1)) ; Statement: i11 = r3[i9] 
 ; Statement: if i11 < 0 goto $r15 = new java.lang.IndexOutOfBoundsException 
(assert (< var75 0)) ; Cond: i11 < 0 
(define-const var668 var3097 var3097-init) ; Statement: $r15 = new java.lang.IndexOutOfBoundsException 
(define-const var893 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var893)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var893!1 String)
(assert (= var893!1 ""))
(assert true)
(define-const var1420 String (append/672562846 var893!1 "Index: ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ") 
(declare-const var893!2 String)
(assert (= var893!2 (str.++ var893!1 "Index: ")))
(assert true)
(define-const var1071 String (append/-1001720160 var1420 var75)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i11) 
(declare-const var1420!1 String)
(assert (str.prefixof var1420 var1420!1))
(assert true)
(define-const var507 String (append/672562846 var1071 ", Length: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: ") 
(declare-const var1071!1 String)
(assert (= var1071!1 (str.++ var1071 ", Length: ")))
(assert true)
(define-const var553 String (append/-1001720160 var507 var1877)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var507!1 String)
(assert (str.prefixof var507 var507!1))
(assert true)
(define-const var232 String (toString/-2075883882 var553)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var668 var232)) ; Statement: specialinvoke $r15.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r13) 

(declare-const var668!1 var3097)
(declare-const var232!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3684_getLength/1005357804=([java.lang.Object], int), var3684_clone/1678787205=([int[]], int[]), var227_sort/-179590612=([int[]], int[]), var3684_isNotEmpty/-1513181023=([int[]], boolean), getLength-Arr-Int-1=([int[]], int), cast-from-Int-to-Int=([int], int), var3097-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1710=java.lang.Object, var2784=r0, var1173=r1, var3684=org.apache.commons.lang3.ArrayUtils, var1877=i0, var2531=i8, var2489=$r2, var227=org.apache.commons.lang3.ArraySorter, var407=r3, var3732=$z0, var3193=i9, var2450=i10, var3697=$i16, var75=i11, var3097=java.lang.IndexOutOfBoundsException, var668=$r15, var893=$r14, var1420=$r9, var1071=$r10, var507=$r11, var553=$r12, var232=$r13}
; {java.lang.Object=var1710, r0=var2784, r1=var1173, org.apache.commons.lang3.ArrayUtils=var3684, i0=var1877, i8=var2531, $r2=var2489, org.apache.commons.lang3.ArraySorter=var227, r3=var407, $z0=var3732, i9=var3193, i10=var2450, $i16=var3697, i11=var75, java.lang.IndexOutOfBoundsException=var3097, $r15=var668, $r14=var893, $r9=var1420, $r10=var1071, $r11=var507, $r12=var553, $r13=var232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 := @parameter1: int[];	i0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int getLength(java.lang.Object)>(r0);	i8 = 0;	$r2 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int[] clone(int[])>(r1);	r3 = staticinvoke <org.apache.commons.lang3.ArraySorter: int[] sort(int[])>($r2);	$z0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: boolean isNotEmpty(int[])>(r3);	if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	i9 = lengthof r3;	i10 = i0;	$i16 = (int) -1;	i9 = i9 + $i16;	if i9 < 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	i11 = r3[i9];	if i11 < 0 goto $r15 = new java.lang.IndexOutOfBoundsException;	$r15 = new java.lang.IndexOutOfBoundsException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i11);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Length: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r13);	throw $r15
;block_num 5