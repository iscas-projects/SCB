(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort var3759 0)
(declare-sort var540 0)
(declare-sort var2035 0)
(declare-sort var1076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3759_writeLine/83179921 (var3759 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun targetClass/-2056764405 (var3882) ClassObject)
(declare-fun append/-1031950772 (String var540) String)
(declare-fun cast-from-ClassObject-to-var540 (ClassObject) var540)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2035-init () var2035)
(declare-fun <init>/-1141775240 (var2035 var3882 var3759) void)
(declare-fun columnReturns/-2056764405 (var3882) (Array Int var1076))
(declare-fun getLength-Arr-var1076-1 ((Array Int var1076)) Int)
(declare-const null-var3882 var3882)
(declare-const null-var3759 var3759)
(declare-const var3372 var3882) ; Statement: r2 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn 
(assert (not (= var3372 null-var3882)))
(declare-const var2159 var3759) ; Statement: r0 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger 
(assert (not (= var2159 null-var3759)))
;(assert (var3759_writeLine/83179921 var2159 "Constructor[")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("Constructor[") 

(declare-const var2159!1 var3759)
(declare-const var3654 String)
(define-const var3340 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3340)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3340!1 String)
(assert (= var3340!1 ""))
(assert true)
(define-const var555 String (append/672562846 var3340!1 "    targetClass=")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    targetClass=") 
(declare-const var3340!2 String)
(assert (= var3340!2 (str.++ var3340!1 "    targetClass=")))
(define-const var1478 ClassObject (targetClass/-2056764405 var3372)) ; Statement: $r3 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn: java.lang.Class targetClass> 
(assert true)
(define-const var2058 String (append/-1031950772 var555 (cast-from-ClassObject-to-var540 var1478))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var555!1 String)
(assert (str.prefixof var555 var555!1))
(assert true)
(define-const var1989 String (append/672562846 var2058 ",")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2058!1 String)
(assert (= var2058!1 (str.++ var2058 ",")))
(assert true)
(define-const var157 String (toString/-2075883882 var1989)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3759_writeLine/83179921 var2159!1 var157)) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r7) 

(declare-const var2159!2 var3759)
(declare-const var157!1 String)
;(assert (var3759_writeLine/83179921 var2159!2 "    columns=[")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("    columns=[") 

(declare-const var2159!3 var3759)
(declare-const var2209 String)
(define-const var1758 var2035 var2035-init) ; Statement: $r8 = new org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1 
(assert true)
;(assert (<init>/-1141775240 var1758 var3372 var2159!3)) ; Statement: specialinvoke $r8.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1: void <init>(org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn,org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger)>(r2, r0) 

(declare-const var1758!1 var2035)
(declare-const var3372!1 var3882)
(declare-const var2159!4 var3759)
(define-const var2133 (Array Int var1076) (columnReturns/-2056764405 var3372!1)) ; Statement: r9 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn[] columnReturns> 
(define-const var233 Int (getLength-Arr-var1076-1 var2133)) ; Statement: i0 = lengthof r9 
(define-const var1774 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("    ]") 
(assert (>= var1774 var233)) ; Cond: i1 >= i0 
;(assert (var3759_writeLine/83179921 var2159!4 "    ]")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("    ]") 

(declare-const var2159!5 var3759)
(declare-const var790 String)
;(assert (var3759_writeLine/83179921 var2159!5 "]")) ; Statement: interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("]") 

(declare-const var2159!6 var3759)
(declare-const var3677 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3759_writeLine/83179921=([org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), targetClass/-2056764405=([org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var540=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2035-init=([], org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1), <init>/-1141775240=([org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1, org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger], void), columnReturns/-2056764405=([org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn[]), getLength-Arr-var1076-1=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn[]], int)}
; {var3882=org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn, var3372=r2, var3759=org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger, var2159=r0, var3654="Constructor[", var3340=$r1, var555=$r4, var1478=$r3, var540=java.lang.Object, var2058=$r5, var1989=$r6, var157=$r7, var2209="    columns=[", var2035=org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1, var1758=$r8, var1076=org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn, var2133=r9, var233=i0, var1774=i1, var790="    ]", var3677="]"}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn=var3882, r2=var3372, org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger=var3759, r0=var2159, "Constructor["=var3654, $r1=var3340, $r4=var555, $r3=var1478, java.lang.Object=var540, $r5=var2058, $r6=var1989, $r7=var157, "    columns=["=var2209, org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1=var2035, $r8=var1758, org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn=var1076, r9=var2133, i0=var233, i1=var1774, "    ]"=var790, "]"=var3677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn;	r0 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger;	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("Constructor[");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    targetClass=");	$r3 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn: java.lang.Class targetClass>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>($r7);	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("    columns=[");	$r8 = new org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1;	specialinvoke $r8.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn$1: void <init>(org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn,org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger)>(r2, r0);	r9 = r2.<org.hibernate.engine.query.spi.sql.NativeSQLQueryConstructorReturn: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn[] columnReturns>;	i0 = lengthof r9;	i1 = 0;	if i1 >= i0 goto interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("    ]");	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("    ]");	interfaceinvoke r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn$TraceLogger: void writeLine(java.lang.String)>("]");	return
;block_num 3