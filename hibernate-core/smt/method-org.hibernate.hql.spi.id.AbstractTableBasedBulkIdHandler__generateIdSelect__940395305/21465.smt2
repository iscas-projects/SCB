(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3169 0)
(declare-sort var3226 0)
(declare-sort var644 0)
(declare-sort var443 0)
(declare-sort var548 0)
(declare-sort var2030 0)
(declare-sort var3503 0)
(declare-sort var1664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var548-init () var548)
(declare-fun <init>/-604569825 (var548 var3226) void)
(declare-fun var2030-init () var2030)
(declare-fun <init>/230688669 (var2030 var3226) void)
(declare-fun var644_getIdentifierColumnNames/-1025856963 (var644) (Array Int String))
(declare-fun addColumns/-99273744 (var2030 String (Array Int String) (Array Int String)) var2030)
(declare-fun var443_accept/-1742024366 (var443 var3503) void)
(declare-fun cast-from-var2030-to-var3503 (var2030) var3503)
(declare-fun render/-2100716078 (var2030) String)
(declare-fun setSelectClause/398150799 (var548 String) var548)
(declare-fun var1664_getTableName/48490405 (var1664) String)
(declare-fun cast-from-var644-to-var1664 (var644) var1664)
(declare-fun var1664_fromJoinFragment/-2074841343 (var1664 String Bool Bool) String)
(declare-fun var1664_whereJoinFragment/-1044814674 (var1664 String Bool Bool) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setFromClause/1818208161 (var548 String) var548)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun setWhereClause/1091603732 (var548 String) var548)
(declare-const null-String String)
(declare-const null-var3226 var3226)
(declare-const null-var644 var644)
(declare-const null-var443 var443)
(declare-const var2623 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2623 null-String)))
(declare-const var428 String) ; Statement: r18 := @parameter1: java.lang.String 
(assert (not (= var428 null-String)))
(declare-const var1647 var3226) ; Statement: r1 := @parameter2: org.hibernate.dialect.Dialect 
(assert (not (= var1647 null-var3226)))
(declare-const var1703 var644) ; Statement: r4 := @parameter3: org.hibernate.persister.entity.Queryable 
(assert (not (= var1703 null-var644)))
(declare-const var1613 var443) ; Statement: r8 := @parameter4: java.util.function.Consumer 
(assert (not (= var1613 null-var443)))
(define-const var27 var548 var548-init) ; Statement: $r0 = new org.hibernate.sql.Select 
(assert true)
;(assert (<init>/-604569825 var27 var1647)) ; Statement: specialinvoke $r0.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>(r1) 

(declare-const var27!1 var548)
(declare-const var1647!1 var3226)
(define-const var1443 var2030 var2030-init) ; Statement: $r2 = new org.hibernate.sql.SelectValues 
(assert true)
;(assert (<init>/230688669 var1443 var1647!1)) ; Statement: specialinvoke $r2.<org.hibernate.sql.SelectValues: void <init>(org.hibernate.dialect.Dialect)>(r1) 

(declare-const var1443!1 var2030)
(declare-const var1647!2 var3226)
(define-const var3471 (Array Int String) (var644_getIdentifierColumnNames/-1025856963 var1703)) ; Statement: $r6 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var2472 (Array Int String) (var644_getIdentifierColumnNames/-1025856963 var1703)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>() 
(assert true)
(define-const var1504 var2030 (addColumns/-99273744 var1443!1 var2623 var3471 var2472)) ; Statement: r7 = virtualinvoke $r2.<org.hibernate.sql.SelectValues: org.hibernate.sql.SelectValues addColumns(java.lang.String,java.lang.String[],java.lang.String[])>(r3, $r6, $r5) 
;(assert (var443_accept/-1742024366 var1613 (cast-from-var2030-to-var3503 var1504))) ; Statement: interfaceinvoke r8.<java.util.function.Consumer: void accept(java.lang.Object)>(r7) 

