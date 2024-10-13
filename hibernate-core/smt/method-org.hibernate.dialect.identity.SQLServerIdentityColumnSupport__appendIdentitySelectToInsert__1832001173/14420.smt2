(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var968 0)
(declare-sort var2911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var968 var968)
(declare-const null-String String)
(declare-const var1913 var968) ; Statement: r5 := @this: org.hibernate.dialect.identity.SQLServerIdentityColumnSupport 
(assert (not (= var1913 null-var968)))
(declare-const var2572 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2572 null-String)))
(define-const var3679 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3679)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3679!1 String)
(assert (= var3679!1 ""))
(assert true)
(define-const var596 String (append/672562846 var3679!1 var2572)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3679!2 String)
(assert (= var3679!2 (str.++ var3679!1 var2572)))
(assert true)
(define-const var3333 String (append/672562846 var596 " select scope_identity()")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" select scope_identity()") 
(declare-const var596!1 String)
(assert (= var596!1 (str.++ var596 " select scope_identity()")))
(assert true)
(define-const var2149 String (toString/-2075883882 var3333)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var968=org.hibernate.dialect.identity.SQLServerIdentityColumnSupport, var1913=r5, var2572=r1, var2911=null_type, var3679=$r0, var596=$r2, var3333=$r3, var2149=$r4}
; {org.hibernate.dialect.identity.SQLServerIdentityColumnSupport=var968, r5=var1913, r1=var2572, null_type=var2911, $r0=var3679, $r2=var596, $r3=var3333, $r4=var2149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.identity.SQLServerIdentityColumnSupport;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" select scope_identity()");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1