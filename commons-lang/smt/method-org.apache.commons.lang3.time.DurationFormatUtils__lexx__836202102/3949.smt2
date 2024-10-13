(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3748 0)
(declare-sort var895 0)
(declare-sort var1859 0)
(declare-sort var2040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var895-init () var895)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/1228603609 (var895 Int) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2040-init () var2040)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2040 String) void)
(declare-const null-String String)
(declare-const null-var1859 var1859)
(declare-const var2931 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2931 null-String)))
(define-const var1828 var895 var895-init) ; Statement: $r37 = new java.util.ArrayList 
(assert true)
(define-const var2089 Int (length/-134980193 var2931)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/1228603609 var1828 var2089)) ; Statement: specialinvoke $r37.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var1828!1 var895)
(declare-const var2089!1 Int)
(define-const var3558 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3908 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var1643 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var3922 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var3795 String null-String) ; Statement: r31 = null 
(define-const var118 var1859 null-var1859) ; Statement: r32 = null 
(define-const var1815 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var3671 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var3616 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var3865 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var3883 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var2169 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var553 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2803 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var3057 Int var2803) ; Statement: i3 = $i6 
(define-const var2047 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2987 Int (length/-134980193 var2931)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto (branch) 
(assert (>= var2047 var2987)) ; Cond: i4 >= $i1 
 ; Statement: if z11 == 0 goto (branch) 
(assert (not (= (ite var3908 1 0) 0))) ; Negate: Cond: z11 == 0  
(define-const var1698 var2040 var2040-init) ; Statement: $r48 = new java.lang.IllegalArgumentException 
(define-const var2831 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2831)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2831!1 String)
(assert (= var2831!1 ""))
(assert true)
(define-const var3804 String (append/672562846 var2831!1 "Unmatched quote in format: ")) ; Statement: $r12 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unmatched quote in format: ") 
(declare-const var2831!2 String)
(assert (= var2831!2 (str.++ var2831!1 "Unmatched quote in format: ")))
(assert true)
(define-const var1918 String (append/672562846 var3804 var2931)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3804!1 String)
(assert (= var3804!1 (str.++ var3804 var2931)))
(assert true)
(define-const var1053 String (toString/-2075883882 var1918)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1698 var1053)) ; Statement: specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var1698!1 var2040)
(declare-const var1053!1 String)
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {var895-init=([], java.util.ArrayList), length/-134980193=([java.lang.String], int), <init>/1228603609=([java.util.ArrayList, int], void), cast-from-Int-to-Int=([int], int), var2040-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2931=r1, var3748=null_type, var895=java.util.ArrayList, var1828=$r37, var2089=$i0, var3558=z1, var3908=z11, var1643=z10, var3922=z9, var3795=r31, var1859=org.apache.commons.lang3.time.DurationFormatUtils$Token, var118=r32, var1815=z2, var3671=z8, var3616=z7, var3865=z6, var3883=z5, var2169=z4, var553=z3, var2803=$i6, var3057=i3, var2047=i4, var2987=$i1, var2040=java.lang.IllegalArgumentException, var1698=$r48, var2831=$r47, var3804=$r12, var1918=$r13, var1053=$r14}
; {r1=var2931, null_type=var3748, java.util.ArrayList=var895, $r37=var1828, $i0=var2089, z1=var3558, z11=var3908, z10=var1643, z9=var3922, r31=var3795, org.apache.commons.lang3.time.DurationFormatUtils$Token=var1859, r32=var118, z2=var1815, z8=var3671, z7=var3616, z6=var3865, z5=var3883, z4=var2169, z3=var553, $i6=var2803, i3=var3057, i4=var2047, $i1=var2987, java.lang.IllegalArgumentException=var2040, $r48=var1698, $r47=var2831, $r12=var3804, $r13=var1918, $r14=var1053}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r37 = new java.util.ArrayList;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r37.<java.util.ArrayList: void <init>(int)>($i0);	z1 = 0;	z11 = 0;	z10 = 0;	z9 = 0;	r31 = null;	r32 = null;	z2 = 0;	z8 = 0;	z7 = 0;	z6 = 0;	z5 = 0;	z4 = 0;	z3 = 0;	$i6 = (int) -1;	i3 = $i6;	i4 = 0;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= $i1 goto (branch);	if z11 == 0 goto (branch);	$r48 = new java.lang.IllegalArgumentException;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unmatched quote in format: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r48.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r48
;block_num 4