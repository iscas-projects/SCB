(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1388 0)
(declare-sort var1210 0)
(declare-sort var3326 0)
(declare-sort var1777 0)
(declare-sort var3232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3326_size/-959786421 (var3326) Int)
(declare-fun var3326_get/-1216255739 (var3326 Int) var3232)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3232) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1388 var1388)
(declare-const null-var1210 var1210)
(declare-const null-var3326 var3326)
(declare-const null-var1777 var1777)
(declare-const null-var3232 var3232)
(declare-const var1574 var1388) ; Statement: r12 := @this: org.hibernate.dialect.function.CharIndexFunction 
(assert (not (= var1574 null-var1388)))
(declare-const var139 var1210) ; Statement: r13 := @parameter0: org.hibernate.type.Type 
(assert (not (= var139 null-var1210)))
(declare-const var526 var3326) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var526 null-var3326)))
(declare-const var3660 var1777) ; Statement: r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3660 null-var1777)))
(define-const var3340 Int (var3326_size/-959786421 var526)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 2 goto $z3 = 0 
(assert (<= var3340 2)) ; Cond: $i0 <= 2 
(define-const var649 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var2095 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1968 Bool var2095) ; Statement: z0 = $z2 
(define-const var553 var3232 (var3326_get/-1216255739 var526 0)) ; Statement: $r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var251 var3232 (var3326_get/-1216255739 var526 1)) ; Statement: $r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
 ; Statement: if $z3 == 0 goto $r15 = null 
(assert (= (ite var649 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1626 var3232 null-var3232) ; Statement: $r15 = null 
(assert true) ; Non Conditional
(define-const var1907 var3232 var1626) ; Statement: r1 = $r15 
(define-const var850 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var850)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var850!1 String)
(assert (= var850!1 ""))
(assert true)
(define-const var3377 String (append/672562846 var850!1 "charindex(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(") 
(declare-const var850!2 String)
(assert (= var850!2 (str.++ var850!1 "charindex(")))
(assert true)
(define-const var3086 String (append/-1031950772 var3377 var553)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3377!1 String)
(assert (str.prefixof var3377 var3377!1))
(assert true)
;(assert (append/672562846 var3086 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3086!1 String)
(assert (= var3086!1 (str.++ var3086 ", ")))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(assert (= (ite var1968 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1031950772 var850!2 var251)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var850!3 String)
(assert (str.prefixof var850!2 var850!3))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var1968 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var850!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var850!4 String)
(assert (str.prefixof var850!3 var850!4))
(assert true)
(define-const var1495 String (toString/-2075883882 var850!4)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3326_size/-959786421=([java.util.List], int), var3326_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1388=org.hibernate.dialect.function.CharIndexFunction, var1574=r12, var1210=org.hibernate.type.Type, var139=r13, var3326=java.util.List, var526=r0, var1777=org.hibernate.engine.spi.SessionFactoryImplementor, var3660=r14, var3340=$i0, var649=$z3, var2095=$z2, var1968=z0, var3232=java.lang.Object, var553=$r10, var251=$r11, var1626=$r15, var1907=r1, var850=$r2, var3377=$r3, var3086=$r4, var1495=$r5}
; {org.hibernate.dialect.function.CharIndexFunction=var1388, r12=var1574, org.hibernate.type.Type=var1210, r13=var139, java.util.List=var3326, r0=var526, org.hibernate.engine.spi.SessionFactoryImplementor=var1777, r14=var3660, $i0=var3340, $z3=var649, $z2=var2095, z0=var1968, java.lang.Object=var3232, $r10=var553, $r11=var251, $r15=var1626, r1=var1907, $r2=var850, $r3=var3377, $r4=var3086, $r5=var1495}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.dialect.function.CharIndexFunction;	r13 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 2 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z2;	$r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	if $z3 == 0 goto $r15 = null;	$r15 = null;	r1 = $r15;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7