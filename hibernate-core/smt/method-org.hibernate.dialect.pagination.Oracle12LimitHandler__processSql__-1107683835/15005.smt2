(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1991 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bindLimitParametersInReverseOrder/437885140 (var1991) Bool)
(declare-fun useMaxForLimit/437885140 (var1991) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1991 var1991)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1033 var1991) ; Statement: r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler 
(assert (not (= var1033 null-var1991)))
(declare-const var3359 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3359 null-String)))
(declare-const var2786 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2786 null-Int)))
(declare-const var2199 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2199 null-Bool)))
(declare-const var1033!1 var1991)
(assert (not (= var1033!1 null-var1991)))
(assert (= (bindLimitParametersInReverseOrder/437885140 var1033!1) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1 
(declare-const var1033!2 var1991)
(assert (not (= var1033!2 null-var1991)))
(assert (= (useMaxForLimit/437885140 var1033!2) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1 
(define-const var1872 String null-String) ; Statement: r5 = null 
(define-const var1303 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3048 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i0 <= $i11 goto (branch) 
(assert (<= var2786 var3048)) ; Cond: i0 <= $i11 
 ; Statement: if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (not (= var1872 null-String)))) ; Negate: Cond: r5 != null  
(define-const var828 Int 0) ; Statement: i9 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (= (ite var2199 1 0) 0)) ; Cond: z0 == 0 
(define-const var913 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var3606 Int (length/-134980193 var3359)) ; Statement: $i2 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var3036 Int (+ var3606 var828)) ; Statement: $i3 = $i2 + i9 
(define-const var1478 Int (+ var3036 37)) ; Statement: $i4 = $i3 + 37 
(assert true)
;(assert (<init>/543593434 var913 var1478)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var913!1 String)
(declare-const var1478!1 Int)
(define-const var273 String var913!1) ; Statement: r6 = $r8 
(assert true)
;(assert (append/672562846 var913!1 "select * from ( ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var913!2 String)
(assert (= var913!2 (str.++ var913!1 "select * from ( ")))
(assert true)
;(assert (append/672562846 var913!2 var3359)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var913!3 String)
(assert (= var913!3 (str.++ var913!2 var3359)))
(assert true)
;(assert (append/672562846 var913!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var913!4 String)
(assert (= var913!4 (str.++ var913!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1303 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var2962 String (toString/-2075883882 var273)) ; Statement: $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {bindLimitParametersInReverseOrder/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), useMaxForLimit/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1991=org.hibernate.dialect.pagination.Oracle12LimitHandler, var1033=r0, var3359=r4, var657=null_type, var2786=i0, var2199=z0, var1872=r5, var1303=z1, var3048=$i11, var828=i9, var913=$r8, var3606=$i2, var3036=$i3, var1478=$i4, var273=r6, var2962=$r2}
; {org.hibernate.dialect.pagination.Oracle12LimitHandler=var1991, r0=var1033, r4=var3359, null_type=var657, i0=var2786, z0=var2199, r5=var1872, z1=var1303, $i11=var3048, i9=var828, $r8=var913, $i2=var3606, $i3=var3036, $i4=var1478, r6=var273, $r2=var2962}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1;	r5 = null;	z1 = 0;	$i11 = (int) -1;	if i0 <= $i11 goto (branch);	if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>();	i9 = 0;	goto [?= (branch)];	if z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	$i2 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = $i2 + i9;	$i4 = $i3 + 37;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4);	r6 = $r8;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 7