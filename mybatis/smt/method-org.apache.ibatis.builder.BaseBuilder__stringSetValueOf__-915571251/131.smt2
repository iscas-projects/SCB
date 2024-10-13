(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var573 0)
(declare-sort var257 0)
(declare-sort var2716 0)
(declare-sort var3855 0)
(declare-sort var1581 0)
(declare-sort var3808 0)
(declare-sort var3653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2716-init () var2716)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var1581_asList/1779083644 ((Array Int var3808)) var3855)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3808__ ((Array Int String)) (Array Int var3808))
(declare-fun <init>/1161881499 (var2716 var3653) void)
(declare-fun cast-from-var3855-to-var3653 (var3855) var3653)
(declare-const null-var573 var573)
(declare-const null-String String)
(declare-const var3694 var573) ; Statement: r4 := @this: org.apache.ibatis.builder.BaseBuilder 
(assert (not (= var3694 null-var573)))
(declare-const var1796 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1796 null-String)))
(declare-const var2532 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2532 null-String)))
 ; Statement: if r5 != null goto $r6 = r5 
(assert (not (not (= var1796 null-String)))) ; Negate: Cond: r5 != null  
(define-const var2074 String var2532) ; Statement: $r6 = r3 
 ; Statement: goto [?= $r0 = new java.util.HashSet] 
(assert true) ; Non Conditional
(define-const var3658 var2716 var2716-init) ; Statement: $r0 = new java.util.HashSet 
(assert true)
(define-const var2051 (Array Int String) (split/-636890950 var2074 ",")) ; Statement: $r1 = virtualinvoke $r6.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2074 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var2437 var3855 (var1581_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var3808__ var2051))) ; Statement: $r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1) 
(assert true)
;(assert (<init>/1161881499 var3658 (cast-from-var3855-to-var3653 var2437))) ; Statement: specialinvoke $r0.<java.util.HashSet: void <init>(java.util.Collection)>($r2) 

(declare-const var3658!1 var2716)
(declare-const var2437!1 var3855)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2716-init=([], java.util.HashSet), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var1581_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var3808__=([java.lang.String[]], java.lang.Object[]), <init>/1161881499=([java.util.HashSet, java.util.Collection], void), cast-from-var3855-to-var3653=([java.util.List], java.util.Collection)}
; {var573=org.apache.ibatis.builder.BaseBuilder, var3694=r4, var1796=r5, var257=null_type, var2532=r3, var2074=$r6, var2716=java.util.HashSet, var3658=$r0, var2051=$r1, var3855=java.util.List, var1581=java.util.Arrays, var3808=java.lang.Object, var2437=$r2, var3653=java.util.Collection}
; {org.apache.ibatis.builder.BaseBuilder=var573, r4=var3694, r5=var1796, null_type=var257, r3=var2532, $r6=var2074, java.util.HashSet=var2716, $r0=var3658, $r1=var2051, java.util.List=var3855, java.util.Arrays=var1581, java.lang.Object=var3808, $r2=var2437, java.util.Collection=var3653}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.ibatis.builder.BaseBuilder;	r5 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	if r5 != null goto $r6 = r5;	$r6 = r3;	goto [?= $r0 = new java.util.HashSet];	$r0 = new java.util.HashSet;	$r1 = virtualinvoke $r6.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1);	specialinvoke $r0.<java.util.HashSet: void <init>(java.util.Collection)>($r2);	return $r0
;block_num 3