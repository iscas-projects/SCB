(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2696 0)
(declare-sort var981 0)
(declare-sort var3271 0)
(declare-sort var1141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPlaceHolder/-884051105 (var2696) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun value/-978839151 (var2696) var3271)
(declare-fun append/-1031950772 (String var3271) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var1141-to-var3271 (var1141) var3271)
(declare-const null-var2696 var2696)
(declare-const null-String String)
(declare-const null-var981 var981)
(declare-const var1141-AND var1141)
(declare-const var3312 var2696) ; Statement: r0 := @this: cn.hutool.db.sql.Condition 
(assert (not (= var3312 null-var2696)))
(declare-const var3541 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3541 null-String)))
(declare-const var417 var981) ; Statement: r6 := @parameter1: java.util.List 
(assert (not (= var417 null-var981)))
(assert true)
(define-const var593 Bool (isPlaceHolder/-884051105 var3312)) ; Statement: $z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var593 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3017 String (append/-1166366385 var3541 32)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3541!1 String)
(assert (str.prefixof var3541 var3541!1))
(define-const var1539 var3271 (value/-978839151 var3312)) ; Statement: $r2 = r0.<cn.hutool.db.sql.Condition: java.lang.Object value> 
(assert true)
;(assert (append/-1031950772 var3017 var1539)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3017!1 String)
(assert (str.prefixof var3017 var3017!1))
(assert true) ; Non Conditional
(assert true)
(define-const var2995 String (append/672562846 var3541!1 " ")) ; Statement: $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3541!2 String)
(assert (= var3541!2 (str.++ var3541!1 " ")))
(define-const var2656 var1141 var1141-AND) ; Statement: $r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND> 
(assert true)
;(assert (append/-1031950772 var2995 (cast-from-var1141-to-var3271 var2656))) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2995!1 String)
(assert (str.prefixof var2995 var2995!1))
(assert true)
(define-const var841 Bool (isPlaceHolder/-884051105 var3312)) ; Statement: $z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (not (= (ite var841 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (append/672562846 var3541!2 " ?")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?") 
(declare-const var3541!3 String)
(assert (= var3541!3 (str.++ var3541!2 " ?")))
 ; Statement: if null == r6 goto return 
(assert (= null-var981 var417)) ; Cond: null == r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPlaceHolder/-884051105=([cn.hutool.db.sql.Condition], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), value/-978839151=([cn.hutool.db.sql.Condition], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var1141-to-var3271=([cn.hutool.db.sql.LogicalOperator], java.lang.Object)}
; {var2696=cn.hutool.db.sql.Condition, var3312=r0, var3541=r1, var981=java.util.List, var417=r6, var593=$z0, var3017=$r3, var3271=java.lang.Object, var1539=$r2, var2995=$r9, var1141=cn.hutool.db.sql.LogicalOperator, var2656=$r10, var841=$z1}
; {cn.hutool.db.sql.Condition=var2696, r0=var3312, r1=var3541, java.util.List=var981, r6=var417, $z0=var593, $r3=var3017, java.lang.Object=var3271, $r2=var1539, $r9=var2995, cn.hutool.db.sql.LogicalOperator=var1141, $r10=var2656, $z1=var841}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: cn.hutool.db.sql.Condition;	r1 := @parameter0: java.lang.StringBuilder;	r6 := @parameter1: java.util.List;	$z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r2 = r0.<cn.hutool.db.sql.Condition: java.lang.Object value>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?");	if null == r6 goto return;	return
;block_num 5