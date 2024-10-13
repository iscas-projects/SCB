(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var500 0)
(declare-sort var876 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getKey/2016346579 (var500) String)
(declare-fun var876_quoteJsonKey/-12491678 (String) String)
(declare-fun getValue/1256397303 (var500) var3108)
(declare-fun var876_exprToString/-1157650430 (var3108) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var500 var500)
(declare-const var2823 var500) ; Statement: r1 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField 
(assert (not (= var2823 null-var500)))
(define-const var0 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var0)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var0!1 String)
(assert (= var0!1 ""))
(assert true)
(define-const var267 String (append/672562846 var0!1 "\u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var0!2 String)
(assert (= var0!2 (str.++ var0!1 "\u0027")))
(assert true)
(define-const var1562 String (getKey/2016346579 var2823)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField: java.lang.String getKey()>() 
(define-const var375 String (var876_quoteJsonKey/-12491678 var1562)) ; Statement: $r3 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteJsonKey(java.lang.String)>($r2) 
(assert true)
(define-const var1475 String (append/672562846 var267 var375)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var267!1 String)
(assert (= var267!1 (str.++ var267 var375)))
(assert true)
(define-const var1482 String (append/672562846 var1475 "\u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1475!1 String)
(assert (= var1475!1 (str.++ var1475 "\u0027")))
(assert true)
(define-const var3931 String (append/672562846 var1482 ":")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1482!1 String)
(assert (= var1482!1 (str.++ var1482 ":")))
(assert true)
(define-const var875 var3108 (getValue/1256397303 var2823)) ; Statement: $r7 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField: com.mysql.cj.x.protobuf.MysqlxExpr$Expr getValue()>() 
(define-const var2732 String (var876_exprToString/-1157650430 var875)) ; Statement: $r8 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String exprToString(com.mysql.cj.x.protobuf.MysqlxExpr$Expr)>($r7) 
(assert true)
(define-const var3679 String (append/672562846 var3931 var2732)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3931!1 String)
(assert (= var3931!1 (str.++ var3931 var2732)))
(assert true)
(define-const var1130 String (toString/-2075883882 var3679)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getKey/2016346579=([com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField], java.lang.String), var876_quoteJsonKey/-12491678=([java.lang.String], java.lang.String), getValue/1256397303=([com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField], com.mysql.cj.x.protobuf.MysqlxExpr$Expr), var876_exprToString/-1157650430=([com.mysql.cj.x.protobuf.MysqlxExpr$Expr], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var500=com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField, var2823=r1, var0=$r0, var267=$r4, var1562=$r2, var876=com.mysql.cj.xdevapi.ExprUnparser, var375=$r3, var1475=$r5, var1482=$r6, var3931=$r9, var3108=com.mysql.cj.x.protobuf.MysqlxExpr$Expr, var875=$r7, var2732=$r8, var3679=$r10, var1130=$r11}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField=var500, r1=var2823, $r0=var0, $r4=var267, $r2=var1562, com.mysql.cj.xdevapi.ExprUnparser=var876, $r3=var375, $r5=var1475, $r6=var1482, $r9=var3931, com.mysql.cj.x.protobuf.MysqlxExpr$Expr=var3108, $r7=var875, $r8=var2732, $r10=var3679, $r11=var1130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField: java.lang.String getKey()>();	$r3 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteJsonKey(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke r1.<com.mysql.cj.x.protobuf.MysqlxExpr$Object$ObjectField: com.mysql.cj.x.protobuf.MysqlxExpr$Expr getValue()>();	$r8 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String exprToString(com.mysql.cj.x.protobuf.MysqlxExpr$Expr)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1