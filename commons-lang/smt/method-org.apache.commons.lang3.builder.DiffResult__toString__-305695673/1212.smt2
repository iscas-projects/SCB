(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3003 0)
(declare-sort var2094 0)
(declare-sort var3987 0)
(declare-sort var1365 0)
(declare-sort var296 0)
(declare-sort var975 0)
(declare-sort var1560 0)
(declare-sort var3954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun diffList/42022970 (var3003) var3987)
(declare-fun var3987_isEmpty/-153543822 (var3987) Bool)
(declare-fun var1365-init () var1365)
(declare-fun lhs/42022970 (var3003) var296)
(declare-fun <init>/-508054568 (var1365 var296 var2094) void)
(declare-fun rhs/42022970 (var3003) var296)
(declare-fun var1560_bootstrap$/-799492777 (var1365 var1365) var975)
(declare-fun var3954_forEach/-1836413473 (var3954 var975) void)
(declare-fun cast-from-var3987-to-var3954 (var3987) var3954)
(declare-fun arr-var296-init () (Array Int var296))
(declare-fun build/109755953 (var1365) String)
(declare-fun cast-from-String-to-var296 (String) var296)
(declare-fun String_format/1339386452 (String (Array Int var296)) String)
(declare-const null-var3003 var3003)
(declare-const null-var2094 var2094)
(declare-const null-__Array__Int__var296__ (Array Int var296))
(declare-const var3069 var3003) ; Statement: r0 := @this: org.apache.commons.lang3.builder.DiffResult 
(assert (not (= var3069 null-var3003)))
(declare-const var1721 var2094) ; Statement: r3 := @parameter0: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var1721 null-var2094)))
(define-const var2664 var3987 (diffList/42022970 var3069)) ; Statement: $r1 = r0.<org.apache.commons.lang3.builder.DiffResult: java.util.List diffList> 
(define-const var1531 Bool (var3987_isEmpty/-153543822 var2664)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = new org.apache.commons.lang3.builder.ToStringBuilder 
(assert (= (ite var1531 1 0) 0)) ; Cond: $z0 == 0 
(define-const var895 var1365 var1365-init) ; Statement: $r2 = new org.apache.commons.lang3.builder.ToStringBuilder 
(define-const var3382 var296 (lhs/42022970 var3069)) ; Statement: $r4 = r0.<org.apache.commons.lang3.builder.DiffResult: java.lang.Object lhs> 
(assert true)
;(assert (<init>/-508054568 var895 var3382 var1721)) ; Statement: specialinvoke $r2.<org.apache.commons.lang3.builder.ToStringBuilder: void <init>(java.lang.Object,org.apache.commons.lang3.builder.ToStringStyle)>($r4, r3) 

(declare-const var895!1 var1365)
(declare-const var3382!1 var296)
(declare-const var1721!1 var2094)
(define-const var3555 var1365 var1365-init) ; Statement: $r5 = new org.apache.commons.lang3.builder.ToStringBuilder 
(define-const var3288 var296 (rhs/42022970 var3069)) ; Statement: $r6 = r0.<org.apache.commons.lang3.builder.DiffResult: java.lang.Object rhs> 
(assert true)
;(assert (<init>/-508054568 var3555 var3288 var1721!1)) ; Statement: specialinvoke $r5.<org.apache.commons.lang3.builder.ToStringBuilder: void <init>(java.lang.Object,org.apache.commons.lang3.builder.ToStringStyle)>($r6, r3) 

(declare-const var3555!1 var1365)
(declare-const var3288!1 var296)
(declare-const var1721!2 var2094)
(define-const var1631 var3987 (diffList/42022970 var3069)) ; Statement: $r7 = r0.<org.apache.commons.lang3.builder.DiffResult: java.util.List diffList> 
(define-const var3224 var975 (var1560_bootstrap$/-799492777 var895!1 var3555!1)) ; Statement: $r8 = staticinvoke <org.apache.commons.lang3.builder.DiffResult$lambda_toString_0__87: java.util.function.Consumer bootstrap$(org.apache.commons.lang3.builder.ToStringBuilder,org.apache.commons.lang3.builder.ToStringBuilder)>($r2, $r5) 
;(assert (var3954_forEach/-1836413473 (cast-from-var3987-to-var3954 var1631) var3224)) ; Statement: interfaceinvoke $r7.<java.util.List: void forEach(java.util.function.Consumer)>($r8) 

(declare-const var1631!1 var3987)
(declare-const var3224!1 var975)
(define-const var3491 (Array Int var296) arr-var296-init) ; Statement: $r9 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var2158 String (build/109755953 var895!1)) ; Statement: $r10 = virtualinvoke $r2.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.String build()>() 
(declare-const var3491!1 (Array Int var296))
(assert (not (= var3491!1 null-__Array__Int__var296__)))
(assert (= (select var3491!1 0) (cast-from-String-to-var296 var2158))) ; Statement: $r9[0] = $r10 
(declare-const var3491!2 (Array Int var296))
(assert (not (= var3491!2 null-__Array__Int__var296__)))
(assert (= (select var3491!2 1) (cast-from-String-to-var296 "differs from"))) ; Statement: $r9[1] = "differs from" 
(assert true)
(define-const var970 String (build/109755953 var3555!1)) ; Statement: $r11 = virtualinvoke $r5.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.String build()>() 
(declare-const var3491!3 (Array Int var296))
(assert (not (= var3491!3 null-__Array__Int__var296__)))
(assert (= (select var3491!3 2) (cast-from-String-to-var296 var970))) ; Statement: $r9[2] = $r11 
(define-const var3494 String (String_format/1339386452 "%s %s %s" var3491!3)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s %s %s", $r9) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {diffList/42022970=([org.apache.commons.lang3.builder.DiffResult], java.util.List), var3987_isEmpty/-153543822=([java.util.List], boolean), var1365-init=([], org.apache.commons.lang3.builder.ToStringBuilder), lhs/42022970=([org.apache.commons.lang3.builder.DiffResult], java.lang.Object), <init>/-508054568=([org.apache.commons.lang3.builder.ToStringBuilder, java.lang.Object, org.apache.commons.lang3.builder.ToStringStyle], void), rhs/42022970=([org.apache.commons.lang3.builder.DiffResult], java.lang.Object), var1560_bootstrap$/-799492777=([org.apache.commons.lang3.builder.ToStringBuilder, org.apache.commons.lang3.builder.ToStringBuilder], java.util.function.Consumer), var3954_forEach/-1836413473=([java.lang.Iterable, java.util.function.Consumer], void), cast-from-var3987-to-var3954=([java.util.List], java.lang.Iterable), arr-var296-init=([], java.lang.Object[]), build/109755953=([org.apache.commons.lang3.builder.ToStringBuilder], java.lang.String), cast-from-String-to-var296=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3003=org.apache.commons.lang3.builder.DiffResult, var3069=r0, var2094=org.apache.commons.lang3.builder.ToStringStyle, var1721=r3, var3987=java.util.List, var2664=$r1, var1531=$z0, var1365=org.apache.commons.lang3.builder.ToStringBuilder, var895=$r2, var296=java.lang.Object, var3382=$r4, var3555=$r5, var3288=$r6, var1631=$r7, var975=java.util.function.Consumer, var1560=org.apache.commons.lang3.builder.DiffResult$lambda_toString_0__87, var3224=$r8, var3954=java.lang.Iterable, var3491=$r9, var2158=$r10, var970=$r11, var3494=$r12}
; {org.apache.commons.lang3.builder.DiffResult=var3003, r0=var3069, org.apache.commons.lang3.builder.ToStringStyle=var2094, r3=var1721, java.util.List=var3987, $r1=var2664, $z0=var1531, org.apache.commons.lang3.builder.ToStringBuilder=var1365, $r2=var895, java.lang.Object=var296, $r4=var3382, $r5=var3555, $r6=var3288, $r7=var1631, java.util.function.Consumer=var975, org.apache.commons.lang3.builder.DiffResult$lambda_toString_0__87=var1560, $r8=var3224, java.lang.Iterable=var3954, $r9=var3491, $r10=var2158, $r11=var970, $r12=var3494}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.commons.lang3.builder.DiffResult;	r3 := @parameter0: org.apache.commons.lang3.builder.ToStringStyle;	$r1 = r0.<org.apache.commons.lang3.builder.DiffResult: java.util.List diffList>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r2 = new org.apache.commons.lang3.builder.ToStringBuilder;	$r2 = new org.apache.commons.lang3.builder.ToStringBuilder;	$r4 = r0.<org.apache.commons.lang3.builder.DiffResult: java.lang.Object lhs>;	specialinvoke $r2.<org.apache.commons.lang3.builder.ToStringBuilder: void <init>(java.lang.Object,org.apache.commons.lang3.builder.ToStringStyle)>($r4, r3);	$r5 = new org.apache.commons.lang3.builder.ToStringBuilder;	$r6 = r0.<org.apache.commons.lang3.builder.DiffResult: java.lang.Object rhs>;	specialinvoke $r5.<org.apache.commons.lang3.builder.ToStringBuilder: void <init>(java.lang.Object,org.apache.commons.lang3.builder.ToStringStyle)>($r6, r3);	$r7 = r0.<org.apache.commons.lang3.builder.DiffResult: java.util.List diffList>;	$r8 = staticinvoke <org.apache.commons.lang3.builder.DiffResult$lambda_toString_0__87: java.util.function.Consumer bootstrap$(org.apache.commons.lang3.builder.ToStringBuilder,org.apache.commons.lang3.builder.ToStringBuilder)>($r2, $r5);	interfaceinvoke $r7.<java.util.List: void forEach(java.util.function.Consumer)>($r8);	$r9 = newarray (java.lang.Object)[3];	$r10 = virtualinvoke $r2.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.String build()>();	$r9[0] = $r10;	$r9[1] = "differs from";	$r11 = virtualinvoke $r5.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.String build()>();	$r9[2] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s %s %s", $r9);	return $r12
;block_num 2