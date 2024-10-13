(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2821 0)
(declare-sort var2523 0)
(declare-sort var3589 0)
(declare-sort var1443 0)
(declare-sort var450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1443-init () var1443)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/796187277 (var1443 String var450) void)
(declare-fun cast-from-var3589-to-var450 (var3589) var450)
(declare-fun cast-from-var1443-to-var450 (var1443) var450)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2821 var2821)
(declare-const null-var2523 var2523)
(declare-const null-var3589 var3589)
(declare-const var669 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var669 null-ClassObject)))
(declare-const var3672 var2821) ; Statement: r2 := @parameter1: java.util.Properties 
(assert (not (= var3672 null-var2821)))
(declare-const var2230 var2523) ; Statement: r11 := @parameter2: org.hibernate.type.TypeFactory$TypeScope 
(assert (not (= var2230 null-var2523)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2438 var3589) ; Statement: $r4 := @caughtexception 
(assert (not (= var2438 null-var3589)))
(define-const var3563 var1443 var1443-init) ; Statement: $r15 = new org.hibernate.MappingException 
(define-const var85 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var85)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var85!1 String)
(assert (= var85!1 ""))
(assert true)
(define-const var902 String (append/672562846 var85!1 "Unable to instantiate custom type: ")) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate custom type: ") 
(declare-const var85!2 String)
(assert (= var85!2 (str.++ var85!1 "Unable to instantiate custom type: ")))
(assert true)
(define-const var2303 String (getName/-1958580599 var669)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2166 String (append/672562846 var902 var2303)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var902!1 String)
(assert (= var902!1 (str.++ var902 var2303)))
(assert true)
(define-const var1714 String (toString/-2075883882 var2166)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/796187277 var3563 var1714 (cast-from-var3589-to-var450 var2438))) ; Statement: specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var3563!1 var1443)
(declare-const var1714!1 String)
(declare-const var2438!1 var3589)
(define-const var433 var450 (cast-from-var1443-to-var450 var3563!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1443-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var3589-to-var450=([java.lang.Exception], java.lang.Throwable), cast-from-var1443-to-var450=([org.hibernate.MappingException], java.lang.Throwable)}
; {var669=r0, var2821=java.util.Properties, var3672=r2, var2523=org.hibernate.type.TypeFactory$TypeScope, var2230=r11, var3589=java.lang.Exception, var2438=$r4, var1443=org.hibernate.MappingException, var3563=$r15, var85=$r14, var902=$r8, var2303=$r7, var2166=$r9, var1714=$r10, var450=java.lang.Throwable, var433=$r16}
; {r0=var669, java.util.Properties=var2821, r2=var3672, org.hibernate.type.TypeFactory$TypeScope=var2523, r11=var2230, java.lang.Exception=var3589, $r4=var2438, org.hibernate.MappingException=var1443, $r15=var3563, $r14=var85, $r8=var902, $r7=var2303, $r9=var2166, $r10=var1714, java.lang.Throwable=var450, $r16=var433}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r2 := @parameter1: java.util.Properties;	r11 := @parameter2: org.hibernate.type.TypeFactory$TypeScope;	$r4 := @caughtexception;	$r15 = new org.hibernate.MappingException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate custom type: ");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2