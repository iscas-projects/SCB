(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2458 0)
(declare-sort var1873 0)
(declare-sort var872 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/17310867 (var2458) var1873)
(declare-fun getName/-525386870 (var1873) String)
(declare-fun var872_quoteIdentifier/-407364542 (String) String)
(declare-fun hasSchemaName/-2134379716 (var1873) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getParamList/-1575098240 (var2458) var2394)
(declare-fun var2394_iterator/-912451715 (var2394) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-var2458 var2458)
(declare-const var751 var2458) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall 
(assert (not (= var751 null-var2458)))
(assert true)
(define-const var3153 var1873 (getName/17310867 var751)) ; Statement: r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall: com.mysql.cj.x.protobuf.MysqlxExpr$Identifier getName()>() 
(assert true)
(define-const var1431 String (getName/-525386870 var3153)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Identifier: java.lang.String getName()>() 
(define-const var3086 String (var872_quoteIdentifier/-407364542 var1431)) ; Statement: r24 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r2) 
(assert true)
(define-const var982 Bool (hasSchemaName/-2134379716 var3153)) ; Statement: $z0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Identifier: boolean hasSchemaName()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var982 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3417 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3417)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3417!1 String)
(assert (= var3417!1 ""))
(assert true)
(define-const var1721 String (append/672562846 var3417!1 var3086)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var3417!2 String)
(assert (= var3417!2 (str.++ var3417!1 var3086)))
(assert true)
(define-const var3483 String (append/672562846 var1721 "(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1721!1 String)
(assert (= var1721!1 (str.++ var1721 "(")))
(assert true)
(define-const var2051 String (toString/-2075883882 var3483)) ; Statement: r25 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var692 var2394 (getParamList/-1575098240 var751)) ; Statement: $r6 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall: java.util.List getParamList()>() 
(define-const var2093 Iterator (var2394_iterator/-912451715 var692)) ; Statement: $r23 = interfaceinvoke $r6.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2677 Bool (Iterator_hasNext/-1669924200 var2093)) ; Statement: $z1 = interfaceinvoke $r23.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto r26 = virtualinvoke r25.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "") 
(assert (= (ite var2677 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2572 String (replaceAll/1692887130 var2051 ", $" "")) ; Statement: r26 = virtualinvoke r25.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "") 
(assert (= (replaceAll/1692887130 var2051 ", $" "") (str.replace_re_all var2051 (str.to_re ", $") "")))
(define-const var2745 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2745)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2745!1 String)
(assert (= var2745!1 ""))
(assert true)
(define-const var2568 String (append/672562846 var2745!1 var2572)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2745!2 String)
(assert (= var2745!2 (str.++ var2745!1 var2572)))
(assert true)
(define-const var245 String (append/672562846 var2568 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2568!1 String)
(assert (= var2568!1 (str.++ var2568 ")")))
(assert true)
(define-const var3358 String (toString/-2075883882 var245)) ; Statement: r27 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return r27 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/17310867=([com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall], com.mysql.cj.x.protobuf.MysqlxExpr$Identifier), getName/-525386870=([com.mysql.cj.x.protobuf.MysqlxExpr$Identifier], java.lang.String), var872_quoteIdentifier/-407364542=([java.lang.String], java.lang.String), hasSchemaName/-2134379716=([com.mysql.cj.x.protobuf.MysqlxExpr$Identifier], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getParamList/-1575098240=([com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall], java.util.List), var2394_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var2458=com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall, var751=r0, var1873=com.mysql.cj.x.protobuf.MysqlxExpr$Identifier, var3153=r1, var1431=$r2, var872=com.mysql.cj.xdevapi.ExprUnparser, var3086=r24, var982=$z0, var3417=$r3, var1721=$r4, var3483=$r5, var2051=r25, var2394=java.util.List, var692=$r6, var2093=$r23, var2677=$z1, var2572=r26, var2745=$r7, var2568=$r8, var245=$r9, var3358=r27}
; {com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall=var2458, r0=var751, com.mysql.cj.x.protobuf.MysqlxExpr$Identifier=var1873, r1=var3153, $r2=var1431, com.mysql.cj.xdevapi.ExprUnparser=var872, r24=var3086, $z0=var982, $r3=var3417, $r4=var1721, $r5=var3483, r25=var2051, java.util.List=var2394, $r6=var692, $r23=var2093, $z1=var2677, r26=var2572, $r7=var2745, $r8=var2568, $r9=var245, r27=var3358}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall;	r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall: com.mysql.cj.x.protobuf.MysqlxExpr$Identifier getName()>();	$r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Identifier: java.lang.String getName()>();	r24 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r2);	$z0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Identifier: boolean hasSchemaName()>();	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	r25 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$FunctionCall: java.util.List getParamList()>();	$r23 = interfaceinvoke $r6.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r23.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto r26 = virtualinvoke r25.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "");	r26 = virtualinvoke r25.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "");	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r27 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return r27
;block_num 4