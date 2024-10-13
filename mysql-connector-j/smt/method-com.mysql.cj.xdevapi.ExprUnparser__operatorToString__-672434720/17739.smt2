(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1357 0)
(declare-sort var1086 0)
(declare-sort var3926 0)
(declare-sort var2518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1940863505 (var1357) String)
(declare-fun var1086-init () var1086)
(declare-fun <init>/-325640736 (var1086) void)
(declare-fun getParamList/2057200078 (var1357) var3926)
(declare-fun var3926_iterator/-912451715 (var3926) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun arr-var2518-init () (Array Int var2518))
(declare-fun var3926_get/-1216255739 (var3926 Int) var2518)
(declare-fun cast-from-var1086-to-var3926 (var1086) var3926)
(declare-fun cast-from-String-to-var2518 (String) var2518)
(declare-fun String_format/1339386452 (String (Array Int var2518)) String)
(declare-const null-var1357 var1357)
(declare-const null-__Array__Int__var2518__ (Array Int var2518))
(declare-const var547 var1357) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Operator 
(assert (not (= var547 null-var1357)))
(assert true)
(define-const var2552 String (getName/-1940863505 var547)) ; Statement: r77 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator: java.lang.String getName()>() 
(define-const var2892 var1086 var1086-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2892)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var2892!1 var1086)
(assert true)
(define-const var3798 var3926 (getParamList/2057200078 var547)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator: java.util.List getParamList()>() 
(define-const var1671 Iterator (var3926_iterator/-912451715 var3798)) ; Statement: r78 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3467 Bool (Iterator_hasNext/-1669924200 var1671)) ; Statement: $z0 = interfaceinvoke r78.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = "between" 
(assert (= (ite var3467 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3332 String "between") ; Statement: $r3 = "between" 
(assert true)
(define-const var464 Bool (= var3332 var2552)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r77) 
 ; Statement: if $z1 != 0 goto $r73 = virtualinvoke r77.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("not_between", "not between") 
(assert (not (= (ite var464 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var3497 String (replaceAll/1692887130 var2552 "not_between" "not between")) ; Statement: $r73 = virtualinvoke r77.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("not_between", "not between") 
(assert (= (replaceAll/1692887130 var2552 "not_between" "not between") (str.replace_re_all var2552 (str.to_re "not_between") "not between")))
(define-const var2030 (Array Int var2518) arr-var2518-init) ; Statement: $r4 = newarray (java.lang.Object)[4] 
(define-const var3391 var2518 (var3926_get/-1216255739 (cast-from-var1086-to-var3926 var2892!1) 0)) ; Statement: $r5 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(declare-const var2030!1 (Array Int var2518))
(assert (not (= var2030!1 null-__Array__Int__var2518__)))
(assert (= (select var2030!1 0) var3391)) ; Statement: $r4[0] = $r5 
(declare-const var2030!2 (Array Int var2518))
(assert (not (= var2030!2 null-__Array__Int__var2518__)))
(assert (= (select var2030!2 1) (cast-from-String-to-var2518 var3497))) ; Statement: $r4[1] = $r73 
(define-const var178 var2518 (var3926_get/-1216255739 (cast-from-var1086-to-var3926 var2892!1) 1)) ; Statement: $r6 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(1) 
(declare-const var2030!3 (Array Int var2518))
(assert (not (= var2030!3 null-__Array__Int__var2518__)))
(assert (= (select var2030!3 2) var178)) ; Statement: $r4[2] = $r6 
(define-const var2062 var2518 (var3926_get/-1216255739 (cast-from-var1086-to-var3926 var2892!1) 2)) ; Statement: $r7 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(2) 
(declare-const var2030!4 (Array Int var2518))
(assert (not (= var2030!4 null-__Array__Int__var2518__)))
(assert (= (select var2030!4 3) var2062)) ; Statement: $r4[3] = $r7 
(define-const var998 String (String_format/1339386452 "(%s %s %s AND %s)" var2030!4)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s %s %s AND %s)", $r4) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1940863505=([com.mysql.cj.x.protobuf.MysqlxExpr$Operator], java.lang.String), var1086-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getParamList/2057200078=([com.mysql.cj.x.protobuf.MysqlxExpr$Operator], java.util.List), var3926_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), arr-var2518-init=([], java.lang.Object[]), var3926_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1086-to-var3926=([java.util.ArrayList], java.util.List), cast-from-String-to-var2518=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1357=com.mysql.cj.x.protobuf.MysqlxExpr$Operator, var547=r0, var2552=r77, var1086=java.util.ArrayList, var2892=$r1, var3926=java.util.List, var3798=$r2, var1671=r78, var3467=$z0, var3332=$r3, var464=$z1, var3497=$r73, var2518=java.lang.Object, var2030=$r4, var3391=$r5, var178=$r6, var2062=$r7, var998=$r8}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Operator=var1357, r0=var547, r77=var2552, java.util.ArrayList=var1086, $r1=var2892, java.util.List=var3926, $r2=var3798, r78=var1671, $z0=var3467, $r3=var3332, $z1=var464, $r73=var3497, java.lang.Object=var2518, $r4=var2030, $r5=var3391, $r6=var178, $r7=var2062, $r8=var998}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Operator;	r77 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator: java.lang.String getName()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator: java.util.List getParamList()>();	r78 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r78.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = "between";	$r3 = "between";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r77);	if $z1 != 0 goto $r73 = virtualinvoke r77.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("not_between", "not between");	$r73 = virtualinvoke r77.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("not_between", "not between");	$r4 = newarray (java.lang.Object)[4];	$r5 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	$r4[0] = $r5;	$r4[1] = $r73;	$r6 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(1);	$r4[2] = $r6;	$r7 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(2);	$r4[3] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("(%s %s %s AND %s)", $r4);	return $r8
;block_num 4