(declare-const var1613!1 var443)
(declare-const var1504!1 var2030)
(assert true)
(define-const var3584 String (render/-2100716078 var1504!1)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.sql.SelectValues: java.lang.String render()>() 
(assert true)
;(assert (setSelectClause/398150799 var27!1 var3584)) ; Statement: virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r9) 

(declare-const var27!2 var548)
(declare-const var3584!1 String)
(define-const var1675 String (var1664_getTableName/48490405 (cast-from-var644-to-var1664 var1703))) ; Statement: r10 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String getTableName()>() 
(define-const var251 String (var1664_fromJoinFragment/-2074841343 (cast-from-var644-to-var1664 var1703) var2623 (ite (= 1 1) true false) (ite (= 1 0) true false))) ; Statement: r11 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>(r3, 1, 0) 
(define-const var3114 String (var1664_whereJoinFragment/-1044814674 (cast-from-var644-to-var1664 var1703) var2623 (ite (= 1 1) true false) (ite (= 1 0) true false))) ; Statement: r22 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>(r3, 1, 0) 
(define-const var1034 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1034)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1034!1 String)
(assert (= var1034!1 ""))
(assert true)
(define-const var1880 String (append/672562846 var1034!1 var1675)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1034!2 String)
(assert (= var1034!2 (str.++ var1034!1 var1675)))
(assert true)
(define-const var846 String (append/-1166366385 var1880 32)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1880!1 String)
(assert (str.prefixof var1880 var1880!1))
(assert true)
(define-const var3198 String (append/672562846 var846 var2623)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var846!1 String)
(assert (= var846!1 (str.++ var846 var2623)))
(assert true)
(define-const var3930 String (append/672562846 var3198 var251)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var3198!1 String)
(assert (= var3198!1 (str.++ var3198 var251)))
(assert true)
(define-const var439 String (toString/-2075883882 var3930)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setFromClause/1818208161 var27!2 var439)) ; Statement: virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r17) 

(declare-const var27!3 var548)
(declare-const var439!1 String)
 ; Statement: if r22 != null goto r23 = virtualinvoke r22.<java.lang.String: java.lang.String trim()>() 
(assert (not (not (= var3114 null-String)))) ; Negate: Cond: r22 != null  
(define-const var2587 String "") ; Statement: r23 = "" 
 ; Statement: goto [?= $z2 = virtualinvoke r18.<java.lang.String: boolean isEmpty()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2142 Bool (isEmpty/-1285796103 var428)) ; Statement: $z2 = virtualinvoke r18.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r24 = new java.lang.StringBuilder 
(assert (not (= (ite var2142 1 0) 0))) ; Cond: $z2 != 0 
(define-const var246 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var246)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var246!1 String)
(assert (= var246!1 ""))
(assert true)
(define-const var3331 String (append/672562846 var246!1 var2587)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23) 
(declare-const var246!2 String)
(assert (= var246!2 (str.++ var246!1 var2587)))
(assert true)
(define-const var1122 String (append/672562846 var3331 var428)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18) 
(declare-const var3331!1 String)
(assert (= var3331!1 (str.++ var3331 var428)))
(assert true)
(define-const var2843 String (toString/-2075883882 var1122)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setWhereClause/1091603732 var27!3 var2843)) ; Statement: virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r27) 

