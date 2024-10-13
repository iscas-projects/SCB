(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var356 0)
(declare-sort var3969 0)
(declare-sort var1595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1595_builder/-311177978 () String)
(declare-fun checkValueNull/48873553 (var356) var356)
(declare-fun field/-978839151 (var356) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun operator/-978839151 (var356) String)
(declare-fun isOperatorBetween/612544014 (var356) Bool)
(declare-fun buildValuePartForBETWEEN/846944355 (var356 String var3969) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var356 var356)
(declare-const null-var3969 var3969)
(declare-const var0 var356) ; Statement: r1 := @this: cn.hutool.db.sql.Condition 
(assert (not (= var0 null-var356)))
(declare-const var502 var3969) ; Statement: r9 := @parameter0: java.util.List 
(assert (not (= var502 null-var3969)))
(define-const var34 String var1595_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
;(assert (checkValueNull/48873553 var0)) ; Statement: virtualinvoke r1.<cn.hutool.db.sql.Condition: cn.hutool.db.sql.Condition checkValueNull()>() 

(declare-const var0!1 var356)
(define-const var1022 String (field/-978839151 var0!1)) ; Statement: $r2 = r1.<cn.hutool.db.sql.Condition: java.lang.String field> 
(assert true)
(define-const var566 String (append/672562846 var34 var1022)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var34!1 String)
(assert (= var34!1 (str.++ var34 var1022)))
(assert true)
(define-const var1790 String (append/672562846 var566 " ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var566!1 String)
(assert (= var566!1 (str.++ var566 " ")))
(define-const var1253 String (operator/-978839151 var0!1)) ; Statement: $r4 = r1.<cn.hutool.db.sql.Condition: java.lang.String operator> 
(assert true)
;(assert (append/672562846 var1790 var1253)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1790!1 String)
(assert (= var1790!1 (str.++ var1790 var1253)))
(assert true)
(define-const var1284 Bool (isOperatorBetween/612544014 var0!1)) ; Statement: $z0 = virtualinvoke r1.<cn.hutool.db.sql.Condition: boolean isOperatorBetween()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<cn.hutool.db.sql.Condition: boolean isOperatorIn()>() 
(assert (not (= (ite var1284 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (buildValuePartForBETWEEN/846944355 var0!1 var34!1 var502)) ; Statement: specialinvoke r1.<cn.hutool.db.sql.Condition: void buildValuePartForBETWEEN(java.lang.StringBuilder,java.util.List)>(r0, r9) 

(declare-const var0!2 var356)
(declare-const var34!2 String)
(declare-const var502!1 var3969)
 ; Statement: goto [?= $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var204 String (toString/-2075883882 var34!2)) ; Statement: $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1595_builder/-311177978=([], java.lang.StringBuilder), checkValueNull/48873553=([cn.hutool.db.sql.Condition], cn.hutool.db.sql.Condition), field/-978839151=([cn.hutool.db.sql.Condition], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), operator/-978839151=([cn.hutool.db.sql.Condition], java.lang.String), isOperatorBetween/612544014=([cn.hutool.db.sql.Condition], boolean), buildValuePartForBETWEEN/846944355=([cn.hutool.db.sql.Condition, java.lang.StringBuilder, java.util.List], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var356=cn.hutool.db.sql.Condition, var0=r1, var3969=java.util.List, var502=r9, var1595=cn.hutool.core.util.StrUtil, var34=r0, var1022=$r2, var566=$r3, var1790=$r5, var1253=$r4, var1284=$z0, var204=$r12}
; {cn.hutool.db.sql.Condition=var356, r1=var0, java.util.List=var3969, r9=var502, cn.hutool.core.util.StrUtil=var1595, r0=var34, $r2=var1022, $r3=var566, $r5=var1790, $r4=var1253, $z0=var1284, $r12=var204}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.db.sql.Condition;	r9 := @parameter0: java.util.List;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	virtualinvoke r1.<cn.hutool.db.sql.Condition: cn.hutool.db.sql.Condition checkValueNull()>();	$r2 = r1.<cn.hutool.db.sql.Condition: java.lang.String field>;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = r1.<cn.hutool.db.sql.Condition: java.lang.String operator>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$z0 = virtualinvoke r1.<cn.hutool.db.sql.Condition: boolean isOperatorBetween()>();	if $z0 == 0 goto $z1 = virtualinvoke r1.<cn.hutool.db.sql.Condition: boolean isOperatorIn()>();	specialinvoke r1.<cn.hutool.db.sql.Condition: void buildValuePartForBETWEEN(java.lang.StringBuilder,java.util.List)>(r0, r9);	goto [?= $r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r12 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3