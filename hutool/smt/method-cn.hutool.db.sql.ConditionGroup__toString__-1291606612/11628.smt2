(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1874 0)
(declare-sort var1578 0)
(declare-sort var2856 0)
(declare-sort var398 0)
(declare-sort var1288 0)
(declare-sort var937 0)
(declare-sort var448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun conditions/671891310 (var1874) (Array Int var2856))
(declare-fun var398_isEmpty/916532361 ((Array Int var1288)) Bool)
(declare-fun cast-from-__Array__Int__var2856__-to-__Array__Int__var1288__ ((Array Int var2856)) (Array Int var1288))
(declare-fun var937_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var448_of/-875946865 ((Array Int var2856)) var448)
(declare-fun build/1153152372 (var448 var1578) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1874 var1874)
(declare-const null-var1578 var1578)
(declare-const var33 var1874) ; Statement: r0 := @this: cn.hutool.db.sql.ConditionGroup 
(assert (not (= var33 null-var1874)))
(declare-const var2833 var1578) ; Statement: r4 := @parameter0: java.util.List 
(assert (not (= var2833 null-var1578)))
(define-const var2849 (Array Int var2856) (conditions/671891310 var33)) ; Statement: $r1 = r0.<cn.hutool.db.sql.ConditionGroup: cn.hutool.db.sql.Condition[] conditions> 
(define-const var1974 Bool (var398_isEmpty/916532361 (cast-from-__Array__Int__var2856__-to-__Array__Int__var1288__ var2849))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>($r1) 
 ; Statement: if $z0 == 0 goto r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert (= (ite var1974 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1998 String var937_builder/-311177978) ; Statement: r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
;(assert (append/672562846 var1998 "(")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1998!1 String)
(assert (= var1998!1 (str.++ var1998 "(")))
(define-const var1934 (Array Int var2856) (conditions/671891310 var33)) ; Statement: $r3 = r0.<cn.hutool.db.sql.ConditionGroup: cn.hutool.db.sql.Condition[] conditions> 
(define-const var432 var448 (var448_of/-875946865 var1934)) ; Statement: $r5 = staticinvoke <cn.hutool.db.sql.ConditionBuilder: cn.hutool.db.sql.ConditionBuilder of(cn.hutool.db.sql.Condition[])>($r3) 
(assert true)
(define-const var3250 String (build/1153152372 var432 var2833)) ; Statement: $r6 = virtualinvoke $r5.<cn.hutool.db.sql.ConditionBuilder: java.lang.String build(java.util.List)>(r4) 
(assert true)
;(assert (append/672562846 var1998!1 var3250)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1998!2 String)
(assert (= var1998!2 (str.++ var1998!1 var3250)))
(assert true)
;(assert (append/672562846 var1998!2 ")")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1998!3 String)
(assert (= var1998!3 (str.++ var1998!2 ")")))
(assert true)
(define-const var1390 String (toString/-2075883882 var1998!3)) ; Statement: $r7 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {conditions/671891310=([cn.hutool.db.sql.ConditionGroup], cn.hutool.db.sql.Condition[]), var398_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__var2856__-to-__Array__Int__var1288__=([cn.hutool.db.sql.Condition[]], java.lang.Object[]), var937_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var448_of/-875946865=([cn.hutool.db.sql.Condition[]], cn.hutool.db.sql.ConditionBuilder), build/1153152372=([cn.hutool.db.sql.ConditionBuilder, java.util.List], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1874=cn.hutool.db.sql.ConditionGroup, var33=r0, var1578=java.util.List, var2833=r4, var2856=cn.hutool.db.sql.Condition, var2849=$r1, var398=cn.hutool.core.util.ArrayUtil, var1288=java.lang.Object, var1974=$z0, var937=cn.hutool.core.util.StrUtil, var1998=r2, var1934=$r3, var448=cn.hutool.db.sql.ConditionBuilder, var432=$r5, var3250=$r6, var1390=$r7}
; {cn.hutool.db.sql.ConditionGroup=var1874, r0=var33, java.util.List=var1578, r4=var2833, cn.hutool.db.sql.Condition=var2856, $r1=var2849, cn.hutool.core.util.ArrayUtil=var398, java.lang.Object=var1288, $z0=var1974, cn.hutool.core.util.StrUtil=var937, r2=var1998, $r3=var1934, cn.hutool.db.sql.ConditionBuilder=var448, $r5=var432, $r6=var3250, $r7=var1390}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.ConditionGroup;	r4 := @parameter0: java.util.List;	$r1 = r0.<cn.hutool.db.sql.ConditionGroup: cn.hutool.db.sql.Condition[] conditions>;	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>($r1);	if $z0 == 0 goto r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r0.<cn.hutool.db.sql.ConditionGroup: cn.hutool.db.sql.Condition[] conditions>;	$r5 = staticinvoke <cn.hutool.db.sql.ConditionBuilder: cn.hutool.db.sql.ConditionBuilder of(cn.hutool.db.sql.Condition[])>($r3);	$r6 = virtualinvoke $r5.<cn.hutool.db.sql.ConditionBuilder: java.lang.String build(java.util.List)>(r4);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2