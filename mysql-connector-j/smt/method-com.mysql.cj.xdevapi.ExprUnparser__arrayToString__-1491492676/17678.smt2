(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3987 0)
(declare-sort var1965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValueList/-451457885 (var3987) var1965)
(declare-fun var1965_iterator/-912451715 (var1965) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3987 var3987)
(declare-const var3855 var3987) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Array 
(assert (not (= var3855 null-var3987)))
(define-const var828 String "[") ; Statement: r13 = "[" 
(assert true)
(define-const var2800 var1965 (getValueList/-451457885 var3855)) ; Statement: $r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Array: java.util.List getValueList()>() 
(define-const var585 Iterator (var1965_iterator/-912451715 var2800)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2774 Bool (Iterator_hasNext/-1669924200 var585)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r14 = virtualinvoke r13.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "") 
(assert (= (ite var2774 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3016 String (replaceAll/1692887130 var828 ", $" "")) ; Statement: r14 = virtualinvoke r13.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "") 
(assert (= (replaceAll/1692887130 var828 ", $" "") (str.replace_re_all var828 (str.to_re ", $") "")))
(define-const var32 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var32)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var32!1 String)
(assert (= var32!1 ""))
(assert true)
(define-const var138 String (append/672562846 var32!1 var3016)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var32!2 String)
(assert (= var32!2 (str.++ var32!1 var3016)))
(assert true)
(define-const var2252 String (append/672562846 var138 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var138!1 String)
(assert (= var138!1 (str.++ var138 "]")))
(assert true)
(define-const var1482 String (toString/-2075883882 var2252)) ; Statement: r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getValueList/-451457885=([com.mysql.cj.x.protobuf.MysqlxExpr$Array], java.util.List), var1965_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3987=com.mysql.cj.x.protobuf.MysqlxExpr$Array, var3855=r0, var828=r13, var1965=java.util.List, var2800=$r1, var585=r2, var2774=$z0, var3016=r14, var32=$r3, var138=$r4, var2252=$r5, var1482=r15}
; {com.mysql.cj.x.protobuf.MysqlxExpr$Array=var3987, r0=var3855, r13=var828, java.util.List=var1965, $r1=var2800, r2=var585, $z0=var2774, r14=var3016, $r3=var32, $r4=var138, $r5=var2252, r15=var1482}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxExpr$Array;	r13 = "[";	$r1 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxExpr$Array: java.util.List getValueList()>();	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r14 = virtualinvoke r13.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "");	r14 = virtualinvoke r13.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(", $", "");	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return r15
;block_num 3