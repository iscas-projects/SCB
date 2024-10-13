(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3278 0)
(declare-sort var1732 0)
(declare-sort var2973 0)
(declare-sort var1704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1732_checkNotNull/1446102589 (var2973) var2973)
(declare-fun cast-from-String-to-var2973 (String) var2973)
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-fun var1704-init () var1704)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var1704 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1382 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1382 null-String)))
(declare-const var556 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var556 null-Int)))
;(assert (var1732_checkNotNull/1446102589 (cast-from-String-to-var2973 var1382))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1382!1 String)
(define-const var1914 Int (Int_parseLong/758265864 var1382!1 var556)) ; Statement: l1 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r0, i0) 
(define-const var21 Int (bv2nat (bvand ((_ int2bv 64) var1914) ((_ int2bv 64) 4294967295)))) ; Statement: $l2 = l1 & 4294967295L 
(define-const var3348 Int (ite (> var21 var1914) 1 (ite (< var21 var1914) (- 1) 0))) ; Statement: $b3 = $l2 cmp l1 
 ; Statement: if $b3 == 0 goto $i4 = (int) l1 
(assert (not (= var3348 0))) ; Negate: Cond: $b3 == 0  
(define-const var3888 var1704 var1704-init) ; Statement: $r1 = new java.lang.NumberFormatException 
(define-const var2522 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2522)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2522!1 String)
(assert (= var2522!1 ""))
(assert true)
(define-const var1412 String (append/672562846 var2522!1 "Input ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Input ") 
(declare-const var2522!2 String)
(assert (= var2522!2 (str.++ var2522!1 "Input ")))
(assert true)
(define-const var1484 String (append/672562846 var1412 var1382!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1412!1 String)
(assert (= var1412!1 (str.++ var1412 var1382!1)))
(assert true)
(define-const var939 String (append/672562846 var1484 " in base ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in base ") 
(declare-const var1484!1 String)
(assert (= var1484!1 (str.++ var1484 " in base ")))
(assert true)
(define-const var891 String (append/-1001720160 var939 var556)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var939!1 String)
(assert (str.prefixof var939 var939!1))
(assert true)
(define-const var726 String (append/672562846 var891 " is not in the range of an unsigned integer")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not in the range of an unsigned integer") 
(declare-const var891!1 String)
(assert (= var891!1 (str.++ var891 " is not in the range of an unsigned integer")))
(assert true)
(define-const var555 String (toString/-2075883882 var726)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var3888 var555)) ; Statement: specialinvoke $r1.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r8) 

(declare-const var3888!1 var1704)
(declare-const var555!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1732_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2973=([java.lang.String], java.lang.Object), Int_parseLong/758265864=([java.lang.String, int], long), var1704-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var1382=r0, var3278=null_type, var556=i0, var1732=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2973=java.lang.Object, var1914=l1, var21=$l2, var3348=$b3, var1704=java.lang.NumberFormatException, var3888=$r1, var2522=$r2, var1412=$r3, var1484=$r4, var939=$r5, var891=$r6, var726=$r7, var555=$r8}
; {r0=var1382, null_type=var3278, i0=var556, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1732, java.lang.Object=var2973, l1=var1914, $l2=var21, $b3=var3348, java.lang.NumberFormatException=var1704, $r1=var3888, $r2=var2522, $r3=var1412, $r4=var1484, $r5=var939, $r6=var891, $r7=var726, $r8=var555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	l1 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r0, i0);	$l2 = l1 & 4294967295L;	$b3 = $l2 cmp l1;	if $b3 == 0 goto $i4 = (int) l1;	$r1 = new java.lang.NumberFormatException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Input ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in base ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not in the range of an unsigned integer");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2