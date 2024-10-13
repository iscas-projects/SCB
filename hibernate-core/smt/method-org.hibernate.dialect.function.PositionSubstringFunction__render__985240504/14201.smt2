(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1549 0)
(declare-sort var1172 0)
(declare-sort var871 0)
(declare-sort var3055 0)
(declare-sort var1432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var871_size/-959786421 (var871) Int)
(declare-fun var871_get/-1216255739 (var871 Int) var1432)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1432) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1549 var1549)
(declare-const null-var1172 var1172)
(declare-const null-var871 var871)
(declare-const null-var3055 var3055)
(declare-const var23 var1549) ; Statement: r12 := @this: org.hibernate.dialect.function.PositionSubstringFunction 
(assert (not (= var23 null-var1549)))
(declare-const var2197 var1172) ; Statement: r13 := @parameter0: org.hibernate.type.Type 
(assert (not (= var2197 null-var1172)))
(declare-const var2600 var871) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var2600 null-var871)))
(declare-const var3625 var3055) ; Statement: r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3625 null-var3055)))
(define-const var543 Int (var871_size/-959786421 var2600)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 2 goto $z3 = 0 
(assert (<= var543 2)) ; Cond: $i0 <= 2 
(define-const var3125 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var3424 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2167 Bool var3424) ; Statement: z0 = $z2 
(define-const var3490 var1432 (var871_get/-1216255739 var2600 0)) ; Statement: $r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var957 var1432 (var871_get/-1216255739 var2600 1)) ; Statement: $r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
 ; Statement: if $z3 == 0 goto $r15 = null 
(assert (not (= (ite var3125 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3376 var1432 (var871_get/-1216255739 var2600 2)) ; Statement: $r15 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2) 
 ; Statement: goto [?= r1 = $r15] 
(assert true) ; Non Conditional
(define-const var1298 var1432 var3376) ; Statement: r1 = $r15 
(define-const var1943 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1943)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1943!1 String)
(assert (= var1943!1 ""))
 ; Statement: if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(") 
(assert (= (ite var2167 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var18 String (append/672562846 var1943!1 "position(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(") 
(declare-const var1943!2 String)
(assert (= var1943!2 (str.++ var1943!1 "position(")))
(assert true)
(define-const var2873 String (append/-1031950772 var18 var3490)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var18!1 String)
(assert (str.prefixof var18 var18!1))
(assert true)
;(assert (append/672562846 var2873 " in ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var2873!1 String)
(assert (= var2873!1 (str.++ var2873 " in ")))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(assert (= (ite var2167 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1031950772 var1943!2 var957)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var1943!3 String)
(assert (str.prefixof var1943!2 var1943!3))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2167 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var1943!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1943!4 String)
(assert (str.prefixof var1943!3 var1943!4))
 ; Statement: if z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2167 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1156 String (toString/-2075883882 var1943!4)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var871_size/-959786421=([java.util.List], int), var871_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1549=org.hibernate.dialect.function.PositionSubstringFunction, var23=r12, var1172=org.hibernate.type.Type, var2197=r13, var871=java.util.List, var2600=r0, var3055=org.hibernate.engine.spi.SessionFactoryImplementor, var3625=r14, var543=$i0, var3125=$z3, var3424=$z2, var2167=z0, var1432=java.lang.Object, var3490=$r10, var957=$r11, var3376=$r15, var1298=r1, var1943=$r2, var18=$r3, var2873=$r4, var1156=$r5}
; {org.hibernate.dialect.function.PositionSubstringFunction=var1549, r12=var23, org.hibernate.type.Type=var1172, r13=var2197, java.util.List=var871, r0=var2600, org.hibernate.engine.spi.SessionFactoryImplementor=var3055, r14=var3625, $i0=var543, $z3=var3125, $z2=var3424, z0=var2167, java.lang.Object=var1432, $r10=var3490, $r11=var957, $r15=var3376, r1=var1298, $r2=var1943, $r3=var18, $r4=var2873, $r5=var1156}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.dialect.function.PositionSubstringFunction;	r13 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 2 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z2;	$r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	if $z3 == 0 goto $r15 = null;	$r15 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2);	goto [?= r1 = $r15];	r1 = $r15;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	if z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 9