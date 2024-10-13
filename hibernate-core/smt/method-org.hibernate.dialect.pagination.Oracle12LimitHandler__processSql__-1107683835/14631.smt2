(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1189 0)
(declare-sort var1974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bindLimitParametersInReverseOrder/437885140 (var1189) Bool)
(declare-fun useMaxForLimit/437885140 (var1189) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1189 var1189)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var246 var1189) ; Statement: r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler 
(assert (not (= var246 null-var1189)))
(declare-const var3379 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3379 null-String)))
(declare-const var3393 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3393 null-Int)))
(declare-const var1973 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1973 null-Bool)))
(declare-const var246!1 var1189)
(assert (not (= var246!1 null-var1189)))
(assert (= (bindLimitParametersInReverseOrder/437885140 var246!1) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1 
(declare-const var246!2 var1189)
(assert (not (= var246!2 null-var1189)))
(assert (= (useMaxForLimit/437885140 var246!2) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1 
(define-const var858 String null-String) ; Statement: r5 = null 
(define-const var28 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3832 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i0 <= $i11 goto (branch) 
(assert (<= var3393 var3832)) ; Cond: i0 <= $i11 
 ; Statement: if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (not (= var858 null-String)))) ; Negate: Cond: r5 != null  
(define-const var1307 Int 0) ; Statement: i9 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (= (ite var1973 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2736 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
(define-const var1757 Int (length/-134980193 var3379)) ; Statement: $i5 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var1824 Int (+ var1757 var1307)) ; Statement: $i6 = $i5 + i9 
(define-const var230 Int (+ var1824 98)) ; Statement: $i7 = $i6 + 98 
(assert true)
;(assert (<init>/543593434 var2736 var230)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i7) 

(declare-const var2736!1 String)
(declare-const var230!1 Int)
(define-const var3422 String var2736!1) ; Statement: r6 = $r7 
(assert true)
;(assert (append/672562846 var2736!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var2736!2 String)
(assert (= var2736!2 (str.++ var2736!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
(assert true)
;(assert (append/672562846 var2736!2 var3379)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2736!3 String)
(assert (= var2736!3 (str.++ var2736!2 var3379)))
(assert true)
;(assert (append/672562846 var2736!3 " ) row_ where rownum <= ?) where rownum_ > ?")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?") 
(declare-const var2736!4 String)
(assert (= var2736!4 (str.++ var2736!3 " ) row_ where rownum <= ?) where rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var28 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1084 String (toString/-2075883882 var3422)) ; Statement: $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {bindLimitParametersInReverseOrder/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), useMaxForLimit/437885140=([org.hibernate.dialect.pagination.Oracle12LimitHandler], boolean), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1189=org.hibernate.dialect.pagination.Oracle12LimitHandler, var246=r0, var3379=r4, var1974=null_type, var3393=i0, var1973=z0, var858=r5, var28=z1, var3832=$i11, var1307=i9, var2736=$r7, var1757=$i5, var1824=$i6, var230=$i7, var3422=r6, var1084=$r2}
; {org.hibernate.dialect.pagination.Oracle12LimitHandler=var1189, r0=var246, r4=var3379, null_type=var1974, i0=var3393, z0=var1973, r5=var858, z1=var28, $i11=var3832, i9=var1307, $r7=var2736, $i5=var1757, $i6=var1824, $i7=var230, r6=var3422, $r2=var1084}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.pagination.Oracle12LimitHandler;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean bindLimitParametersInReverseOrder> = 1;	r0.<org.hibernate.dialect.pagination.Oracle12LimitHandler: boolean useMaxForLimit> = 1;	r5 = null;	z1 = 0;	$i11 = (int) -1;	if i0 <= $i11 goto (branch);	if r5 != null goto $i1 = virtualinvoke r5.<java.lang.String: int length()>();	i9 = 0;	goto [?= (branch)];	if z0 == 0 goto $r8 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	$i5 = virtualinvoke r4.<java.lang.String: int length()>();	$i6 = $i5 + i9;	$i7 = $i6 + 98;	specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i7);	r6 = $r7;	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?");	goto [?= (branch)];	if z1 == 0 goto $r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 7