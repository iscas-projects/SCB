(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1885 0)
(declare-sort var1009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getCreateSequenceString/60336439 (var1885 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1885 var1885)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1560 var1885) ; Statement: r1 := @this: org.hibernate.dialect.MariaDB103Dialect 
(assert (not (= var1560 null-var1885)))
(declare-const var1078 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1078 null-String)))
(declare-const var3713 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3713 null-Int)))
(declare-const var3694 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3694 null-Int)))
(define-const var1325 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1325)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1325!1 String)
(assert (= var1325!1 ""))
(assert true)
(define-const var776 String (getCreateSequenceString/60336439 var1560 var1078)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(assert true)
(define-const var504 String (append/672562846 var1325!1 var776)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1325!2 String)
(assert (= var1325!2 (str.++ var1325!1 var776)))
(assert true)
(define-const var2788 String (append/672562846 var504 " start with ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ") 
(declare-const var504!1 String)
(assert (= var504!1 (str.++ var504 " start with ")))
(assert true)
(define-const var2075 String (append/-1001720160 var2788 var3713)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2788!1 String)
(assert (str.prefixof var2788 var2788!1))
(assert true)
(define-const var2998 String (append/672562846 var2075 " increment by ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ") 
(declare-const var2075!1 String)
(assert (= var2075!1 (str.++ var2075 " increment by ")))
(assert true)
(define-const var2526 String (append/-1001720160 var2998 var3694)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2998!1 String)
(assert (str.prefixof var2998 var2998!1))
(assert true)
(define-const var3042 String (toString/-2075883882 var2526)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i1 <= 0 goto (branch) 
(assert (not (<= var3694 0))) ; Negate: Cond: i1 <= 0  
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var3713 0))) ; Negate: Cond: i0 >= 0  
(define-const var3884 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3884)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3884!1 String)
(assert (= var3884!1 ""))
(assert true)
(define-const var2682 String (append/672562846 var3884!1 var3042)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3884!2 String)
(assert (= var3884!2 (str.++ var3884!1 var3042)))
(assert true)
(define-const var2985 String (append/672562846 var2682 " minvalue ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" minvalue ") 
(declare-const var2682!1 String)
(assert (= var2682!1 (str.++ var2682 " minvalue ")))
(assert true)
(define-const var1150 String (append/-1001720160 var2985 var3713)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2985!1 String)
(assert (str.prefixof var2985 var2985!1))
(assert true)
(define-const var333 String (toString/-2075883882 var1150)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getCreateSequenceString/60336439=([org.hibernate.dialect.MariaDB103Dialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1885=org.hibernate.dialect.MariaDB103Dialect, var1560=r1, var1078=r2, var1009=null_type, var3713=i0, var3694=i1, var1325=$r0, var776=$r3, var504=$r4, var2788=$r5, var2075=$r6, var2998=$r7, var2526=$r8, var3042=r9, var3884=$r15, var2682=$r16, var2985=$r17, var1150=$r18, var333=$r19}
; {org.hibernate.dialect.MariaDB103Dialect=var1885, r1=var1560, r2=var1078, null_type=var1009, i0=var3713, i1=var3694, $r0=var1325, $r3=var776, $r4=var504, $r5=var2788, $r6=var2075, $r7=var2998, $r8=var2526, r9=var3042, $r15=var3884, $r16=var2682, $r17=var2985, $r18=var1150, $r19=var333}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.dialect.MariaDB103Dialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	if i1 <= 0 goto (branch);	if i0 >= 0 goto (branch);	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" minvalue ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 3