(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1217 0)
(declare-sort var1944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/-171891354 (String) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-const null-var1217 var1217)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var42 var1217) ; Statement: r15 := @this: org.hibernate.dialect.Ingres9Dialect 
(assert (not (= var42 null-var1217)))
(declare-const var1467 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var1467 null-String)))
(declare-const var2200 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2200 null-Int)))
(declare-const var395 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var395 null-Int)))
(define-const var829 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var227 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var227)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var227!1 String)
(assert (= var227!1 ""))
(assert true)
(define-const var2655 String (append/672562846 var227!1 " offset ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(declare-const var227!2 String)
(assert (= var227!2 (str.++ var227!1 " offset ")))
(assert true)
(define-const var3069 String (append/-1001720160 var2655 var2200)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2655!1 String)
(assert (str.prefixof var2655 var2655!1))
(assert true)
(define-const var3649 String (toString/-2075883882 var3069)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var829 var3649)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var829!1 String)
(assert (= var829!1 var3649))
(define-const var2733 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var1368 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1368)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1368!1 String)
(assert (= var1368!1 ""))
(assert true)
(define-const var2119 String (append/672562846 var1368!1 " fetch first ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var1368!2 String)
(assert (= var1368!2 (str.++ var1368!1 " fetch first ")))
(assert true)
(define-const var141 String (append/-1001720160 var2119 var395)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2119!1 String)
(assert (str.prefixof var2119 var2119!1))
(assert true)
(define-const var2402 String (append/672562846 var141 " rows only")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var141!1 String)
(assert (= var141!1 (str.++ var141 " rows only")))
(assert true)
(define-const var379 String (toString/-2075883882 var2402)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2733 var379)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r10) 
(declare-const var2733!1 String)
(assert (= var2733!1 var379))
(define-const var2780 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
(define-const var2785 Int (length/-134980193 var1467)) ; Statement: $i3 = virtualinvoke r12.<java.lang.String: int length()>() 
(assert true)
(define-const var862 Int (length/-171891354 var829!1)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(define-const var441 Int (+ var2785 var862)) ; Statement: $i5 = $i3 + $i2 
(assert true)
(define-const var2234 Int (length/-171891354 var2733!1)) ; Statement: $i4 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>() 
(define-const var1600 Int (+ var441 var2234)) ; Statement: $i6 = $i5 + $i4 
(assert true)
;(assert (<init>/543593434 var2780 var1600)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>($i6) 

(declare-const var2780!1 String)
(declare-const var1600!1 Int)
(assert true)
(define-const var3227 String (append/672562846 var2780!1 var1467)) ; Statement: r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var2780!2 String)
(assert (= var2780!2 (str.++ var2780!1 var1467)))
 ; Statement: if i0 <= 0 goto (branch) 
(assert (<= var2200 0)) ; Cond: i0 <= 0 
 ; Statement: if i1 <= 0 goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var395 0)) ; Cond: i1 <= 0 
(assert true)
(define-const var690 String (toString/-2075883882 var3227)) ; Statement: $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-134980193=([java.lang.String], int), length/-171891354=([java.lang.StringBuilder], int), <init>/543593434=([java.lang.StringBuilder, int], void)}
; {var1217=org.hibernate.dialect.Ingres9Dialect, var42=r15, var1467=r12, var1944=null_type, var2200=i0, var395=i1, var829=$r0, var227=$r1, var2655=$r2, var3069=$r3, var3649=$r4, var2733=$r5, var1368=$r6, var2119=$r7, var141=$r8, var2402=$r9, var379=$r10, var2780=$r11, var2785=$i3, var862=$i2, var441=$i5, var2234=$i4, var1600=$i6, var3227=r13, var690=$r14}
; {org.hibernate.dialect.Ingres9Dialect=var1217, r15=var42, r12=var1467, null_type=var1944, i0=var2200, i1=var395, $r0=var829, $r1=var227, $r2=var2655, $r3=var3069, $r4=var3649, $r5=var2733, $r6=var1368, $r7=var2119, $r8=var141, $r9=var2402, $r10=var379, $r11=var2780, $i3=var2785, $i2=var862, $i5=var441, $i4=var2234, $i6=var1600, r13=var3227, $r14=var690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r15 := @this: org.hibernate.dialect.Ingres9Dialect;	r12 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r5 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r10);	$r11 = new java.lang.StringBuilder;	$i3 = virtualinvoke r12.<java.lang.String: int length()>();	$i2 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i5 = $i3 + $i2;	$i4 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	$i6 = $i5 + $i4;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>($i6);	r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	if i0 <= 0 goto (branch);	if i1 <= 0 goto $r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3