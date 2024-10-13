(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var777 0)
(declare-sort var3389 0)
(declare-sort var2417 0)
(declare-sort var3523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPlaceHolder/-884051105 (var777) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun value/-978839151 (var777) var2417)
(declare-fun append/-1031950772 (String var2417) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var3523-to-var2417 (var3523) var2417)
(declare-fun secondValue/-978839151 (var777) var2417)
(declare-const null-var777 var777)
(declare-const null-String String)
(declare-const null-var3389 var3389)
(declare-const var3523-AND var3523)
(declare-const var1021 var777) ; Statement: r0 := @this: cn.hutool.db.sql.Condition 
(assert (not (= var1021 null-var777)))
(declare-const var3384 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3384 null-String)))
(declare-const var3312 var3389) ; Statement: r6 := @parameter1: java.util.List 
(assert (not (= var3312 null-var3389)))
(assert true)
(define-const var3237 Bool (isPlaceHolder/-884051105 var1021)) ; Statement: $z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var3237 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2445 String (append/-1166366385 var3384 32)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3384!1 String)
(assert (str.prefixof var3384 var3384!1))
(define-const var2181 var2417 (value/-978839151 var1021)) ; Statement: $r2 = r0.<cn.hutool.db.sql.Condition: java.lang.Object value> 
(assert true)
;(assert (append/-1031950772 var2445 var2181)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2445!1 String)
(assert (str.prefixof var2445 var2445!1))
(assert true) ; Non Conditional
(assert true)
(define-const var982 String (append/672562846 var3384!1 " ")) ; Statement: $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3384!2 String)
(assert (= var3384!2 (str.++ var3384!1 " ")))
(define-const var1408 var3523 var3523-AND) ; Statement: $r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND> 
(assert true)
;(assert (append/-1031950772 var982 (cast-from-var3523-to-var2417 var1408))) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var982!1 String)
(assert (str.prefixof var982 var982!1))
(assert true)
(define-const var2106 Bool (isPlaceHolder/-884051105 var1021)) ; Statement: $z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var2106 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1162 String (append/-1166366385 var3384!2 32)) ; Statement: $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3384!3 String)
(assert (str.prefixof var3384!2 var3384!3))
(define-const var932 var2417 (secondValue/-978839151 var1021)) ; Statement: $r4 = r0.<cn.hutool.db.sql.Condition: java.lang.Object secondValue> 
(assert true)
;(assert (append/-1031950772 var1162 var932)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1162!1 String)
(assert (str.prefixof var1162 var1162!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPlaceHolder/-884051105=([cn.hutool.db.sql.Condition], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), value/-978839151=([cn.hutool.db.sql.Condition], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var3523-to-var2417=([cn.hutool.db.sql.LogicalOperator], java.lang.Object), secondValue/-978839151=([cn.hutool.db.sql.Condition], java.lang.Object)}
; {var777=cn.hutool.db.sql.Condition, var1021=r0, var3384=r1, var3389=java.util.List, var3312=r6, var3237=$z0, var2445=$r3, var2417=java.lang.Object, var2181=$r2, var982=$r9, var3523=cn.hutool.db.sql.LogicalOperator, var1408=$r10, var2106=$z1, var1162=$r5, var932=$r4}
; {cn.hutool.db.sql.Condition=var777, r0=var1021, r1=var3384, java.util.List=var3389, r6=var3312, $z0=var3237, $r3=var2445, java.lang.Object=var2417, $r2=var2181, $r9=var982, cn.hutool.db.sql.LogicalOperator=var3523, $r10=var1408, $z1=var2106, $r5=var1162, $r4=var932}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.Condition;	r1 := @parameter0: java.lang.StringBuilder;	r6 := @parameter1: java.util.List;	$z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r2 = r0.<cn.hutool.db.sql.Condition: java.lang.Object value>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r0.<cn.hutool.db.sql.Condition: java.lang.Object secondValue>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	return
;block_num 5