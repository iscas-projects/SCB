(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3412 0)
(declare-sort var220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var220-init () var220)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var220 String) void)
(declare-const null-var3412 var3412)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1315 var3412) ; Statement: r15 := @this: org.apache.ibatis.javassist.bytecode.CodeAnalyzer 
(assert (not (= var1315 null-var3412)))
(declare-const var856 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var856 null-Int)))
(declare-const var72 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var72 null-Int)))
(declare-const var3493 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3493 null-Int)))
(declare-const var3878 (Array Int Int)) ; Statement: r5 := @parameter3: int[] 
(assert (not (= var3878 null-__Array__Int__Int__)))
(declare-const var1466 Int) ; Statement: i4 := @parameter4: int 
(assert (not (= var1466 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(assert (< var72 0)) ; Cond: i0 < 0 
(define-const var1599 var220 var220-init) ; Statement: $r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var558 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var558)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var558!1 String)
(assert (= var558!1 ""))
(assert true)
(define-const var1069 String (append/672562846 var558!1 "bad branch offset at ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad branch offset at ") 
(declare-const var558!2 String)
(assert (= var558!2 (str.++ var558!1 "bad branch offset at ")))
(assert true)
(define-const var2092 String (append/-1001720160 var1069 var856)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1069!1 String)
(assert (str.prefixof var1069 var1069!1))
(assert true)
(define-const var989 String (toString/-2075883882 var2092)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var1599 var989)) ; Statement: specialinvoke $r0.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r4) 

(declare-const var1599!1 var220)
(declare-const var989!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var220-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var3412=org.apache.ibatis.javassist.bytecode.CodeAnalyzer, var1315=r15, var856=i1, var72=i0, var3493=i2, var3878=r5, var1466=i4, var220=org.apache.ibatis.javassist.bytecode.BadBytecode, var1599=$r0, var558=$r1, var1069=$r2, var2092=$r3, var989=$r4}
; {org.apache.ibatis.javassist.bytecode.CodeAnalyzer=var3412, r15=var1315, i1=var856, i0=var72, i2=var3493, r5=var3878, i4=var1466, org.apache.ibatis.javassist.bytecode.BadBytecode=var220, $r0=var1599, $r1=var558, $r2=var1069, $r3=var2092, $r4=var989}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.apache.ibatis.javassist.bytecode.CodeAnalyzer;	i1 := @parameter0: int;	i0 := @parameter1: int;	i2 := @parameter2: int;	r5 := @parameter3: int[];	i4 := @parameter4: int;	if i0 < 0 goto $r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r0 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad branch offset at ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2