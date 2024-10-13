(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var324 0)
(declare-sort var2176 0)
(declare-sort var3611 0)
(declare-sort var167 0)
(declare-sort var1141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3611_size/-959786421 (var3611) Int)
(declare-fun var3611_get/-1216255739 (var3611 Int) var1141)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1141) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var324 var324)
(declare-const null-var2176 var2176)
(declare-const null-var3611 var3611)
(declare-const null-var167 var167)
(declare-const var3707 var324) ; Statement: r12 := @this: org.hibernate.dialect.function.CharIndexFunction 
(assert (not (= var3707 null-var324)))
(declare-const var572 var2176) ; Statement: r13 := @parameter0: org.hibernate.type.Type 
(assert (not (= var572 null-var2176)))
(declare-const var3177 var3611) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var3177 null-var3611)))
(declare-const var1335 var167) ; Statement: r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var1335 null-var167)))
(define-const var1469 Int (var3611_size/-959786421 var3177)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 2 goto $z3 = 0 
(assert (<= var1469 2)) ; Cond: $i0 <= 2 
(define-const var3070 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(define-const var3050 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1391 Bool var3050) ; Statement: z0 = $z2 
(define-const var1218 var1141 (var3611_get/-1216255739 var3177 0)) ; Statement: $r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2343 var1141 (var3611_get/-1216255739 var3177 1)) ; Statement: $r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
 ; Statement: if $z3 == 0 goto $r15 = null 
(assert (not (= (ite var3070 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var1721 var1141 (var3611_get/-1216255739 var3177 2)) ; Statement: $r15 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2) 
 ; Statement: goto [?= r1 = $r15] 
(assert true) ; Non Conditional
(define-const var3899 var1141 var1721) ; Statement: r1 = $r15 
(define-const var929 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var929)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var929!1 String)
(assert (= var929!1 ""))
(assert true)
(define-const var589 String (append/672562846 var929!1 "charindex(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(") 
(declare-const var929!2 String)
(assert (= var929!2 (str.++ var929!1 "charindex(")))
(assert true)
(define-const var2601 String (append/-1031950772 var589 var1218)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var589!1 String)
(assert (str.prefixof var589 var589!1))
(assert true)
;(assert (append/672562846 var2601 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2601!1 String)
(assert (= var2601!1 (str.++ var2601 ", ")))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(assert (= (ite var1391 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1031950772 var929!2 var2343)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var929!3 String)
(assert (str.prefixof var929!2 var929!3))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var1391 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var929!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var929!4 String)
(assert (str.prefixof var929!3 var929!4))
(assert true)
(define-const var3108 String (toString/-2075883882 var929!4)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3611_size/-959786421=([java.util.List], int), var3611_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var324=org.hibernate.dialect.function.CharIndexFunction, var3707=r12, var2176=org.hibernate.type.Type, var572=r13, var3611=java.util.List, var3177=r0, var167=org.hibernate.engine.spi.SessionFactoryImplementor, var1335=r14, var1469=$i0, var3070=$z3, var3050=$z2, var1391=z0, var1141=java.lang.Object, var1218=$r10, var2343=$r11, var1721=$r15, var3899=r1, var929=$r2, var589=$r3, var2601=$r4, var3108=$r5}
; {org.hibernate.dialect.function.CharIndexFunction=var324, r12=var3707, org.hibernate.type.Type=var2176, r13=var572, java.util.List=var3611, r0=var3177, org.hibernate.engine.spi.SessionFactoryImplementor=var167, r14=var1335, $i0=var1469, $z3=var3070, $z2=var3050, z0=var1391, java.lang.Object=var1141, $r10=var1218, $r11=var2343, $r15=var1721, r1=var3899, $r2=var929, $r3=var589, $r4=var2601, $r5=var3108}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.dialect.function.CharIndexFunction;	r13 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 2 goto $z3 = 0;	$z3 = 0;	$z2 = 0;	z0 = $z2;	$r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	if $z3 == 0 goto $r15 = null;	$r15 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2);	goto [?= r1 = $r15];	r1 = $r15;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charindex(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7