(declare-const var27!4 var548)
(declare-const var2843!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var548-init=([], org.hibernate.sql.Select), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), var2030-init=([], org.hibernate.sql.SelectValues), <init>/230688669=([org.hibernate.sql.SelectValues, org.hibernate.dialect.Dialect], void), var644_getIdentifierColumnNames/-1025856963=([org.hibernate.persister.entity.Queryable], java.lang.String[]), addColumns/-99273744=([org.hibernate.sql.SelectValues, java.lang.String, java.lang.String[], java.lang.String[]], org.hibernate.sql.SelectValues), var443_accept/-1742024366=([java.util.function.Consumer, java.lang.Object], void), cast-from-var2030-to-var3503=([org.hibernate.sql.SelectValues], java.lang.Object), render/-2100716078=([org.hibernate.sql.SelectValues], java.lang.String), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), var1664_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), cast-from-var644-to-var1664=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.Joinable), var1664_fromJoinFragment/-2074841343=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), var1664_whereJoinFragment/-1044814674=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setFromClause/1818208161=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), isEmpty/-1285796103=([java.lang.String], boolean), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select)}
; {var2623=r3, var3169=null_type, var428=r18, var3226=org.hibernate.dialect.Dialect, var1647=r1, var644=org.hibernate.persister.entity.Queryable, var1703=r4, var443=java.util.function.Consumer, var1613=r8, var548=org.hibernate.sql.Select, var27=$r0, var2030=org.hibernate.sql.SelectValues, var1443=$r2, var3471=$r6, var2472=$r5, var1504=r7, var3503=java.lang.Object, var3584=$r9, var1664=org.hibernate.persister.entity.Joinable, var1675=r10, var251=r11, var3114=r22, var1034=$r12, var1880=$r13, var846=$r14, var3198=$r15, var3930=$r16, var439=$r17, var2587=r23, var2142=$z2, var246=$r24, var3331=$r25, var1122=$r26, var2843=$r27}
; {r3=var2623, null_type=var3169, r18=var428, org.hibernate.dialect.Dialect=var3226, r1=var1647, org.hibernate.persister.entity.Queryable=var644, r4=var1703, java.util.function.Consumer=var443, r8=var1613, org.hibernate.sql.Select=var548, $r0=var27, org.hibernate.sql.SelectValues=var2030, $r2=var1443, $r6=var3471, $r5=var2472, r7=var1504, java.lang.Object=var3503, $r9=var3584, org.hibernate.persister.entity.Joinable=var1664, r10=var1675, r11=var251, r22=var3114, $r12=var1034, $r13=var1880, $r14=var846, $r15=var3198, $r16=var3930, $r17=var439, r23=var2587, $z2=var2142, $r24=var246, $r25=var3331, $r26=var1122, $r27=var2843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r18 := @parameter1: java.lang.String;	r1 := @parameter2: org.hibernate.dialect.Dialect;	r4 := @parameter3: org.hibernate.persister.entity.Queryable;	r8 := @parameter4: java.util.function.Consumer;	$r0 = new org.hibernate.sql.Select;	specialinvoke $r0.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>(r1);	$r2 = new org.hibernate.sql.SelectValues;	specialinvoke $r2.<org.hibernate.sql.SelectValues: void <init>(org.hibernate.dialect.Dialect)>(r1);	$r6 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>();	$r5 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>();	r7 = virtualinvoke $r2.<org.hibernate.sql.SelectValues: org.hibernate.sql.SelectValues addColumns(java.lang.String,java.lang.String[],java.lang.String[])>(r3, $r6, $r5);	interfaceinvoke r8.<java.util.function.Consumer: void accept(java.lang.Object)>(r7);	$r9 = virtualinvoke r7.<org.hibernate.sql.SelectValues: java.lang.String render()>();	virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r9);	r10 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String getTableName()>();	r11 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>(r3, 1, 0);	r22 = interfaceinvoke r4.<org.hibernate.persister.entity.Queryable: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>(r3, 1, 0);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r17);	if r22 != null goto r23 = virtualinvoke r22.<java.lang.String: java.lang.String trim()>();	r23 = "";	goto [?= $z2 = virtualinvoke r18.<java.lang.String: boolean isEmpty()>()];	$z2 = virtualinvoke r18.<java.lang.String: boolean isEmpty()>();	if $z2 != 0 goto $r24 = new java.lang.StringBuilder;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r27);	return $r0
;block_num 4