(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2515 0)
(declare-sort var172 0)
(declare-sort var1929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasName/-2099811629 (var2515) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDocumentPathList/-1845822712 (var2515) var172)
(declare-fun var1929_documentPathToString/-2035336950 (var172) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2515 var2515)
(declare-const var847 var2515) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier 
(assert (not (= var847 null-var2515)))
(assert true)
(define-const var1261 Bool (hasName/-2099811629 var847)) ; Statement: $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier: boolean hasName()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var1261 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1704 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1704)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1704!1 String)
(assert (= var1704!1 ""))
(assert true)
(define-const var2297 String (append/672562846 var1704!1 "$")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$") 
(declare-const var1704!2 String)
(assert (= var1704!2 (str.++ var1704!1 "$")))
(assert true)
(define-const var2794 var172 (getDocumentPathList/-1845822712 var847)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier: java.util.List getDocumentPathList()>() 
(define-const var1872 String (var1929_documentPathToString/-2035336950 var2794)) ; Statement: $r3 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String documentPathToString(java.util.List)>($r2) 
(assert true)
(define-const var2113 String (append/672562846 var2297 var1872)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2297!1 String)
(assert (= var2297!1 (str.++ var2297 var1872)))
(assert true)
(define-const var1156 String (toString/-2075883882 var2113)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasName/-2099811629=([com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDocumentPathList/-1845822712=([com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier], java.util.List), var1929_documentPathToString/-2035336950=([java.util.List], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2515=com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier, var847=r0, var1261=$z0, var1704=$r1, var2297=$r4, var172=java.util.List, var2794=$r2, var1929=com.mysql.cj.xdevapi.ExprUnparser, var1872=$r3, var2113=$r5, var1156=$r6}
; {com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier=var2515, r0=var847, $z0=var1261, $r1=var1704, $r4=var2297, java.util.List=var172, $r2=var2794, com.mysql.cj.xdevapi.ExprUnparser=var1929, $r3=var1872, $r5=var2113, $r6=var1156}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier;	$z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier: boolean hasName()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$");	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$ColumnIdentifier: java.util.List getDocumentPathList()>();	$r3 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String documentPathToString(java.util.List)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2