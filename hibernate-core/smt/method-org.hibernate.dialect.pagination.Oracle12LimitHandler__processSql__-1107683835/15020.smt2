(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1224 0)
(declare-sort var940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bindLimitParametersInReverseOrder/437885140 (var1224) Bool)
(declare-fun useMaxForLimit/437885140 (var1224) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1224 var1224)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var802 var1224) ; Statement: r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler 
(assert (not (= var802 null-var1224)))
(declare-const var1152 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1152 null-String)))
(declare-const var3784 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3784 null-Int)))
(declare-const var3655 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3655 null-Bool)))
(declare-const var802!1 var1224)
(assert (not (= var802!1 null-var1224)))
(assert (= (bindLimitParametersInReverseOrder/437885140 var802!1) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1 
(declare-const var802!2 var1224)
(assert (not (= var802!2 null-var1224)))
(assert (= (useMaxForLimit/437885140 var802!2) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1 
(define-const var751 String null-String) ; Statement: r5 = null 
(define-const var3100 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var285 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i0 <= $i11 goto (branch) 
(assert (<= var3784 var285)) ; Cond: i0 <= $i11 
 ; Statement: if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (= var751 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var3365 Int (length/-134980193 var751)) ; Statement: $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var330 Int (+ var3365 1)) ; Statement: i9 = $i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (= (ite var3655 1 0) 0)) ; Cond: z0 == 0 
(define-const var2342 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var2918 Int (length/-134980193 var1152)) ; Statement: $i2 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var3856 Int (+ var2918 var330)) ; Statement: $i3 = $i2 + i9 
(define-const var2508 Int (+ var3856 37)) ; Statement: $i4 = $i3 + 37 
(assert true)
;(assert (<init>/543593434 var2342 var2508)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4) 

(declare-const var2342!1 String)
(declare-const var2508!1 Int)
(define-const var3520 String var2342!1) ; Statement: r6 = $r8 
(assert true)
;(assert (append/672562846 var2342!1 "select * from ( ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var2342!2 String)
(assert (= var2342!2 (str.++ var2342!1 "select * from ( ")))
(assert true)
;(assert (append/672562846 var2342!2 var1152)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2342!3 String)
(assert (= var2342!3 (str.++ var2342!2 var1152)))
(assert true)
;(assert (append/672562846 var2342!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var2342!4 String)
(assert (= var2342!4 (str.++ var2342!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3100 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var3657 String (toString/-2075883882 var3520)) ; Statement: $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {bindLimitParametersInReverseOrder/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), useMaxForLimit/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1224=org.hibernate.dialect.pagination.Oracle12LimitHandler, var802=r0, var1152=r4, var940=null_type, var3784=i0, var3655=z0, var751=r5, var3100=z1, var285=$i11, var3365=$i1, var330=i9, var2342=$r8, var2918=$i2, var3856=$i3, var2508=$i4, var3520=r6, var3657=$r2}
; {org.hibernate.dialect.pagination.Oracle12LimitHandler=var1224, r0=var802, r4=var1152, null_type=var940, i0=var3784, z0=var3655, r5=var751, z1=var3100, $i11=var285, $i1=var3365, i9=var330, $r8=var2342, $i2=var2918, $i3=var3856, $i4=var2508, r6=var3520, $r2=var3657}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1;	r5 = null;	z1 = 0;	$i11 = (int) -1;	if i0 <= $i11 goto (branch);	if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	i9 = $i1 + 1;	if z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	$i2 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = $i2 + i9;	$i4 = $i3 + 37;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i4);	r6 = $r8;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 7