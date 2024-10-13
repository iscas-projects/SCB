(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1042 0)
(declare-sort var2602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsSequences/-1652402059 (var1042) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1042 var1042)
(declare-const null-String String)
(declare-const var1991 var1042) ; Statement: r0 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var1991 null-var1042)))
(declare-const var305 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var305 null-String)))
(assert true)
(define-const var2882 Bool (supportsSequences/-1652402059 var1991)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.DerbyDialect: boolean supportsSequences()>() 
 ; Statement: if $z0 == 0 goto $r8 = new org.hibernate.MappingException 
(assert (not (= (ite var2882 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3876 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3876)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3876!1 String)
(assert (= var3876!1 ""))
(assert true)
(define-const var3448 String (append/672562846 var3876!1 "values next value for ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("values next value for ") 
(declare-const var3876!2 String)
(assert (= var3876!2 (str.++ var3876!1 "values next value for ")))
(assert true)
(define-const var2676 String (append/672562846 var3448 var305)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3448!1 String)
(assert (= var3448!1 (str.++ var3448 var305)))
(assert true)
(define-const var538 String (toString/-2075883882 var2676)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsSequences/-1652402059=([org.hibernate.dialect.DerbyDialect], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1042=org.hibernate.dialect.DerbyDialect, var1991=r0, var305=r3, var2602=null_type, var2882=$z0, var3876=$r7, var3448=$r4, var2676=$r5, var538=$r6}
; {org.hibernate.dialect.DerbyDialect=var1042, r0=var1991, r3=var305, null_type=var2602, $z0=var2882, $r7=var3876, $r4=var3448, $r5=var2676, $r6=var538}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.DerbyDialect;	r3 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.dialect.DerbyDialect: boolean supportsSequences()>();	if $z0 == 0 goto $r8 = new org.hibernate.MappingException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("values next value for ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2