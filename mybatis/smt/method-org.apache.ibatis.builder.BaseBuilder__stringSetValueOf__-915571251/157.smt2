(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1532 0)
(declare-sort var2513 0)
(declare-sort var3099 0)
(declare-sort var1418 0)
(declare-sort var660 0)
(declare-sort var1086 0)
(declare-sort var2651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3099-init () var3099)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var660_asList/1779083644 ((Array Int var1086)) var1418)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1086__ ((Array Int String)) (Array Int var1086))
(declare-fun <init>/1161881499 (var3099 var2651) void)
(declare-fun cast-from-var1418-to-var2651 (var1418) var2651)
(declare-const null-var1532 var1532)
(declare-const null-String String)
(declare-const var1755 var1532) ; Statement: r4 := @this: org.apache.ibatis.builder.BaseBuilder 
(assert (not (= var1755 null-var1532)))
(declare-const var2368 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2368 null-String)))
(declare-const var693 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var693 null-String)))
 ; Statement: if r5 != null goto $r6 = r5 
(assert (not (= var2368 null-String))) ; Cond: r5 != null 
(define-const var1062 String var2368) ; Statement: $r6 = r5 
(assert true) ; Non Conditional
(define-const var613 var3099 var3099-init) ; Statement: $r0 = new java.util.HashSet 
(assert true)
(define-const var2351 (Array Int String) (split/-636890950 var1062 ",")) ; Statement: $r1 = virtualinvoke $r6.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1062 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var1831 var1418 (var660_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var1086__ var2351))) ; Statement: $r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1) 
(assert true)
;(assert (<init>/1161881499 var613 (cast-from-var1418-to-var2651 var1831))) ; Statement: specialinvoke $r0.<java.util.HashSet: void <init>(java.util.Collection)>($r2) 

(declare-const var613!1 var3099)
(declare-const var1831!1 var1418)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3099-init=([], java.util.HashSet), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var660_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var1086__=([java.lang.String[]], java.lang.Object[]), <init>/1161881499=([java.util.HashSet, java.util.Collection], void), cast-from-var1418-to-var2651=([java.util.List], java.util.Collection)}
; {var1532=org.apache.ibatis.builder.BaseBuilder, var1755=r4, var2368=r5, var2513=null_type, var693=r3, var1062=$r6, var3099=java.util.HashSet, var613=$r0, var2351=$r1, var1418=java.util.List, var660=java.util.Arrays, var1086=java.lang.Object, var1831=$r2, var2651=java.util.Collection}
; {org.apache.ibatis.builder.BaseBuilder=var1532, r4=var1755, r5=var2368, null_type=var2513, r3=var693, $r6=var1062, java.util.HashSet=var3099, $r0=var613, $r1=var2351, java.util.List=var1418, java.util.Arrays=var660, java.lang.Object=var1086, $r2=var1831, java.util.Collection=var2651}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.ibatis.builder.BaseBuilder;	r5 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	if r5 != null goto $r6 = r5;	$r6 = r5;	$r0 = new java.util.HashSet;	$r1 = virtualinvoke $r6.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1);	specialinvoke $r0.<java.util.HashSet: void <init>(java.util.Collection)>($r2);	return $r0
;block_num 3