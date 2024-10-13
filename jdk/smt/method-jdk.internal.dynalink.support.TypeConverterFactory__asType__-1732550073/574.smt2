(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort var1128 0)
(declare-sort var1027 0)
(declare-sort var2480 0)
(declare-sort var662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/705534411 (var1128) var1027)
(declare-fun parameterCount/-1075445345 (var1027) Int)
(declare-fun var2480-init () var2480)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var662) String)
(declare-fun cast-from-var1027-to-var662 (var1027) var662)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1736591927 (var2480 String) void)
(declare-const null-var841 var841)
(declare-const null-var1128 var1128)
(declare-const null-var1027 var1027)
(declare-const var3786 var841) ; Statement: r5 := @this: jdk.internal.dynalink.support.TypeConverterFactory 
(assert (not (= var3786 null-var841)))
(declare-const var2095 var1128) ; Statement: r0 := @parameter0: java.lang.invoke.MethodHandle 
(assert (not (= var2095 null-var1128)))
(declare-const var3252 var1027) ; Statement: r2 := @parameter1: java.lang.invoke.MethodType 
(assert (not (= var3252 null-var1027)))
(define-const var2704 var1128 var2095) ; Statement: r18 = r0 
(assert true)
(define-const var174 var1027 (type/705534411 var2095)) ; Statement: r1 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var1554 Int (parameterCount/-1075445345 var174)) ; Statement: i0 = virtualinvoke r1.<java.lang.invoke.MethodType: int parameterCount()>() 
(assert true)
(define-const var1101 Int (parameterCount/-1075445345 var3252)) ; Statement: $i1 = virtualinvoke r2.<java.lang.invoke.MethodType: int parameterCount()>() 
 ; Statement: if i0 == $i1 goto i2 = 0 
(assert (not (= var1554 var1101))) ; Negate: Cond: i0 == $i1  
(define-const var66 var2480 var2480-init) ; Statement: $r10 = new java.lang.invoke.WrongMethodTypeException 
(define-const var1674 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1674)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1674!1 String)
(assert (= var1674!1 ""))
(assert true)
(define-const var1851 String (append/672562846 var1674!1 "Parameter counts differ: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter counts differ: ") 
(declare-const var1674!2 String)
(assert (= var1674!2 (str.++ var1674!1 "Parameter counts differ: ")))
(assert true)
(define-const var672 var1027 (type/705534411 var2095)) ; Statement: $r12 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var988 String (append/-1031950772 var1851 (cast-from-var1027-to-var662 var672))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var1851!1 String)
(assert (str.prefixof var1851 var1851!1))
(assert true)
(define-const var3685 String (append/672562846 var988 " vs. ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" vs. ") 
(declare-const var988!1 String)
(assert (= var988!1 (str.++ var988 " vs. ")))
(assert true)
(define-const var1468 String (append/-1031950772 var3685 (cast-from-var1027-to-var662 var3252))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3685!1 String)
(assert (str.prefixof var3685 var3685!1))
(assert true)
(define-const var2888 String (toString/-2075883882 var1468)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1736591927 var66 var2888)) ; Statement: specialinvoke $r10.<java.lang.invoke.WrongMethodTypeException: void <init>(java.lang.String)>($r17) 

(declare-const var66!1 var2480)
(declare-const var2888!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), parameterCount/-1075445345=([java.lang.invoke.MethodType], int), var2480-init=([], java.lang.invoke.WrongMethodTypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1027-to-var662=([java.lang.invoke.MethodType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1736591927=([java.lang.invoke.WrongMethodTypeException, java.lang.String], void)}
; {var841=jdk.internal.dynalink.support.TypeConverterFactory, var3786=r5, var1128=java.lang.invoke.MethodHandle, var2095=r0, var1027=java.lang.invoke.MethodType, var3252=r2, var2704=r18, var174=r1, var1554=i0, var1101=$i1, var2480=java.lang.invoke.WrongMethodTypeException, var66=$r10, var1674=$r11, var1851=$r13, var672=$r12, var662=java.lang.Object, var988=$r14, var3685=$r15, var1468=$r16, var2888=$r17}
; {jdk.internal.dynalink.support.TypeConverterFactory=var841, r5=var3786, java.lang.invoke.MethodHandle=var1128, r0=var2095, java.lang.invoke.MethodType=var1027, r2=var3252, r18=var2704, r1=var174, i0=var1554, $i1=var1101, java.lang.invoke.WrongMethodTypeException=var2480, $r10=var66, $r11=var1674, $r13=var1851, $r12=var672, java.lang.Object=var662, $r14=var988, $r15=var3685, $r16=var1468, $r17=var2888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.internal.dynalink.support.TypeConverterFactory;	r0 := @parameter0: java.lang.invoke.MethodHandle;	r2 := @parameter1: java.lang.invoke.MethodType;	r18 = r0;	r1 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	i0 = virtualinvoke r1.<java.lang.invoke.MethodType: int parameterCount()>();	$i1 = virtualinvoke r2.<java.lang.invoke.MethodType: int parameterCount()>();	if i0 == $i1 goto i2 = 0;	$r10 = new java.lang.invoke.WrongMethodTypeException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter counts differ: ");	$r12 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" vs. ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.invoke.WrongMethodTypeException: void <init>(java.lang.String)>($r17);	throw $r10
;block_num 2