(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2316 0)
(declare-sort var1117 0)
(declare-sort var284 0)
(declare-sort var2693 0)
(declare-sort var1448 0)
(declare-sort var3702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2693-init () var2693)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1448) String)
(declare-fun cast-from-var284-to-var1448 (var284) var1448)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/527701604 (var2693 String) void)
(declare-fun cast-from-var2693-to-var3702 (var2693) var3702)
(declare-const null-var2316 var2316)
(declare-const null-String String)
(declare-const null-var284 var284)
(declare-const var425 var2316) ; Statement: r9 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl$JpaEntityNotFoundDelegate 
(assert (not (= var425 null-var2316)))
(declare-const var1783 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1783 null-String)))
(declare-const var2590 var284) ; Statement: r5 := @parameter1: java.io.Serializable 
(assert (not (= var2590 null-var284)))
(define-const var2340 var2693 var2693-init) ; Statement: $r11 = new javax.persistence.EntityNotFoundException 
(define-const var1651 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1651)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1651!1 String)
(assert (= var1651!1 ""))
(assert true)
(define-const var2871 String (append/672562846 var1651!1 "Unable to find ")) ; Statement: $r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find ") 
(declare-const var1651!2 String)
(assert (= var1651!2 (str.++ var1651!1 "Unable to find ")))
(assert true)
(define-const var1715 String (append/672562846 var2871 var1783)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2871!1 String)
(assert (= var2871!1 (str.++ var2871 var1783)))
(assert true)
(define-const var2753 String (append/672562846 var1715 " with id ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with id ") 
(declare-const var1715!1 String)
(assert (= var1715!1 (str.++ var1715 " with id ")))
(assert true)
(define-const var2633 String (append/-1031950772 var2753 (cast-from-var284-to-var1448 var2590))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2753!1 String)
(assert (str.prefixof var2753 var2753!1))
(assert true)
(define-const var2145 String (toString/-2075883882 var2633)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/527701604 var2340 var2145)) ; Statement: specialinvoke $r11.<javax.persistence.EntityNotFoundException: void <init>(java.lang.String)>($r8) 

(declare-const var2340!1 var2693)
(declare-const var2145!1 String)
(define-const var1145 var3702 (cast-from-var2693-to-var3702 var2340!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2693-init=([], javax.persistence.EntityNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var284-to-var1448=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/527701604=([javax.persistence.EntityNotFoundException, java.lang.String], void), cast-from-var2693-to-var3702=([javax.persistence.EntityNotFoundException], java.lang.Throwable)}
; {var2316=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl$JpaEntityNotFoundDelegate, var425=r9, var1783=r2, var1117=null_type, var284=java.io.Serializable, var2590=r5, var2693=javax.persistence.EntityNotFoundException, var2340=$r11, var1651=$r10, var2871=$r3, var1715=$r4, var2753=$r6, var1448=java.lang.Object, var2633=$r7, var2145=$r8, var3702=java.lang.Throwable, var1145=$r12}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl$JpaEntityNotFoundDelegate=var2316, r9=var425, r2=var1783, null_type=var1117, java.io.Serializable=var284, r5=var2590, javax.persistence.EntityNotFoundException=var2693, $r11=var2340, $r10=var1651, $r3=var2871, $r4=var1715, $r6=var2753, java.lang.Object=var1448, $r7=var2633, $r8=var2145, java.lang.Throwable=var3702, $r12=var1145}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl$JpaEntityNotFoundDelegate;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.io.Serializable;	$r11 = new javax.persistence.EntityNotFoundException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with id ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<javax.persistence.EntityNotFoundException: void <init>(java.lang.String)>($r8);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 1