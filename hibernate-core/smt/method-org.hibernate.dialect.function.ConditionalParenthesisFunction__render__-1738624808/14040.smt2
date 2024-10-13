(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1887 0)
(declare-sort var1338 0)
(declare-sort var583 0)
(declare-sort var3669 0)
(declare-sort var148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var583_isEmpty/-153543822 (var583) Bool)
(declare-fun String-init () String)
(declare-fun getName/2101757332 (var148) String)
(declare-fun cast-from-var1887-to-var148 (var1887) var148)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1887 var1887)
(declare-const null-var1338 var1338)
(declare-const null-var583 var583)
(declare-const null-var3669 var3669)
(declare-const var2798 var1887) ; Statement: r2 := @this: org.hibernate.dialect.function.ConditionalParenthesisFunction 
(assert (not (= var2798 null-var1887)))
(declare-const var225 var1338) ; Statement: r6 := @parameter0: org.hibernate.type.Type 
(assert (not (= var225 null-var1338)))
(declare-const var2067 var583) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var2067 null-var583)))
(declare-const var3190 var3669) ; Statement: r7 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3190 null-var3669)))
(define-const var3086 Bool (var583_isEmpty/-153543822 var2067)) ; Statement: $z0 = interfaceinvoke r0.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3086 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1758 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var838 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var3622 String (getName/2101757332 (cast-from-var1887-to-var148 var2798))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.dialect.function.ConditionalParenthesisFunction: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var838 var3622)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var838!1 String)
(assert (= var838!1 var3622))
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1758 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3088 String (toString/-2075883882 var838!1)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var583_isEmpty/-153543822=([java.util.List], boolean), String-init=([], java.lang.StringBuilder), getName/2101757332=([org.hibernate.dialect.function.StandardSQLFunction], java.lang.String), cast-from-var1887-to-var148=([org.hibernate.dialect.function.ConditionalParenthesisFunction], org.hibernate.dialect.function.StandardSQLFunction), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1887=org.hibernate.dialect.function.ConditionalParenthesisFunction, var2798=r2, var1338=org.hibernate.type.Type, var225=r6, var583=java.util.List, var2067=r0, var3669=org.hibernate.engine.spi.SessionFactoryImplementor, var3190=r7, var3086=$z0, var1758=$z1, var838=$r1, var148=org.hibernate.dialect.function.StandardSQLFunction, var3622=$r3, var3088=$r4}
; {org.hibernate.dialect.function.ConditionalParenthesisFunction=var1887, r2=var2798, org.hibernate.type.Type=var1338, r6=var225, java.util.List=var583, r0=var2067, org.hibernate.engine.spi.SessionFactoryImplementor=var3669, r7=var3190, $z0=var3086, $z1=var1758, $r1=var838, org.hibernate.dialect.function.StandardSQLFunction=var148, $r3=var3622, $r4=var3088}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.function.ConditionalParenthesisFunction;	r6 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r7 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$z0 = interfaceinvoke r0.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	$r1 = new java.lang.StringBuilder;	$r3 = virtualinvoke r2.<org.hibernate.dialect.function.ConditionalParenthesisFunction: java.lang.String getName()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	if $z1 == 0 goto $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4