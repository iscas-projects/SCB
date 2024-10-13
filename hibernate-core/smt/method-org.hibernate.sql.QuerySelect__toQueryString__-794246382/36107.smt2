(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1819 0)
(declare-sort var3391 0)
(declare-sort var1228 0)
(declare-sort var268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1123813506 (var1819) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun distinct/-1123813506 (var1819) Bool)
(declare-fun joins/-1123813506 (var1819) var1228)
(declare-fun toFromFragmentString/701527262 (var1228) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun select/-1123813506 (var1819) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toWhereFragmentString/-1276368279 (var1228) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun where/-1123813506 (var1819) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun groupBy/-1123813506 (var1819) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun having/-1123813506 (var1819) String)
(declare-fun orderBy/-1123813506 (var1819) String)
(declare-fun dialect/-1123813506 (var1819) var268)
(declare-fun transformSelectString/323702850 (var268 String) String)
(declare-const null-var1819 var1819)
(declare-const null-String String)
(declare-const var528 var1819) ; Statement: r1 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var528 null-var1819)))
(define-const var2838 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2838 50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50) 

(declare-const var2838!1 String)
(declare-const var1521 Int)
(define-const var984 String (comment/-1123813506 var528)) ; Statement: $r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= var984 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var2838!1 "select ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var2838!2 String)
(assert (= var2838!2 (str.++ var2838!1 "select ")))
(define-const var988 Bool (distinct/-1123813506 var528)) ; Statement: $z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert (= (ite var988 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3651 var1228 (joins/-1123813506 var528)) ; Statement: $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var3378 String (toFromFragmentString/701527262 var3651)) ; Statement: $r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var1413 String var3378) ; Statement: r24 = $r19 
(assert true)
(define-const var576 Bool (startsWith/-1785782452 var3378 ",")) ; Statement: $z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
(assert (not (= (ite var576 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var3378) 1))))
(define-const var1413!1 String (substring/850833817 var3378 1)) ; Statement: r24 = virtualinvoke $r19.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>] 
(assert true) ; Non Conditional
(define-const var629 String (select/-1123813506 var528)) ; Statement: $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert true)
(define-const var3251 String (toString/-2075883882 var629)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3014 String (append/672562846 var2838!2 var3251)) ; Statement: $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2838!3 String)
(assert (= var2838!3 (str.++ var2838!2 var3251)))
(assert true)
(define-const var557 String (append/672562846 var3014 " from")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from") 
(declare-const var3014!1 String)
(assert (= var3014!1 (str.++ var3014 " from")))
(assert true)
;(assert (append/672562846 var557 var1413!1)) ; Statement: virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var557!1 String)
(assert (= var557!1 (str.++ var557 var1413!1)))
(define-const var2683 var1228 (joins/-1123813506 var528)) ; Statement: $r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var2227 String (toWhereFragmentString/-1276368279 var2683)) ; Statement: $r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var2735 String (trim/-847153721 var2227)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>() 
(define-const var681 String (where/-1123813506 var528)) ; Statement: $r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var1100 String (toString/-2075883882 var681)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var322 String (trim/-847153721 var1100)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1333 Int (length/-134980193 var2735)) ; Statement: $i3 = virtualinvoke $r31.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $z5 = 0 
(assert (<= var1333 0)) ; Cond: $i3 <= 0 
(define-const var1708 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var976 Bool var1708) ; Statement: z3 = $z5 
(assert true)
(define-const var1793 Int (length/-134980193 var322)) ; Statement: $i0 = virtualinvoke $r34.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $z8 = 0 
(assert (not (<= var1793 0))) ; Negate: Cond: $i0 <= 0  
(define-const var2151 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
(define-const var2854 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= z4 = $z7] 
(assert true) ; Non Conditional
(define-const var3073 Bool var2854) ; Statement: z4 = $z7 
 ; Statement: if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(assert (not (not (= (ite var976 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert (= (ite var2151 1 0) 0)) ; Cond: $z8 == 0 
(define-const var3418 String (groupBy/-1123813506 var528)) ; Statement: $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert true)
(define-const var3922 Int (length/-171891354 var3418)) ; Statement: $i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert (<= var3922 0)) ; Cond: $i4 <= 0 
(define-const var1968 String (having/-1123813506 var528)) ; Statement: $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert true)
(define-const var474 Int (length/-171891354 var1968)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert (<= var474 0)) ; Cond: $i1 <= 0 
(define-const var2067 String (orderBy/-1123813506 var528)) ; Statement: $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
(define-const var3463 Int (length/-171891354 var2067)) ; Statement: $i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert (<= var3463 0)) ; Cond: $i2 <= 0 
(define-const var95 var268 (dialect/-1123813506 var528)) ; Statement: $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var2644 String (toString/-2075883882 var2838!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3815 String (transformSelectString/323702850 var95 var2644)) ; Statement: $r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), distinct/-1123813506=([org.hibernate.sql.QuerySelect], boolean), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var1819=org.hibernate.sql.QuerySelect, var528=r1, var2838=$r0, var1521=50, var984=$r2, var3391=null_type, var988=$z0, var1228=org.hibernate.sql.JoinFragment, var3651=$r3, var3378=$r19, var1413=r24, var576=$z1, var629=$r25, var3251=$r26, var3014=$r27, var557=$r28, var2683=$r29, var2227=$r30, var2735=$r31, var681=$r32, var1100=$r33, var322=$r34, var1333=$i3, var1708=$z5, var976=z3, var1793=$i0, var2151=$z8, var2854=$z7, var3073=z4, var3418=$r35, var3922=$i4, var1968=$r4, var474=$i1, var2067=$r5, var3463=$i2, var268=org.hibernate.dialect.Dialect, var95=$r6, var2644=$r7, var3815=$r8}
; {org.hibernate.sql.QuerySelect=var1819, r1=var528, $r0=var2838, 50=var1521, $r2=var984, null_type=var3391, $z0=var988, org.hibernate.sql.JoinFragment=var1228, $r3=var3651, $r19=var3378, r24=var1413, $z1=var576, $r25=var629, $r26=var3251, $r27=var3014, $r28=var557, $r29=var2683, $r30=var2227, $r31=var2735, $r32=var681, $r33=var1100, $r34=var322, $i3=var1333, $z5=var1708, z3=var976, $i0=var1793, $z8=var2151, $z7=var2854, z4=var3073, $r35=var3418, $i4=var3922, $r4=var1968, $i1=var474, $r5=var2067, $i2=var3463, org.hibernate.dialect.Dialect=var268, $r6=var95, $r7=var2644, $r8=var3815}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: int length()>": 3}
;stmts r1 := @this: org.hibernate.sql.QuerySelect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50);	$r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct>;	if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	r24 = $r19;	$z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	r24 = virtualinvoke $r19.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>];	$r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from");	virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>();	$r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke $r31.<java.lang.String: int length()>();	if $i3 <= 0 goto $z5 = 0;	$z5 = 0;	z3 = $z5;	$i0 = virtualinvoke $r34.<java.lang.String: int length()>();	if $i0 <= 0 goto $z8 = 0;	$z8 = 1;	$z7 = 1;	goto [?= z4 = $z7];	z4 = $z7;	if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>();	if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7);	return $r8
;block_num 14