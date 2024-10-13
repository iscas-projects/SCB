(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1950 0)
(declare-sort var950 0)
(declare-sort var3184 0)
(declare-sort var133 0)
(declare-sort var1884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3184_size/-959786421 (var3184) Int)
(declare-fun var3184_get/-1216255739 (var3184 Int) var1884)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1884) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1950 var1950)
(declare-const null-var950 var950)
(declare-const null-var3184 var3184)
(declare-const null-var133 var133)
(declare-const null-var1884 var1884)
(declare-const var881 var1950) ; Statement: r12 := @this: org.hibernate.dialect.function.PositionSubstringFunction 
(assert (not (= var881 null-var1950)))
(declare-const var3665 var950) ; Statement: r13 := @parameter0: org.hibernate.type.Type 
(assert (not (= var3665 null-var950)))
(declare-const var3809 var3184) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var3809 null-var3184)))
(declare-const var3995 var133) ; Statement: r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3995 null-var133)))
(define-const var3954 Int (var3184_size/-959786421 var3809)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 2 goto $z3 = 0 
(assert (<= var3954 2)) ; Cond: $i0 <= 2 
(define-const var3821 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var2224 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var916 Bool var2224) ; Statement: z0 = $z2 
(define-const var2121 var1884 (var3184_get/-1216255739 var3809 0)) ; Statement: $r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var3181 var1884 (var3184_get/-1216255739 var3809 1)) ; Statement: $r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
 ; Statement: if $z3 == 0 goto $r15 = null 
(assert (= (ite var3821 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3765 var1884 null-var1884) ; Statement: $r15 = null 
(assert true) ; Non Conditional
(define-const var1430 var1884 var3765) ; Statement: r1 = $r15 
(define-const var2087 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2087)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2087!1 String)
(assert (= var2087!1 ""))
 ; Statement: if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(") 
(assert (= (ite var916 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var715 String (append/672562846 var2087!1 "position(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(") 
(declare-const var2087!2 String)
(assert (= var2087!2 (str.++ var2087!1 "position(")))
(assert true)
(define-const var2142 String (append/-1031950772 var715 var2121)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var715!1 String)
(assert (str.prefixof var715 var715!1))
(assert true)
;(assert (append/672562846 var2142 " in ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var2142!1 String)
(assert (= var2142!1 (str.++ var2142 " in ")))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(assert (= (ite var916 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1031950772 var2087!2 var3181)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var2087!3 String)
(assert (str.prefixof var2087!2 var2087!3))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var916 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var2087!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2087!4 String)
(assert (str.prefixof var2087!3 var2087!4))
 ; Statement: if z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var916 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var58 String (toString/-2075883882 var2087!4)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3184_size/-959786421=([java.util.List], int), var3184_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1950=org.hibernate.dialect.function.PositionSubstringFunction, var881=r12, var950=org.hibernate.type.Type, var3665=r13, var3184=java.util.List, var3809=r0, var133=org.hibernate.engine.spi.SessionFactoryImplementor, var3995=r14, var3954=$i0, var3821=$z3, var2224=$z2, var916=z0, var1884=java.lang.Object, var2121=$r10, var3181=$r11, var3765=$r15, var1430=r1, var2087=$r2, var715=$r3, var2142=$r4, var58=$r5}
; {org.hibernate.dialect.function.PositionSubstringFunction=var1950, r12=var881, org.hibernate.type.Type=var950, r13=var3665, java.util.List=var3184, r0=var3809, org.hibernate.engine.spi.SessionFactoryImplementor=var133, r14=var3995, $i0=var3954, $z3=var3821, $z2=var2224, z0=var916, java.lang.Object=var1884, $r10=var2121, $r11=var3181, $r15=var3765, r1=var1430, $r2=var2087, $r3=var715, $r4=var2142, $r5=var58}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.dialect.function.PositionSubstringFunction;	r13 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 2 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z2;	$r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	if $z3 == 0 goto $r15 = null;	$r15 = null;	r1 = $r15;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	if z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 9