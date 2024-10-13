(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var914 0)
(declare-sort var2748 0)
(declare-sort var1654 0)
(declare-sort var3076 0)
(declare-sort var1731 0)
(declare-sort var3269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1654_next/1352680215 (var1654) Bool)
(declare-fun var1731-init () var1731)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun uniqueKeyPropertyName/-844621502 (var914) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/512344455 (var1731 String) void)
(declare-fun cast-from-var1731-to-var3269 (var1731) var3269)
(declare-const null-var914 var914)
(declare-const null-var2748 var2748)
(declare-const null-var1654 var1654)
(declare-const null-var3076 var3076)
(declare-const var3354 var914) ; Statement: r1 := @this: org.hibernate.id.SelectGenerator$SelectGeneratorDelegate 
(assert (not (= var3354 null-var914)))
(declare-const var1358 var2748) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1358 null-var2748)))
(declare-const var24 var1654) ; Statement: r0 := @parameter1: java.sql.ResultSet 
(assert (not (= var24 null-var1654)))
(declare-const var2333 var3076) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var2333 null-var3076)))
(define-const var591 Bool (var1654_next/1352680215 var24)) ; Statement: $z0 = interfaceinvoke r0.<java.sql.ResultSet: boolean next()>() 
 ; Statement: if $z0 != 0 goto $r3 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.type.Type idType> 
(assert (not (not (= (ite var591 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var362 var1731 var1731-init) ; Statement: $r16 = new org.hibernate.id.IdentifierGenerationException 
(define-const var3341 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3341)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3341!1 String)
(assert (= var3341!1 ""))
(assert true)
(define-const var1991 String (append/672562846 var3341!1 "the inserted row could not be located by the unique key: ")) ; Statement: $r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the inserted row could not be located by the unique key: ") 
(declare-const var3341!2 String)
(assert (= var3341!2 (str.++ var3341!1 "the inserted row could not be located by the unique key: ")))
(define-const var563 String (uniqueKeyPropertyName/-844621502 var3354)) ; Statement: $r11 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: java.lang.String uniqueKeyPropertyName> 
(assert true)
(define-const var3252 String (append/672562846 var1991 var563)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1991!1 String)
(assert (= var1991!1 (str.++ var1991 var563)))
(assert true)
(define-const var1821 String (toString/-2075883882 var3252)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/512344455 var362 var1821)) ; Statement: specialinvoke $r16.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r14) 

(declare-const var362!1 var1731)
(declare-const var1821!1 String)
(define-const var1301 var3269 (cast-from-var1731-to-var3269 var362!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1654_next/1352680215=([java.sql.ResultSet], boolean), var1731-init=([], org.hibernate.id.IdentifierGenerationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), uniqueKeyPropertyName/-844621502=([org.hibernate.id.SelectGenerator$SelectGeneratorDelegate], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/512344455=([org.hibernate.id.IdentifierGenerationException, java.lang.String], void), cast-from-var1731-to-var3269=([org.hibernate.id.IdentifierGenerationException], java.lang.Throwable)}
; {var914=org.hibernate.id.SelectGenerator$SelectGeneratorDelegate, var3354=r1, var2748=org.hibernate.engine.spi.SharedSessionContractImplementor, var1358=r4, var1654=java.sql.ResultSet, var24=r0, var3076=java.lang.Object, var2333=r5, var591=$z0, var1731=org.hibernate.id.IdentifierGenerationException, var362=$r16, var3341=$r15, var1991=$r12, var563=$r11, var3252=$r13, var1821=$r14, var3269=java.lang.Throwable, var1301=$r17}
; {org.hibernate.id.SelectGenerator$SelectGeneratorDelegate=var914, r1=var3354, org.hibernate.engine.spi.SharedSessionContractImplementor=var2748, r4=var1358, java.sql.ResultSet=var1654, r0=var24, java.lang.Object=var3076, r5=var2333, $z0=var591, org.hibernate.id.IdentifierGenerationException=var1731, $r16=var362, $r15=var3341, $r12=var1991, $r11=var563, $r13=var3252, $r14=var1821, java.lang.Throwable=var3269, $r17=var1301}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.id.SelectGenerator$SelectGeneratorDelegate;	r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r0 := @parameter1: java.sql.ResultSet;	r5 := @parameter2: java.lang.Object;	$z0 = interfaceinvoke r0.<java.sql.ResultSet: boolean next()>();	if $z0 != 0 goto $r3 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.type.Type idType>;	$r16 = new org.hibernate.id.IdentifierGenerationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the inserted row could not be located by the unique key: ");	$r11 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: java.lang.String uniqueKeyPropertyName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2