(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1193 0)
(declare-sort var1875 0)
(declare-sort var1421 0)
(declare-sort var2423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPlaceHolder/-884051105 (var1193) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2423) String)
(declare-fun cast-from-var1421-to-var2423 (var1421) var2423)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun secondValue/-978839151 (var1193) var2423)
(declare-const null-var1193 var1193)
(declare-const null-String String)
(declare-const null-var1875 var1875)
(declare-const var1421-AND var1421)
(declare-const var3151 var1193) ; Statement: r0 := @this: cn.hutool.db.sql.Condition 
(assert (not (= var3151 null-var1193)))
(declare-const var707 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var707 null-String)))
(declare-const var222 var1875) ; Statement: r6 := @parameter1: java.util.List 
(assert (not (= var222 null-var1875)))
(assert true)
(define-const var69 Bool (isPlaceHolder/-884051105 var3151)) ; Statement: $z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (not (= (ite var69 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var707 " ?")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?") 
(declare-const var707!1 String)
(assert (= var707!1 (str.++ var707 " ?")))
 ; Statement: if null == r6 goto $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(assert (= null-var1875 var222)) ; Cond: null == r6 
(assert true)
(define-const var1516 String (append/672562846 var707!1 " ")) ; Statement: $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var707!2 String)
(assert (= var707!2 (str.++ var707!1 " ")))
(define-const var1759 var1421 var1421-AND) ; Statement: $r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND> 
(assert true)
;(assert (append/-1031950772 var1516 (cast-from-var1421-to-var2423 var1759))) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var1516!1 String)
(assert (str.prefixof var1516 var1516!1))
(assert true)
(define-const var2782 Bool (isPlaceHolder/-884051105 var3151)) ; Statement: $z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(assert (= (ite var2782 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3223 String (append/-1166366385 var707!2 32)) ; Statement: $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var707!3 String)
(assert (str.prefixof var707!2 var707!3))
(define-const var3594 var2423 (secondValue/-978839151 var3151)) ; Statement: $r4 = r0.<cn.hutool.db.sql.Condition: java.lang.Object secondValue> 
(assert true)
;(assert (append/-1031950772 var3223 var3594)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3223!1 String)
(assert (str.prefixof var3223 var3223!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPlaceHolder/-884051105=([cn.hutool.db.sql.Condition], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1421-to-var2423=([cn.hutool.db.sql.LogicalOperator], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), secondValue/-978839151=([cn.hutool.db.sql.Condition], java.lang.Object)}
; {var1193=cn.hutool.db.sql.Condition, var3151=r0, var707=r1, var1875=java.util.List, var222=r6, var69=$z0, var1516=$r9, var1421=cn.hutool.db.sql.LogicalOperator, var1759=$r10, var2423=java.lang.Object, var2782=$z1, var3223=$r5, var3594=$r4}
; {cn.hutool.db.sql.Condition=var1193, r0=var3151, r1=var707, java.util.List=var1875, r6=var222, $z0=var69, $r9=var1516, cn.hutool.db.sql.LogicalOperator=var1421, $r10=var1759, java.lang.Object=var2423, $z1=var2782, $r5=var3223, $r4=var3594}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.Condition;	r1 := @parameter0: java.lang.StringBuilder;	r6 := @parameter1: java.util.List;	$z0 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z0 == 0 goto $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ?");	if null == r6 goto $r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r9 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r10 = <cn.hutool.db.sql.LogicalOperator: cn.hutool.db.sql.LogicalOperator AND>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$z1 = virtualinvoke r0.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z1 == 0 goto $r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = r0.<cn.hutool.db.sql.Condition: java.lang.Object secondValue>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	return
;block_num 5