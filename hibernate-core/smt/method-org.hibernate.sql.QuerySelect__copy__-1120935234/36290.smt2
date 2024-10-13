(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort var1113 0)
(declare-sort var3761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1830-init () var1830)
(declare-fun dialect/-1123813506 (var1830) var1113)
(declare-fun <init>/1325889083 (var1830 var1113) void)
(declare-fun joins/-1123813506 (var1830) var3761)
(declare-fun copy/-581105654 (var3761) var3761)
(declare-fun select/-1123813506 (var1830) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun where/-1123813506 (var1830) String)
(declare-fun groupBy/-1123813506 (var1830) String)
(declare-fun orderBy/-1123813506 (var1830) String)
(declare-fun having/-1123813506 (var1830) String)
(declare-fun comment/-1123813506 (var1830) String)
(declare-fun distinct/-1123813506 (var1830) Bool)
(declare-const null-var1830 var1830)
(declare-const var3106 var1830) ; Statement: r1 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var3106 null-var1830)))
(define-const var3189 var1830 var1830-init) ; Statement: $r0 = new org.hibernate.sql.QuerySelect 
(define-const var1863 var1113 (dialect/-1123813506 var3106)) ; Statement: $r2 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect> 
(assert true)
;(assert (<init>/1325889083 var3189 var1863)) ; Statement: specialinvoke $r0.<org.hibernate.sql.QuerySelect: void <init>(org.hibernate.dialect.Dialect)>($r2) 

(declare-const var3189!1 var1830)
(declare-const var1863!1 var1113)
(define-const var8 var3761 (joins/-1123813506 var3106)) ; Statement: $r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> 
(assert true)
(define-const var3696 var3761 (copy/-581105654 var8)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: org.hibernate.sql.JoinFragment copy()>() 
(declare-const var3189!2 var1830)
(assert (not (= var3189!2 null-var1830)))
(assert (= (joins/-1123813506 var3189!2) var3696)) ; Statement: $r0.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> = $r4 
(define-const var2666 String (select/-1123813506 var3189!2)) ; Statement: $r6 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(define-const var2196 String (select/-1123813506 var3106)) ; Statement: $r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select> 
(assert true)
(define-const var1021 String (toString/-2075883882 var2196)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2666 var1021)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2666!1 String)
(assert (= var2666!1 (str.++ var2666 var1021)))
(define-const var3838 String (where/-1123813506 var3189!2)) ; Statement: $r9 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(define-const var3689 String (where/-1123813506 var3106)) ; Statement: $r8 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var1914 String (toString/-2075883882 var3689)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3838 var1914)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3838!1 String)
(assert (= var3838!1 (str.++ var3838 var1914)))
(define-const var118 String (groupBy/-1123813506 var3189!2)) ; Statement: $r12 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(define-const var1301 String (groupBy/-1123813506 var3106)) ; Statement: $r11 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy> 
(assert true)
(define-const var1064 String (toString/-2075883882 var1301)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var118 var1064)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var118!1 String)
(assert (= var118!1 (str.++ var118 var1064)))
(define-const var994 String (orderBy/-1123813506 var3189!2)) ; Statement: $r15 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(define-const var3426 String (orderBy/-1123813506 var3106)) ; Statement: $r14 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
(define-const var2615 String (toString/-2075883882 var3426)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var994 var2615)) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var994!1 String)
(assert (= var994!1 (str.++ var994 var2615)))
(define-const var291 String (having/-1123813506 var3189!2)) ; Statement: $r18 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(define-const var3360 String (having/-1123813506 var3106)) ; Statement: $r17 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having> 
(assert true)
(define-const var1482 String (toString/-2075883882 var3360)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var291 var1482)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var291!1 String)
(assert (= var291!1 (str.++ var291 var1482)))
(define-const var282 String (comment/-1123813506 var3106)) ; Statement: $r20 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment> 
(declare-const var3189!3 var1830)
(assert (not (= var3189!3 null-var1830)))
(assert (= (comment/-1123813506 var3189!3) var282)) ; Statement: $r0.<org.hibernate.sql.QuerySelect: java.lang.String comment> = $r20 
(define-const var115 Bool (distinct/-1123813506 var3106)) ; Statement: $z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct> 
(declare-const var3189!4 var1830)
(assert (not (= var3189!4 null-var1830)))
(assert (= (distinct/-1123813506 var3189!4) var115)) ; Statement: $r0.<org.hibernate.sql.QuerySelect: boolean distinct> = $z0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1830-init=([], org.hibernate.sql.QuerySelect), dialect/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.dialect.Dialect), <init>/1325889083=([org.hibernate.sql.QuerySelect, org.hibernate.dialect.Dialect], void), joins/-1123813506=([org.hibernate.sql.QuerySelect], org.hibernate.sql.JoinFragment), copy/-581105654=([org.hibernate.sql.JoinFragment], org.hibernate.sql.JoinFragment), select/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), groupBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), having/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), comment/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.String), distinct/-1123813506=([org.hibernate.sql.QuerySelect], boolean)}
; {var1830=org.hibernate.sql.QuerySelect, var3106=r1, var3189=$r0, var1113=org.hibernate.dialect.Dialect, var1863=$r2, var3761=org.hibernate.sql.JoinFragment, var8=$r3, var3696=$r4, var2666=$r6, var2196=$r5, var1021=$r7, var3838=$r9, var3689=$r8, var1914=$r10, var118=$r12, var1301=$r11, var1064=$r13, var994=$r15, var3426=$r14, var2615=$r16, var291=$r18, var3360=$r17, var1482=$r19, var282=$r20, var115=$z0}
; {org.hibernate.sql.QuerySelect=var1830, r1=var3106, $r0=var3189, org.hibernate.dialect.Dialect=var1113, $r2=var1863, org.hibernate.sql.JoinFragment=var3761, $r3=var8, $r4=var3696, $r6=var2666, $r5=var2196, $r7=var1021, $r9=var3838, $r8=var3689, $r10=var1914, $r12=var118, $r11=var1301, $r13=var1064, $r15=var994, $r14=var3426, $r16=var2615, $r18=var291, $r17=var3360, $r19=var1482, $r20=var282, $z0=var115}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5}
;stmts r1 := @this: org.hibernate.sql.QuerySelect;	$r0 = new org.hibernate.sql.QuerySelect;	$r2 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.dialect.Dialect dialect>;	specialinvoke $r0.<org.hibernate.sql.QuerySelect: void <init>(org.hibernate.dialect.Dialect)>($r2);	$r3 = r1.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins>;	$r4 = virtualinvoke $r3.<org.hibernate.sql.JoinFragment: org.hibernate.sql.JoinFragment copy()>();	$r0.<org.hibernate.sql.QuerySelect: org.hibernate.sql.JoinFragment joins> = $r4;	$r6 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r5 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder select>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r8 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r11 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder groupBy>;	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r14 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r18 = $r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r17 = r1.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder having>;	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r20 = r1.<org.hibernate.sql.QuerySelect: java.lang.String comment>;	$r0.<org.hibernate.sql.QuerySelect: java.lang.String comment> = $r20;	$z0 = r1.<org.hibernate.sql.QuerySelect: boolean distinct>;	$r0.<org.hibernate.sql.QuerySelect: boolean distinct> = $z0;	return $r0
;block_num 1