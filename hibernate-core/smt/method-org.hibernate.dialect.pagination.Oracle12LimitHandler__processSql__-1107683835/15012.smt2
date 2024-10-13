(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var2877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bindLimitParametersInReverseOrder/437885140 (var3937) Bool)
(declare-fun useMaxForLimit/437885140 (var3937) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3937 var3937)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var479 var3937) ; Statement: r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler 
(assert (not (= var479 null-var3937)))
(declare-const var1539 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1539 null-String)))
(declare-const var382 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var382 null-Int)))
(declare-const var3610 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3610 null-Bool)))
(declare-const var479!1 var3937)
(assert (not (= var479!1 null-var3937)))
(assert (= (bindLimitParametersInReverseOrder/437885140 var479!1) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1 
(declare-const var479!2 var3937)
(assert (not (= var479!2 null-var3937)))
(assert (= (useMaxForLimit/437885140 var479!2) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1 
(define-const var3829 String null-String) ; Statement: r5 = null 
(define-const var3064 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2928 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i0 <= $i11 goto (branch) 
(assert (<= var382 var2928)) ; Cond: i0 <= $i11 
 ; Statement: if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (= var3829 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var1112 Int (length/-134980193 var3829)) ; Statement: $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var2438 Int (+ var1112 1)) ; Statement: i9 = $i1 + 1 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (= (ite var3610 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var982 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
(define-const var1435 Int (length/-134980193 var1539)) ; Statement: $i5 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var2080 Int (+ var1435 var2438)) ; Statement: $i6 = $i5 + i9 
(define-const var3619 Int (+ var2080 98)) ; Statement: $i7 = $i6 + 98 
(assert true)
;(assert (<init>/543593434 var982 var3619)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i7) 

(declare-const var982!1 String)
(declare-const var3619!1 Int)
(define-const var2965 String var982!1) ; Statement: r6 = $r7 
(assert true)
;(assert (append/672562846 var982!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var982!2 String)
(assert (= var982!2 (str.++ var982!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
(assert true)
;(assert (append/672562846 var982!2 var1539)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var982!3 String)
(assert (= var982!3 (str.++ var982!2 var1539)))
(assert true)
;(assert (append/672562846 var982!3 " ) row_ where rownum <= ?) where rownum_ > ?")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?") 
(declare-const var982!4 String)
(assert (= var982!4 (str.++ var982!3 " ) row_ where rownum <= ?) where rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3064 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var18 String (toString/-2075883882 var2965)) ; Statement: $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {bindLimitParametersInReverseOrder/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), useMaxForLimit/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3937=org.hibernate.dialect.pagination.Oracle12LimitHandler, var479=r0, var1539=r4, var2877=null_type, var382=i0, var3610=z0, var3829=r5, var3064=z1, var2928=$i11, var1112=$i1, var2438=i9, var982=$r7, var1435=$i5, var2080=$i6, var3619=$i7, var2965=r6, var18=$r2}
; {org.hibernate.dialect.pagination.Oracle12LimitHandler=var3937, r0=var479, r4=var1539, null_type=var2877, i0=var382, z0=var3610, r5=var3829, z1=var3064, $i11=var2928, $i1=var1112, i9=var2438, $r7=var982, $i5=var1435, $i6=var2080, $i7=var3619, r6=var2965, $r2=var18}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1;	r5 = null;	z1 = 0;	$i11 = (int) -1;	if i0 <= $i11 goto (branch);	if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	i9 = $i1 + 1;	if z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	$i5 = virtualinvoke r4.<java.lang.String: int length()>();	$i6 = $i5 + i9;	$i7 = $i6 + 98;	specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i7);	r6 = $r7;	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?");	goto [?= (branch)];	if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 7