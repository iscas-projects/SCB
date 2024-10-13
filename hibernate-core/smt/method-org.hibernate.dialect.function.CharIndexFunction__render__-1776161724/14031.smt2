(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3258 0)
(declare-sort var1500 0)
(declare-sort var3154 0)
(declare-sort var1266 0)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3154_size/-959786421 (var3154) Int)
(declare-fun var3154_get/-1216255739 (var3154 Int) var1805)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1805) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3258 var3258)
(declare-const null-var1500 var1500)
(declare-const null-var3154 var3154)
(declare-const null-var1266 var1266)
(declare-const var1133 var3258) ; Statement: r12 := @this: org.hibernate.dialect.function.CharIndexFunction 
(assert (not (= var1133 null-var3258)))
(declare-const var780 var1500) ; Statement: r13 := @parameter0: org.hibernate.type.Type 
(assert (not (= var780 null-var1500)))
(declare-const var1326 var3154) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1326 null-var3154)))
(declare-const var33 var1266) ; Statement: r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var33 null-var1266)))
(define-const var3144 Int (var3154_size/-959786421 var1326)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 2 goto $z3 = 0 
(assert (not (<= var3144 2))) ; Negate: Cond: $i0 <= 2  
(define-const var3106 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var2057 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z2] 
(assert true) ; Non Conditional
(define-const var133 Bool var2057) ; Statement: z0 = $z2 
(define-const var571 var1805 (var3154_get/-1216255739 var1326 0)) ; Statement: $r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var3737 var1805 (var3154_get/-1216255739 var1326 1)) ; Statement: $r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
 ; Statement: if $z3 == 0 goto $r15 = null 
(assert (not (= (ite var3106 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var436 var1805 (var3154_get/-1216255739 var1326 2)) ; Statement: $r15 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2) 
 ; Statement: goto [?= r1 = $r15] 
(assert true) ; Non Conditional
(define-const var359 var1805 var436) ; Statement: r1 = $r15 
(define-const var2403 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2403)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2403!1 String)
(assert (= var2403!1 ""))
(assert true)
(define-const var1423 String (append/672562846 var2403!1 "charindex(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(") 
(declare-const var2403!2 String)
(assert (= var2403!2 (str.++ var2403!1 "charindex(")))
(assert true)
(define-const var3746 String (append/-1031950772 var1423 var571)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var1423!1 String)
(assert (str.prefixof var1423 var1423!1))
(assert true)
;(assert (append/672562846 var3746 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3746!1 String)
(assert (= var3746!1 (str.++ var3746 ", ")))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(assert (= (ite var133 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1031950772 var2403!2 var3737)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var2403!3 String)
(assert (str.prefixof var2403!2 var2403!3))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var133 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var2403!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2403!4 String)
(assert (str.prefixof var2403!3 var2403!4))
(assert true)
(define-const var2420 String (toString/-2075883882 var2403!4)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3154_size/-959786421=([java.util.List], int), var3154_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3258=org.hibernate.dialect.function.CharIndexFunction, var1133=r12, var1500=org.hibernate.type.Type, var780=r13, var3154=java.util.List, var1326=r0, var1266=org.hibernate.engine.spi.SessionFactoryImplementor, var33=r14, var3144=$i0, var3106=$z3, var2057=$z2, var133=z0, var1805=java.lang.Object, var571=$r10, var3737=$r11, var436=$r15, var359=r1, var2403=$r2, var1423=$r3, var3746=$r4, var2420=$r5}
; {org.hibernate.dialect.function.CharIndexFunction=var3258, r12=var1133, org.hibernate.type.Type=var1500, r13=var780, java.util.List=var3154, r0=var1326, org.hibernate.engine.spi.SessionFactoryImplementor=var1266, r14=var33, $i0=var3144, $z3=var3106, $z2=var2057, z0=var133, java.lang.Object=var1805, $r10=var571, $r11=var3737, $r15=var436, r1=var359, $r2=var2403, $r3=var1423, $r4=var3746, $r5=var2420}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.dialect.function.CharIndexFunction;	r13 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 2 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	$r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	if $z3 == 0 goto $r15 = null;	$r15 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2);	goto [?= r1 = $r15];	r1 = $r15;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7