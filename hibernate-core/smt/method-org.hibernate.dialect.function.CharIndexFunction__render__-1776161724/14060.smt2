(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3749 0)
(declare-sort var1697 0)
(declare-sort var70 0)
(declare-sort var538 0)
(declare-sort var662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var70_size/-959786421 (var70) Int)
(declare-fun var70_get/-1216255739 (var70 Int) var662)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var662) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3749 var3749)
(declare-const null-var1697 var1697)
(declare-const null-var70 var70)
(declare-const null-var538 var538)
(declare-const null-var662 var662)
(declare-const var3590 var3749) ; Statement: r12 := @this: org.hibernate.dialect.function.CharIndexFunction 
(assert (not (= var3590 null-var3749)))
(declare-const var2170 var1697) ; Statement: r13 := @parameter0: org.hibernate.type.Type 
(assert (not (= var2170 null-var1697)))
(declare-const var1584 var70) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1584 null-var70)))
(declare-const var36 var538) ; Statement: r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var36 null-var538)))
(define-const var418 Int (var70_size/-959786421 var1584)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 2 goto $z3 = 0 
(assert (not (<= var418 2))) ; Negate: Cond: $i0 <= 2  
(define-const var972 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var671 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z2] 
(assert true) ; Non Conditional
(define-const var352 Bool var671) ; Statement: z0 = $z2 
(define-const var1637 var662 (var70_get/-1216255739 var1584 0)) ; Statement: $r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var644 var662 (var70_get/-1216255739 var1584 1)) ; Statement: $r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
 ; Statement: if $z3 == 0 goto $r15 = null 
(assert (= (ite var972 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3592 var662 null-var662) ; Statement: $r15 = null 
(assert true) ; Non Conditional
(define-const var866 var662 var3592) ; Statement: r1 = $r15 
(define-const var1625 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1625)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1625!1 String)
(assert (= var1625!1 ""))
(assert true)
(define-const var2571 String (append/672562846 var1625!1 "charindex(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(") 
(declare-const var1625!2 String)
(assert (= var1625!2 (str.++ var1625!1 "charindex(")))
(assert true)
(define-const var2234 String (append/-1031950772 var2571 var1637)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2571!1 String)
(assert (str.prefixof var2571 var2571!1))
(assert true)
;(assert (append/672562846 var2234 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2234!1 String)
(assert (= var2234!1 (str.++ var2234 ", ")))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(assert (= (ite var352 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1031950772 var1625!2 var644)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var1625!3 String)
(assert (str.prefixof var1625!2 var1625!3))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var352 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var1625!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1625!4 String)
(assert (str.prefixof var1625!3 var1625!4))
(assert true)
(define-const var353 String (toString/-2075883882 var1625!4)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var70_size/-959786421=([java.util.List], int), var70_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3749=org.hibernate.dialect.function.CharIndexFunction, var3590=r12, var1697=org.hibernate.type.Type, var2170=r13, var70=java.util.List, var1584=r0, var538=org.hibernate.engine.spi.SessionFactoryImplementor, var36=r14, var418=$i0, var972=$z3, var671=$z2, var352=z0, var662=java.lang.Object, var1637=$r10, var644=$r11, var3592=$r15, var866=r1, var1625=$r2, var2571=$r3, var2234=$r4, var353=$r5}
; {org.hibernate.dialect.function.CharIndexFunction=var3749, r12=var3590, org.hibernate.type.Type=var1697, r13=var2170, java.util.List=var70, r0=var1584, org.hibernate.engine.spi.SessionFactoryImplementor=var538, r14=var36, $i0=var418, $z3=var972, $z2=var671, z0=var352, java.lang.Object=var662, $r10=var1637, $r11=var644, $r15=var3592, r1=var866, $r2=var1625, $r3=var2571, $r4=var2234, $r5=var353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.dialect.function.CharIndexFunction;	r13 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 2 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	$r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	if $z3 == 0 goto $r15 = null;	$r15 = null;	r1 = $r15;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7