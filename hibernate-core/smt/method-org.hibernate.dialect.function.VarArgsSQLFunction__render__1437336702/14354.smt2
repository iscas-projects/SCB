(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1859 0)
(declare-sort var2899 0)
(declare-sort var75 0)
(declare-sort var2109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun begin/-512023158 (var1859) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var75_size/-959786421 (var75) Int)
(declare-fun end/-512023158 (var1859) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1859 var1859)
(declare-const null-var2899 var2899)
(declare-const null-var75 var75)
(declare-const null-var2109 var2109)
(declare-const var2952 var1859) ; Statement: r1 := @this: org.hibernate.dialect.function.VarArgsSQLFunction 
(assert (not (= var2952 null-var1859)))
(declare-const var3678 var2899) ; Statement: r12 := @parameter0: org.hibernate.type.Type 
(assert (not (= var3678 null-var2899)))
(declare-const var3009 var75) ; Statement: r4 := @parameter1: java.util.List 
(assert (not (= var3009 null-var75)))
(declare-const var708 var2109) ; Statement: r13 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var708 null-var2109)))
(define-const var1505 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1505)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1505!1 String)
(assert (= var1505!1 ""))
(define-const var2166 String (begin/-512023158 var2952)) ; Statement: $r2 = r1.<org.hibernate.dialect.function.VarArgsSQLFunction: java.lang.String begin> 
(assert true)
(define-const var1683 String (append/672562846 var1505!1 var2166)) ; Statement: r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1505!2 String)
(assert (= var1505!2 (str.++ var1505!1 var2166)))
(define-const var2539 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1132 Int (var75_size/-959786421 var3009)) ; Statement: $i0 = interfaceinvoke r4.<java.util.List: int size()>() 
 ; Statement: if i3 >= $i0 goto $r5 = r1.<org.hibernate.dialect.function.VarArgsSQLFunction: java.lang.String end> 
(assert (>= var2539 var1132)) ; Cond: i3 >= $i0 
(define-const var3398 String (end/-512023158 var2952)) ; Statement: $r5 = r1.<org.hibernate.dialect.function.VarArgsSQLFunction: java.lang.String end> 
(assert true)
(define-const var448 String (append/672562846 var1683 var3398)) ; Statement: $r6 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1683!1 String)
(assert (= var1683!1 (str.++ var1683 var3398)))
(assert true)
(define-const var3005 String (toString/-2075883882 var448)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), begin/-512023158=([org.hibernate.dialect.function.VarArgsSQLFunction], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var75_size/-959786421=([java.util.List], int), end/-512023158=([org.hibernate.dialect.function.VarArgsSQLFunction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1859=org.hibernate.dialect.function.VarArgsSQLFunction, var2952=r1, var2899=org.hibernate.type.Type, var3678=r12, var75=java.util.List, var3009=r4, var2109=org.hibernate.engine.spi.SessionFactoryImplementor, var708=r13, var1505=$r0, var2166=$r2, var1683=r3, var2539=i3, var1132=$i0, var3398=$r5, var448=$r6, var3005=$r7}
; {org.hibernate.dialect.function.VarArgsSQLFunction=var1859, r1=var2952, org.hibernate.type.Type=var2899, r12=var3678, java.util.List=var75, r4=var3009, org.hibernate.engine.spi.SessionFactoryImplementor=var2109, r13=var708, $r0=var1505, $r2=var2166, r3=var1683, i3=var2539, $i0=var1132, $r5=var3398, $r6=var448, $r7=var3005}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.VarArgsSQLFunction;	r12 := @parameter0: org.hibernate.type.Type;	r4 := @parameter1: java.util.List;	r13 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.dialect.function.VarArgsSQLFunction: java.lang.String begin>;	r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	i3 = 0;	$i0 = interfaceinvoke r4.<java.util.List: int size()>();	if i3 >= $i0 goto $r5 = r1.<org.hibernate.dialect.function.VarArgsSQLFunction: java.lang.String end>;	$r5 = r1.<org.hibernate.dialect.function.VarArgsSQLFunction: java.lang.String end>;	$r6 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3