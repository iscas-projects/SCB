(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2887 0)
(declare-sort var2133 0)
(declare-sort var3264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2133_size/-959786421 (var2133) Int)
(declare-fun getAnticipatedNumberOfArguments/-648374613 (var2887) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun chunks/1852097125 (var2887) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2887 var2887)
(declare-const null-var2133 var2133)
(declare-const null-var3264 var3264)
(declare-const var2848 var2887) ; Statement: r1 := @this: org.hibernate.dialect.function.TemplateRenderer 
(assert (not (= var2848 null-var2887)))
(declare-const var3182 var2133) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3182 null-var2133)))
(declare-const var2870 var3264) ; Statement: r11 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2870 null-var3264)))
(define-const var2173 Int (var2133_size/-959786421 var3182)) ; Statement: i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(assert true)
(define-const var1974 Int (getAnticipatedNumberOfArguments/-648374613 var2848)) ; Statement: $i1 = virtualinvoke r1.<org.hibernate.dialect.function.TemplateRenderer: int getAnticipatedNumberOfArguments()>() 
 ; Statement: if $i1 <= 0 goto $r12 = new java.lang.StringBuilder 
(assert (<= var1974 0)) ; Cond: $i1 <= 0 
(define-const var1989 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1989)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1989!1 String)
(assert (= var1989!1 ""))
(define-const var651 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var2532 (Array Int String) (chunks/1852097125 var2848)) ; Statement: $r13 = r1.<org.hibernate.dialect.function.TemplateRenderer: java.lang.String[] chunks> 
(define-const var3653 Int (getLength-Arr-String-1 var2532)) ; Statement: $i8 = lengthof $r13 
 ; Statement: if i7 >= $i8 goto $r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var651 var3653)) ; Cond: i7 >= $i8 
(assert true)
(define-const var1811 String (toString/-2075883882 var1989!1)) ; Statement: $r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2133_size/-959786421=([java.util.List], int), getAnticipatedNumberOfArguments/-648374613=([org.hibernate.dialect.function.TemplateRenderer], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), chunks/1852097125=([org.hibernate.dialect.function.TemplateRenderer], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2887=org.hibernate.dialect.function.TemplateRenderer, var2848=r1, var2133=java.util.List, var3182=r0, var3264=org.hibernate.engine.spi.SessionFactoryImplementor, var2870=r11, var2173=i0, var1974=$i1, var1989=$r12, var651=i7, var2532=$r13, var3653=$i8, var1811=$r2}
; {org.hibernate.dialect.function.TemplateRenderer=var2887, r1=var2848, java.util.List=var2133, r0=var3182, org.hibernate.engine.spi.SessionFactoryImplementor=var3264, r11=var2870, i0=var2173, $i1=var1974, $r12=var1989, i7=var651, $r13=var2532, $i8=var3653, $r2=var1811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.TemplateRenderer;	r0 := @parameter0: java.util.List;	r11 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor;	i0 = interfaceinvoke r0.<java.util.List: int size()>();	$i1 = virtualinvoke r1.<org.hibernate.dialect.function.TemplateRenderer: int getAnticipatedNumberOfArguments()>();	if $i1 <= 0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	i7 = 0;	$r13 = r1.<org.hibernate.dialect.function.TemplateRenderer: java.lang.String[] chunks>;	$i8 = lengthof $r13;	if i7 >= $i8 goto $r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 4