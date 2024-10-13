(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3885 0)
(declare-sort var740 0)
(declare-sort var58 0)
(declare-sort var1486 0)
(declare-sort var3149 0)
(declare-sort var3580 0)
(declare-sort var992 0)
(declare-sort var661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1669825851 (var740) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun clone/791635256 (var1486) var1486)
(declare-fun cast-from-__Array__Int__var58__-to-var1486 ((Array Int var58)) var1486)
(declare-fun cast-from-var1486-to-__Array__Int__var58__ (var1486) (Array Int var58))
(declare-fun var3580_sort/1993974856 ((Array Int var1486) var992) void)
(declare-fun cast-from-__Array__Int__var58__-to-__Array__Int__var1486__ ((Array Int var58)) (Array Int var1486))
(declare-fun cast-from-var3149-to-var992 (var3149) var992)
(declare-fun getLength-Arr-var58-1 ((Array Int var58)) Int)
(declare-fun var661_hashedName/-31434092 (String) String)
(declare-const null-String String)
(declare-const null-var740 var740)
(declare-const null-__Array__Int__var58__ (Array Int var58))
(declare-const var3149-INSTANCE var3149)
(declare-const var236 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var236 null-String)))
(declare-const var220 var740) ; Statement: r2 := @parameter1: org.hibernate.mapping.Table 
(assert (not (= var220 null-var740)))
(declare-const var1565 (Array Int var58)) ; Statement: r8 := @parameter2: org.hibernate.mapping.Column[] 
(assert (not (= var1565 null-__Array__Int__var58__)))
(define-const var279 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1554 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1554)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1554!1 String)
(assert (= var1554!1 ""))
(assert true)
(define-const var3255 String (append/672562846 var1554!1 "table`")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table`") 
(declare-const var1554!2 String)
(assert (= var1554!2 (str.++ var1554!1 "table`")))
(assert true)
(define-const var1317 String (getName/-1669825851 var220)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
(define-const var2894 String (append/672562846 var3255 var1317)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3255!1 String)
(assert (= var3255!1 (str.++ var3255 var1317)))
(assert true)
(define-const var3479 String (append/672562846 var2894 "`")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var2894!1 String)
(assert (= var2894!1 (str.++ var2894 "`")))
(assert true)
(define-const var1327 String (toString/-2075883882 var3479)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var279 var1327)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7) 
(declare-const var279!1 String)
(assert (= var279!1 var1327))
(assert true)
(define-const var2676 var1486 (clone/791635256 (cast-from-__Array__Int__var58__-to-var1486 var1565))) ; Statement: $r9 = virtualinvoke r8.<java.lang.Object: java.lang.Object clone()>() 
(define-const var1329 (Array Int var58) (cast-from-var1486-to-__Array__Int__var58__ var2676)) ; Statement: r10 = (org.hibernate.mapping.Column[]) $r9 
(define-const var2883 var3149 var3149-INSTANCE) ; Statement: $r11 = <org.hibernate.mapping.Constraint$ColumnComparator: org.hibernate.mapping.Constraint$ColumnComparator INSTANCE> 
;(assert (var3580_sort/1993974856 (cast-from-__Array__Int__var58__-to-__Array__Int__var1486__ var1329) (cast-from-var3149-to-var992 var2883))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[],java.util.Comparator)>(r10, $r11) 

(declare-const var1329!1 (Array Int var58))
(declare-const var2883!1 var3149)
(define-const var3702 Int (getLength-Arr-var58-1 var1329!1)) ; Statement: i0 = lengthof r10 
(define-const var1479 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r12 = new java.lang.StringBuilder 
(assert (>= var1479 var3702)) ; Cond: i1 >= i0 
(define-const var1874 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1874)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1874!1 String)
(assert (= var1874!1 ""))
(assert true)
(define-const var314 String (append/672562846 var1874!1 var236)) ; Statement: $r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var1874!2 String)
(assert (= var1874!2 (str.++ var1874!1 var236)))
(assert true)
(define-const var2082 String (toString/-2075883882 var279!1)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var30 String (var661_hashedName/-31434092 var2082)) ; Statement: $r15 = staticinvoke <org.hibernate.mapping.Constraint: java.lang.String hashedName(java.lang.String)>($r14) 
(assert true)
(define-const var1671 String (append/672562846 var314 var30)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var314!1 String)
(assert (= var314!1 (str.++ var314 var30)))
(assert true)
(define-const var2763 String (toString/-2075883882 var1671)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), clone/791635256=([java.lang.Object], java.lang.Object), cast-from-__Array__Int__var58__-to-var1486=([org.hibernate.mapping.Column[]], java.lang.Object), cast-from-var1486-to-__Array__Int__var58__=([java.lang.Object], org.hibernate.mapping.Column[]), var3580_sort/1993974856=([java.lang.Object[], java.util.Comparator], void), cast-from-__Array__Int__var58__-to-__Array__Int__var1486__=([org.hibernate.mapping.Column[]], java.lang.Object[]), cast-from-var3149-to-var992=([org.hibernate.mapping.Constraint$ColumnComparator], java.util.Comparator), getLength-Arr-var58-1=([org.hibernate.mapping.Column[]], int), var661_hashedName/-31434092=([java.lang.String], java.lang.String)}
; {var236=r13, var3885=null_type, var740=org.hibernate.mapping.Table, var220=r2, var58=org.hibernate.mapping.Column, var1565=r8, var279=$r0, var1554=$r1, var3255=$r4, var1317=$r3, var2894=$r5, var3479=$r6, var1327=$r7, var1486=java.lang.Object, var2676=$r9, var1329=r10, var3149=org.hibernate.mapping.Constraint$ColumnComparator, var2883=$r11, var3580=java.util.Arrays, var992=java.util.Comparator, var3702=i0, var1479=i1, var1874=$r12, var314=$r16, var2082=$r14, var661=org.hibernate.mapping.Constraint, var30=$r15, var1671=$r17, var2763=$r18}
; {r13=var236, null_type=var3885, org.hibernate.mapping.Table=var740, r2=var220, org.hibernate.mapping.Column=var58, r8=var1565, $r0=var279, $r1=var1554, $r4=var3255, $r3=var1317, $r5=var2894, $r6=var3479, $r7=var1327, java.lang.Object=var1486, $r9=var2676, r10=var1329, org.hibernate.mapping.Constraint$ColumnComparator=var3149, $r11=var2883, java.util.Arrays=var3580, java.util.Comparator=var992, i0=var3702, i1=var1479, $r12=var1874, $r16=var314, $r14=var2082, org.hibernate.mapping.Constraint=var661, $r15=var30, $r17=var1671, $r18=var2763}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r13 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.mapping.Table;	r8 := @parameter2: org.hibernate.mapping.Column[];	$r0 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("table`");	$r3 = virtualinvoke r2.<org.hibernate.mapping.Table: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r7);	$r9 = virtualinvoke r8.<java.lang.Object: java.lang.Object clone()>();	r10 = (org.hibernate.mapping.Column[]) $r9;	$r11 = <org.hibernate.mapping.Constraint$ColumnComparator: org.hibernate.mapping.Constraint$ColumnComparator INSTANCE>;	staticinvoke <java.util.Arrays: void sort(java.lang.Object[],java.util.Comparator)>(r10, $r11);	i0 = lengthof r10;	i1 = 0;	if i1 >= i0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = staticinvoke <org.hibernate.mapping.Constraint: java.lang.String hashedName(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 3