(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2074 0)
(declare-sort var1452 0)
(declare-sort var3742 0)
(declare-sort var2581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPlaceHolder/-884051105 (var2074) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2581) String)
(declare-fun cast-from-var3742-to-var2581 (var3742) var2581)
(declare-const null-var2074 var2074)
(declare-const null-String String)
(declare-const null-var1452 var1452)
(declare-const var3742-AND var3742)
(declare-const var329 var2074) ; Statement: r0 := @this: cn.hutool.db.sql.Condition 
(assert (not (= var329 null-var2074)))
(declare-const var809 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var809 null-String)))
(declare-const var55 var1452) ; Statement: r6 := @parameter1: java.util.List 
(assert (not (= var55 null-var1452)))
(assert true)
(define-const var1977 Bool (isPlaceHolder/-884051105 var329)) ; Statement: $z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (not (= (ite var1977 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var809 " ?")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?") 
(declare-const var809!1 String)
(assert (= var809!1 (str.++ var809 " ?")))
 ; Statement: if null == r6 goto $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(assert (= null-var1452 var55)) ; Cond: null == r6 
(assert true)
(define-const var1654 String (append/672562846 var809!1 " ")) ; Statement: $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var809!2 String)
(assert (= var809!2 (str.++ var809!1 " ")))
(define-const var240 var3742 var3742-AND) ; Statement: $r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND> 
(assert true)
;(assert (append/-1031950772 var1654 (cast-from-var3742-to-var2581 var240))) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var1654!1 String)
(assert (str.prefixof var1654 var1654!1))
(assert true)
(define-const var2427 Bool (isPlaceHolder/-884051105 var329)) ; Statement: $z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (not (= (ite var2427 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (append/672562846 var809!2 " ?")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?") 
(declare-const var809!3 String)
(assert (= var809!3 (str.++ var809!2 " ?")))
 ; Statement: if null == r6 goto return 
(assert (= null-var1452 var55)) ; Cond: null == r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPlaceHolder/-884051105=([cn.hutool.db.sql.Condition], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3742-to-var2581=([cn.hutool.db.sql.LogicalOperator], java.lang.Object)}
; {var2074=cn.hutool.db.sql.Condition, var329=r0, var809=r1, var1452=java.util.List, var55=r6, var1977=$z0, var1654=$r9, var3742=cn.hutool.db.sql.LogicalOperator, var240=$r10, var2581=java.lang.Object, var2427=$z1}
; {cn.hutool.db.sql.Condition=var2074, r0=var329, r1=var809, java.util.List=var1452, r6=var55, $z0=var1977, $r9=var1654, cn.hutool.db.sql.LogicalOperator=var3742, $r10=var240, java.lang.Object=var2581, $z1=var2427}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.Condition;	r1 := @parameter0: java.lang.StringBuilder;	r6 := @parameter1: java.util.List;	$z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?");	if null == r6 goto $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?");	if null == r6 goto return;	return
;block_num 5