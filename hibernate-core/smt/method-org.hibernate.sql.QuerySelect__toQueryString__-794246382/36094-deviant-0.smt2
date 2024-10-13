(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1078 0)
(declare-sort var1956 0)
(declare-sort var3282 0)
(declare-sort var3439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun comment/-1123813506 (var1078) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun distinct/-1123813506 (var1078) Bool)
(declare-fun joins/-1123813506 (var1078) var3282)
(declare-fun toFromFragmentString/701527262 (var3282) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun select/-1123813506 (var1078) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toWhereFragmentString/-1276368279 (var3282) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun where/-1123813506 (var1078) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun groupBy/-1123813506 (var1078) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun having/-1123813506 (var1078) String)
(declare-fun orderBy/-1123813506 (var1078) String)
(declare-fun dialect/-1123813506 (var1078) var3439)
(declare-fun transformSelectString/323702850 (var3439 String) String)
(declare-const null-var1078 var1078)
(declare-const null-String String)
(declare-const var1671 var1078) ; Statement: r1 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var1671 null-var1078)))
(define-const var3440 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3440 50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50) 

(declare-const var3440!1 String)
(declare-const var447 Int)
(define-const var2015 String (comment/-1123813506 var1671)) ; Statement: $r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(assert (= var2015 null-String)) ; Cond: $r2 == null 
(assert true)
;(assert (append/672562846 var3440!1 "select ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3440!2 String)
(assert (= var3440!2 (str.++ var3440!1 "select ")))
(define-const var3341 Bool (distinct/-1123813506 var1671)) ; Statement: $z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct> 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert (= (ite var3341 1 0) 0)) ; Cond: $z0 == 0 
(define-const var28 var3282 (joins/-1123813506 var1671)) ; Statement: $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var3064 String (toFromFragmentString/701527262 var28)) ; Statement: $r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var324 String var3064) ; Statement: r24 = $r19 
(assert true)
(define-const var1798 Bool (startsWith/-1785782452 var3064 ",")) ; Statement: $z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join") 
(assert (not (= (ite var1798 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert (not (and true (and (>= 1 0) (>= (str.len var3064) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), comment/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), distinct/-1123813506=([org.hibernate.sql.QuerySelect], boolean), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), transformSelectString/323702850=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String)}
; {var1078=org.hibernate.sql.QuerySelect, var1671=r1, var3440=$r0, var447=50, var2015=$r2, var1956=null_type, var3341=$z0, var3282=org.hibernate.sql.JoinFragment, var28=$r3, var3064=$r19, var324=r24, var1798=$z1, var3136=$r25, var920=$r26, var642=$r27, var3369=$r28, var2386=$r29, var3939=$r30, var3604=$r31, var780=$r32, var3112=$r33, var725=$r34, var3503=$i3, var3049=$z5, var366=z3, var3667=$i0, var3359=$z8, var3375=$z7, var1607=z4, var2097=$r35, var759=$i4, var1735=$r4, var3664=$i1, var342=$r5, var1168=$i2, var3439=org.hibernate.dialect.Dialect, var1580=$r6, var185=$r7, var1745=$r8}
; {org.hibernate.sql.QuerySelect=var1078, r1=var1671, $r0=var3440, 50=var447, $r2=var2015, null_type=var1956, $z0=var3341, org.hibernate.sql.JoinFragment=var3282, $r3=var28, $r19=var3064, r24=var324, $z1=var1798, $r25=var3136, $r26=var920, $r27=var642, $r28=var3369, $r29=var2386, $r30=var3939, $r31=var3604, $r32=var780, $r33=var3112, $r34=var725, $i3=var3503, $z5=var3049, z3=var366, $i0=var3667, $z8=var3359, $z7=var3375, z4=var1607, $r35=var2097, $i4=var759, $r4=var1735, $i1=var3664, $r5=var342, $i2=var1168, org.hibernate.dialect.Dialect=var3439, $r6=var1580, $r7=var185, $r8=var1745}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: int length()>": 3}
;stmts r1 := @this: org.hibernate.sql.QuerySelect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(50);	$r2 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct>;	if $z0 == 0 goto $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r19 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	r24 = $r19;	$z1 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(",");	if $z1 == 0 goto $z2 = virtualinvoke $r19.<java.lang.String: boolean startsWith(java.lang.String)>(" inner join");	r24 = virtualinvoke $r19.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= $r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>];	$r25 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from");	virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r29 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r30 = virtualinvoke $r29.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r31 = virtualinvoke $r30.<java.lang.String: java.lang.String trim()>();	$r32 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = virtualinvoke $r33.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke $r31.<java.lang.String: int length()>();	if $i3 <= 0 goto $z5 = 0;	$z5 = 1;	goto [?= z3 = $z5];	z3 = $z5;	$i0 = virtualinvoke $r34.<java.lang.String: int length()>();	if $i0 <= 0 goto $z8 = 0;	$z8 = 0;	$z7 = 0;	z4 = $z7;	if z3 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	if $z8 == 0 goto $r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r35 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$i4 = virtualinvoke $r35.<java.lang.StringBuilder: int length()>();	if $i4 <= 0 goto $r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r4 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$i1 = virtualinvoke $r4.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$i2 = virtualinvoke $r5.<java.lang.StringBuilder: int length()>();	if $i2 <= 0 goto $r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r6 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r6.<org.hibernate.dialect.Dialect: java.lang.String transformSelectString(java.lang.String)>($r7);	return $r8
;block_num 14