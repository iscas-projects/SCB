(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3180 0)
(declare-sort var2870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startedType/1455619788 (var3180) Bool)
(declare-fun castExpression/1455619788 (var3180) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3180 var3180)
(declare-const null-String String)
(declare-const var680 var3180) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments 
(assert (not (= var680 null-var3180)))
(declare-const var3279 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3279 null-String)))
(define-const var2748 Bool (startedType/1455619788 var680)) ; Statement: $z0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: boolean startedType> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> 
(assert (= (ite var2748 1 0) 0)) ; Cond: $z0 == 0 
(define-const var973 String (castExpression/1455619788 var680)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var973 null-String))) ; Cond: $r1 != null 
(define-const var3266 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3266)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3266!1 String)
(assert (= var3266!1 ""))
(define-const var2356 String (castExpression/1455619788 var680)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> 
(assert true)
(define-const var684 String (append/672562846 var3266!1 var2356)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3266!2 String)
(assert (= var3266!2 (str.++ var3266!1 var2356)))
(assert true)
(define-const var1597 String (append/672562846 var684 var3279)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var684!1 String)
(assert (= var684!1 (str.++ var684 var3279)))
(assert true)
(define-const var352 String (toString/-2075883882 var1597)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var680!1 var3180)
(assert (not (= var680!1 null-var3180)))
(assert (= (castExpression/1455619788 var680!1) var352)) ; Statement: r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> = $r7 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startedType/1455619788=([org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments], boolean), castExpression/1455619788=([org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3180=org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments, var680=r0, var3279=r4, var2870=null_type, var2748=$z0, var973=$r1, var3266=$r2, var2356=$r3, var684=$r5, var1597=$r6, var352=$r7}
; {org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments=var3180, r0=var680, r4=var3279, null_type=var2870, $z0=var2748, $r1=var973, $r2=var3266, $r3=var2356, $r5=var684, $r6=var1597, $r7=var352}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments;	r4 := @parameter0: java.lang.String;	$z0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: boolean startedType>;	if $z0 == 0 goto $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression>;	$r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> = $r7;	return
;block_num 4