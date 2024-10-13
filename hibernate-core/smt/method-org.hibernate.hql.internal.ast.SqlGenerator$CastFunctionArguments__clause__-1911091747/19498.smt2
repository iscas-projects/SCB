(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1358 0)
(declare-sort var2112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startedType/1455619788 (var1358) Bool)
(declare-fun castTargetType/1455619788 (var1358) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1358 var1358)
(declare-const null-String String)
(declare-const var2095 var1358) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments 
(assert (not (= var2095 null-var1358)))
(declare-const var1754 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1754 null-String)))
(define-const var190 Bool (startedType/1455619788 var2095)) ; Statement: $z0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: boolean startedType> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression> 
(assert (not (= (ite var190 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1456 String (castTargetType/1455619788 var2095)) ; Statement: $r8 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castTargetType> 
 ; Statement: if $r8 != null goto $r9 = new java.lang.StringBuilder 
(assert (not (= var1456 null-String))) ; Cond: $r8 != null 
(define-const var1002 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1002)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1002!1 String)
(assert (= var1002!1 ""))
(define-const var2635 String (castTargetType/1455619788 var2095)) ; Statement: $r10 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castTargetType> 
(assert true)
(define-const var2191 String (append/672562846 var1002!1 var2635)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1002!2 String)
(assert (= var1002!2 (str.++ var1002!1 var2635)))
(assert true)
(define-const var1382 String (append/672562846 var2191 var1754)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2191!1 String)
(assert (= var2191!1 (str.++ var2191 var1754)))
(assert true)
(define-const var2163 String (toString/-2075883882 var1382)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2095!1 var1358)
(assert (not (= var2095!1 null-var1358)))
(assert (= (castTargetType/1455619788 var2095!1) var2163)) ; Statement: r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castTargetType> = $r13 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startedType/1455619788=([org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments], boolean), castTargetType/1455619788=([org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1358=org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments, var2095=r0, var1754=r4, var2112=null_type, var190=$z0, var1456=$r8, var1002=$r9, var2635=$r10, var2191=$r11, var1382=$r12, var2163=$r13}
; {org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments=var1358, r0=var2095, r4=var1754, null_type=var2112, $z0=var190, $r8=var1456, $r9=var1002, $r10=var2635, $r11=var2191, $r12=var1382, $r13=var2163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments;	r4 := @parameter0: java.lang.String;	$z0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: boolean startedType>;	if $z0 == 0 goto $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castExpression>;	$r8 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castTargetType>;	if $r8 != null goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castTargetType>;	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.hql.internal.ast.SqlGenerator$CastFunctionArguments: java.lang.String castTargetType> = $r13;	goto [?= return];	return
;block_num 4