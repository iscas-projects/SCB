(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var831 0)
(declare-sort var1843 0)
(declare-sort var2190 0)
(declare-sort var2479 0)
(declare-sort var2981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2190_size/-959786421 (var2190) Int)
(declare-fun var2190_get/-1216255739 (var2190 Int) var2981)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2981) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var831 var831)
(declare-const null-var1843 var1843)
(declare-const null-var2190 var2190)
(declare-const null-var2479 var2479)
(declare-const null-var2981 var2981)
(declare-const var1737 var831) ; Statement: r12 := @this: org.hibernate.dialect.function.PositionSubstringFunction 
(assert (not (= var1737 null-var831)))
(declare-const var1660 var1843) ; Statement: r13 := @parameter0: org.hibernate.type.Type 
(assert (not (= var1660 null-var1843)))
(declare-const var3890 var2190) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var3890 null-var2190)))
(declare-const var3925 var2479) ; Statement: r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3925 null-var2479)))
(define-const var3720 Int (var2190_size/-959786421 var3890)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 2 goto $z3 = 0 
(assert (not (<= var3720 2))) ; Negate: Cond: $i0 <= 2  
(define-const var835 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
(define-const var2474 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z2] 
(assert true) ; Non Conditional
(define-const var2625 Bool var2474) ; Statement: z0 = $z2 
(define-const var203 var2981 (var2190_get/-1216255739 var3890 0)) ; Statement: $r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2904 var2981 (var2190_get/-1216255739 var3890 1)) ; Statement: $r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
 ; Statement: if $z3 == 0 goto $r15 = null 
(assert (= (ite var835 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1689 var2981 null-var2981) ; Statement: $r15 = null 
(assert true) ; Non Conditional
(define-const var1633 var2981 var1689) ; Statement: r1 = $r15 
(define-const var2927 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2927)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2927!1 String)
(assert (= var2927!1 ""))
 ; Statement: if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(") 
(assert (= (ite var2625 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3258 String (append/672562846 var2927!1 "position(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(") 
(declare-const var2927!2 String)
(assert (= var2927!2 (str.++ var2927!1 "position(")))
(assert true)
(define-const var2386 String (append/-1031950772 var3258 var203)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3258!1 String)
(assert (str.prefixof var3258 var3258!1))
(assert true)
;(assert (append/672562846 var2386 " in ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var2386!1 String)
(assert (= var2386!1 (str.++ var2386 " in ")))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(assert (= (ite var2625 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1031950772 var2927!2 var2904)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var2927!3 String)
(assert (str.prefixof var2927!2 var2927!3))
 ; Statement: if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2625 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/-1166366385 var2927!3 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2927!4 String)
(assert (str.prefixof var2927!3 var2927!4))
 ; Statement: if z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2625 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1466 String (toString/-2075883882 var2927!4)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2190_size/-959786421=([java.util.List], int), var2190_get/-1216255739=([java.util.List, int], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var831=org.hibernate.dialect.function.PositionSubstringFunction, var1737=r12, var1843=org.hibernate.type.Type, var1660=r13, var2190=java.util.List, var3890=r0, var2479=org.hibernate.engine.spi.SessionFactoryImplementor, var3925=r14, var3720=$i0, var835=$z3, var2474=$z2, var2625=z0, var2981=java.lang.Object, var203=$r10, var2904=$r11, var1689=$r15, var1633=r1, var2927=$r2, var3258=$r3, var2386=$r4, var1466=$r5}
; {org.hibernate.dialect.function.PositionSubstringFunction=var831, r12=var1737, org.hibernate.type.Type=var1843, r13=var1660, java.util.List=var2190, r0=var3890, org.hibernate.engine.spi.SessionFactoryImplementor=var2479, r14=var3925, $i0=var3720, $z3=var835, $z2=var2474, z0=var2625, java.lang.Object=var2981, $r10=var203, $r11=var2904, $r15=var1689, r1=var1633, $r2=var2927, $r3=var3258, $r4=var2386, $r5=var1466}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.dialect.function.PositionSubstringFunction;	r13 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r14 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 2 goto $z3 = 0;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	$r10 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r11 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	if $z3 == 0 goto $r15 = null;	$r15 = null;	r1 = $r15;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("position(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	if z0 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	if z0 == 0 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 9