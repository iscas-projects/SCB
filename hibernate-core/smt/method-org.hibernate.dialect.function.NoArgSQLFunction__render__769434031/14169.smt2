(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var690 0)
(declare-sort var274 0)
(declare-sort var86 0)
(declare-sort var2146 0)
(declare-sort var2795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var274_size/-959786421 (var274) Int)
(declare-fun var2146-init () var2146)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-158466375 (var575) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2146 String) void)
(declare-fun cast-from-var2146-to-var2795 (var2146) var2795)
(declare-const null-var575 var575)
(declare-const null-var690 var690)
(declare-const null-var274 var274)
(declare-const null-var86 var86)
(declare-const var2117 var575) ; Statement: r1 := @this: org.hibernate.dialect.function.NoArgSQLFunction 
(assert (not (= var2117 null-var575)))
(declare-const var772 var690) ; Statement: r12 := @parameter0: org.hibernate.type.Type 
(assert (not (= var772 null-var690)))
(declare-const var2003 var274) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var2003 null-var274)))
(declare-const var3525 var86) ; Statement: r13 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3525 null-var86)))
(define-const var2280 Int (var274_size/-959786421 var2003)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 0 goto $z0 = r1.<org.hibernate.dialect.function.NoArgSQLFunction: boolean hasParenthesesIfNoArguments> 
(assert (not (<= var2280 0))) ; Negate: Cond: $i0 <= 0  
(define-const var2800 var2146 var2146-init) ; Statement: $r16 = new org.hibernate.QueryException 
(define-const var1930 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1930)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1930!1 String)
(assert (= var1930!1 ""))
(assert true)
(define-const var157 String (append/672562846 var1930!1 "function takes no arguments: ")) ; Statement: $r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function takes no arguments: ") 
(declare-const var1930!2 String)
(assert (= var1930!2 (str.++ var1930!1 "function takes no arguments: ")))
(define-const var172 String (name/-158466375 var2117)) ; Statement: $r8 = r1.<org.hibernate.dialect.function.NoArgSQLFunction: java.lang.String name> 
(assert true)
(define-const var3650 String (append/672562846 var157 var172)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var157!1 String)
(assert (= var157!1 (str.++ var157 var172)))
(assert true)
(define-const var593 String (toString/-2075883882 var3650)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2800 var593)) ; Statement: specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var2800!1 var2146)
(declare-const var593!1 String)
(define-const var1658 var2795 (cast-from-var2146-to-var2795 var2800!1)) ; Statement: $r18 = (java.lang.Throwable) $r16 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var274_size/-959786421=([java.util.List], int), var2146-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-158466375=([org.hibernate.dialect.function.NoArgSQLFunction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2146-to-var2795=([org.hibernate.QueryException], java.lang.Throwable)}
; {var575=org.hibernate.dialect.function.NoArgSQLFunction, var2117=r1, var690=org.hibernate.type.Type, var772=r12, var274=java.util.List, var2003=r0, var86=org.hibernate.engine.spi.SessionFactoryImplementor, var3525=r13, var2280=$i0, var2146=org.hibernate.QueryException, var2800=$r16, var1930=$r15, var157=$r9, var172=$r8, var3650=$r10, var593=$r11, var2795=java.lang.Throwable, var1658=$r18}
; {org.hibernate.dialect.function.NoArgSQLFunction=var575, r1=var2117, org.hibernate.type.Type=var690, r12=var772, java.util.List=var274, r0=var2003, org.hibernate.engine.spi.SessionFactoryImplementor=var86, r13=var3525, $i0=var2280, org.hibernate.QueryException=var2146, $r16=var2800, $r15=var1930, $r9=var157, $r8=var172, $r10=var3650, $r11=var593, java.lang.Throwable=var2795, $r18=var1658}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.NoArgSQLFunction;	r12 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r13 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 <= 0 goto $z0 = r1.<org.hibernate.dialect.function.NoArgSQLFunction: boolean hasParenthesesIfNoArguments>;	$r16 = new org.hibernate.QueryException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function takes no arguments: ");	$r8 = r1.<org.hibernate.dialect.function.NoArgSQLFunction: java.lang.String name>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r18 = (java.lang.Throwable) $r16;	throw $r18
;block_num 2