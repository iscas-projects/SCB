(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3293 0)
(declare-sort var3527 0)
(declare-sort var3240 0)
(declare-sort var2518 0)
(declare-sort var3964 0)
(declare-sort var1467 0)
(declare-sort var2662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3964_newBuilder/704016303 () var2518)
(declare-fun setName/298987839 (var2518 String) var2518)
(declare-fun addParam/-1727790734 (var2518 var3240) var2518)
(declare-fun build/581680784 (var2518) var3964)
(declare-fun var3240_newBuilder/-428805937 () var1467)
(declare-fun setType/913559226 (var1467 var2662) var1467)
(declare-fun setOperator/881274407 (var1467 var3964) var1467)
(declare-fun build/2078518256 (var1467) var3240)
(declare-const null-var3293 var3293)
(declare-const null-String String)
(declare-const null-var3240 var3240)
(declare-const var2662-OPERATOR var2662)
(declare-const var1265 var3293) ; Statement: r4 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var1265 null-var3293)))
(declare-const var608 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var608 null-String)))
(declare-const var2095 var3240) ; Statement: r3 := @parameter1: com.mysql.cj.x.protobuf.MysqlxExpr$Expr 
(assert (not (= var2095 null-var3240)))
(define-const var2727 String "-") ; Statement: $r1 = "-" 
(assert true)
(define-const var3450 Bool (= var2727 var608)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "+" 
(assert (not (= (ite var3450 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2114 String "sign_minus") ; Statement: $r5 = "sign_minus" 
 ; Statement: goto [?= $r6 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxExpr$Operator: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder newBuilder()>()] 
(assert true) ; Non Conditional
(define-const var1020 var2518 var3964_newBuilder/704016303) ; Statement: $r6 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxExpr$Operator: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder newBuilder()>() 
(assert true)
(define-const var1973 var2518 (setName/298987839 var1020 var2114)) ; Statement: $r7 = virtualinvoke $r6.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder setName(java.lang.String)>($r5) 
(assert true)
(define-const var1084 var2518 (addParam/-1727790734 var1973 var2095)) ; Statement: $r8 = virtualinvoke $r7.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder addParam(com.mysql.cj.x.protobuf.MysqlxExpr$Expr)>(r3) 
(assert true)
(define-const var3802 var3964 (build/581680784 var1084)) ; Statement: $r9 = virtualinvoke $r8.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Operator build()>() 
(define-const var3709 var1467 var3240_newBuilder/-428805937) ; Statement: $r10 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder newBuilder()>() 
(define-const var3724 var2662 var2662-OPERATOR) ; Statement: $r11 = <com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type OPERATOR> 
(assert true)
(define-const var3510 var1467 (setType/913559226 var3709 var3724)) ; Statement: $r12 = virtualinvoke $r10.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder setType(com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type)>($r11) 
(assert true)
(define-const var3155 var1467 (setOperator/881274407 var3510 var3802)) ; Statement: $r13 = virtualinvoke $r12.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder setOperator(com.mysql.cj.x.protobuf.MysqlxExpr$Operator)>($r9) 
(assert true)
(define-const var2216 var3240 (build/2078518256 var3155)) ; Statement: $r14 = virtualinvoke $r13.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Expr build()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3964_newBuilder/704016303=([], com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder), setName/298987839=([com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder, java.lang.String], com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder), addParam/-1727790734=([com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder, com.mysql.cj.x.protobuf.MysqlxExpr$Expr], com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder), build/581680784=([com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder], com.mysql.cj.x.protobuf.MysqlxExpr$Operator), var3240_newBuilder/-428805937=([], com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder), setType/913559226=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder, com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type], com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder), setOperator/881274407=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder, com.mysql.cj.x.protobuf.MysqlxExpr$Operator], com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder), build/2078518256=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder], com.mysql.cj.x.protobuf.MysqlxExpr$Expr)}
; {var3293=com.mysql.cj.xdevapi.ExprParser, var1265=r4, var608=r0, var3527=null_type, var3240=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var2095=r3, var2727=$r1, var3450=$z0, var2114=$r5, var2518=com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder, var3964=com.mysql.cj.x.protobuf.MysqlxExpr$Operator, var1020=$r6, var1973=$r7, var1084=$r8, var3802=$r9, var1467=com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder, var3709=$r10, var2662=com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type, var3724=$r11, var3510=$r12, var3155=$r13, var2216=$r14}
; {com.mysql.cj.xdevapi.ExprParser=var3293, r4=var1265, r0=var608, null_type=var3527, com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var3240, r3=var2095, $r1=var2727, $z0=var3450, $r5=var2114, com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder=var2518, com.mysql.cj.x.protobuf.MysqlxExpr$Operator=var3964, $r6=var1020, $r7=var1973, $r8=var1084, $r9=var3802, com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder=var1467, $r10=var3709, com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type=var2662, $r11=var3724, $r12=var3510, $r13=var3155, $r14=var2216}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.mysql.cj.xdevapi.ExprParser;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.mysql.cj.x.protobuf.MysqlxExpr$Expr;	$r1 = "-";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "+";	$r5 = "sign_minus";	goto [?= $r6 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxExpr$Operator: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder newBuilder()>()];	$r6 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxExpr$Operator: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder newBuilder()>();	$r7 = virtualinvoke $r6.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder setName(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder addParam(com.mysql.cj.x.protobuf.MysqlxExpr$Expr)>(r3);	$r9 = virtualinvoke $r8.<com.mysql.cj.x.protobuf.MysqlxExpr$Operator$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Operator build()>();	$r10 = staticinvoke <com.mysql.cj.x.protobuf.MysqlxExpr$Expr: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder newBuilder()>();	$r11 = <com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type OPERATOR>;	$r12 = virtualinvoke $r10.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder setType(com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Type)>($r11);	$r13 = virtualinvoke $r12.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder setOperator(com.mysql.cj.x.protobuf.MysqlxExpr$Operator)>($r9);	$r14 = virtualinvoke $r13.<com.mysql.cj.x.protobuf.MysqlxExpr$Expr$Builder: com.mysql.cj.x.protobuf.MysqlxExpr$Expr build()>();	return $r14
;block_num 3