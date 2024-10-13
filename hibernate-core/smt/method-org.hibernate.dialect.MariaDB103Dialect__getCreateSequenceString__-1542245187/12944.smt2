(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1706 0)
(declare-sort var3070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getCreateSequenceString/60336439 (var1706 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1706 var1706)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3169 var1706) ; Statement: r1 := @this: org.hibernate.dialect.MariaDB103Dialect 
(assert (not (= var3169 null-var1706)))
(declare-const var1772 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1772 null-String)))
(declare-const var3286 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3286 null-Int)))
(declare-const var2 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2 null-Int)))
(define-const var1601 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1601)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1601!1 String)
(assert (= var1601!1 ""))
(assert true)
(define-const var260 String (getCreateSequenceString/60336439 var3169 var1772)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(assert true)
(define-const var2077 String (append/672562846 var1601!1 var260)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1601!2 String)
(assert (= var1601!2 (str.++ var1601!1 var260)))
(assert true)
(define-const var2499 String (append/672562846 var2077 " start with ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ") 
(declare-const var2077!1 String)
(assert (= var2077!1 (str.++ var2077 " start with ")))
(assert true)
(define-const var3920 String (append/-1001720160 var2499 var3286)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2499!1 String)
(assert (str.prefixof var2499 var2499!1))
(assert true)
(define-const var3944 String (append/672562846 var3920 " increment by ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ") 
(declare-const var3920!1 String)
(assert (= var3920!1 (str.++ var3920 " increment by ")))
(assert true)
(define-const var867 String (append/-1001720160 var3944 var2)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3944!1 String)
(assert (str.prefixof var3944 var3944!1))
(assert true)
(define-const var2844 String (toString/-2075883882 var867)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i1 <= 0 goto (branch) 
(assert (<= var2 0)) ; Cond: i1 <= 0 
 ; Statement: if i1 >= 0 goto return r9 
(assert (>= var2 0)) ; Cond: i1 >= 0 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getCreateSequenceString/60336439=([org.hibernate.dialect.MariaDB103Dialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1706=org.hibernate.dialect.MariaDB103Dialect, var3169=r1, var1772=r2, var3070=null_type, var3286=i0, var2=i1, var1601=$r0, var260=$r3, var2077=$r4, var2499=$r5, var3920=$r6, var3944=$r7, var867=$r8, var2844=r9}
; {org.hibernate.dialect.MariaDB103Dialect=var1706, r1=var3169, r2=var1772, null_type=var3070, i0=var3286, i1=var2, $r0=var1601, $r3=var260, $r4=var2077, $r5=var2499, $r6=var3920, $r7=var3944, $r8=var867, r9=var2844}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MariaDB103Dialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.MariaDB103Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" start with ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" increment by ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	if i1 <= 0 goto (branch);	if i1 >= 0 goto return r9;	return r9
;block_num 3