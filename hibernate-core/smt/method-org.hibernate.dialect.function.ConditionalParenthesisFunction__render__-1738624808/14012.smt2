(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3487 0)
(declare-sort var2523 0)
(declare-sort var2835 0)
(declare-sort var2578 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2835_isEmpty/-153543822 (var2835) Bool)
(declare-fun String-init () String)
(declare-fun getName/2101757332 (var3533) String)
(declare-fun cast-from-var3487-to-var3533 (var3487) var3533)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3487 var3487)
(declare-const null-var2523 var2523)
(declare-const null-var2835 var2835)
(declare-const null-var2578 var2578)
(declare-const var3257 var3487) ; Statement: r2 := @this: org.hibernate.dialect.function.ConditionalParenthesisFunction 
(assert (not (= var3257 null-var3487)))
(declare-const var2825 var2523) ; Statement: r6 := @parameter0: org.hibernate.type.Type 
(assert (not (= var2825 null-var2523)))
(declare-const var179 var2835) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var179 null-var2835)))
(declare-const var3166 var2578) ; Statement: r7 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3166 null-var2578)))
(define-const var1694 Bool (var2835_isEmpty/-153543822 var179)) ; Statement: $z0 = interfaceinvoke r0.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1694 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3102 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3283 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var1969 String (getName/2101757332 (cast-from-var3487-to-var3533 var3257))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.dialect.function.ConditionalParenthesisFunction: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var3283 var1969)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var3283!1 String)
(assert (= var3283!1 var1969))
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3102 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1178 String (toString/-2075883882 var3283!1)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2835_isEmpty/-153543822=([java.util.List], boolean), String-init=([], java.lang.StringBuilder), getName/2101757332=([org.hibernate.dialect.function.StandardSQLFunction], java.lang.String), cast-from-var3487-to-var3533=([org.hibernate.dialect.function.ConditionalParenthesisFunction], org.hibernate.dialect.function.StandardSQLFunction), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3487=org.hibernate.dialect.function.ConditionalParenthesisFunction, var3257=r2, var2523=org.hibernate.type.Type, var2825=r6, var2835=java.util.List, var179=r0, var2578=org.hibernate.engine.spi.SessionFactoryImplementor, var3166=r7, var1694=$z0, var3102=$z1, var3283=$r1, var3533=org.hibernate.dialect.function.StandardSQLFunction, var1969=$r3, var1178=$r4}
; {org.hibernate.dialect.function.ConditionalParenthesisFunction=var3487, r2=var3257, org.hibernate.type.Type=var2523, r6=var2825, java.util.List=var2835, r0=var179, org.hibernate.engine.spi.SessionFactoryImplementor=var2578, r7=var3166, $z0=var1694, $z1=var3102, $r1=var3283, org.hibernate.dialect.function.StandardSQLFunction=var3533, $r3=var1969, $r4=var1178}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.function.ConditionalParenthesisFunction;	r6 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r7 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$z0 = interfaceinvoke r0.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	$r3 = virtualinvoke r2.<org.hibernate.dialect.function.ConditionalParenthesisFunction: java.lang.String getName()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	if $z1 == 0 goto $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4