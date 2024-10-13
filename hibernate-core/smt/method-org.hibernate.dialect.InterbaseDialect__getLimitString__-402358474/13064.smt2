(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3926 0)
(declare-sort var2732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3926 var3926)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var63 var3926) ; Statement: r7 := @this: org.hibernate.dialect.InterbaseDialect 
(assert (not (= var63 null-var3926)))
(declare-const var1553 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1553 null-String)))
(declare-const var2056 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2056 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (= (ite var2056 1 0) 0)) ; Cond: z0 == 0 
(define-const var3284 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3284)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3284!1 String)
(assert (= var3284!1 ""))
(assert true)
(define-const var810 String (append/672562846 var3284!1 var1553)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3284!2 String)
(assert (= var3284!2 (str.++ var3284!1 var1553)))
(assert true)
(define-const var3910 String (append/672562846 var810 " rows ?")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ?") 
(declare-const var810!1 String)
(assert (= var810!1 (str.++ var810 " rows ?")))
(assert true)
(define-const var2382 String (toString/-2075883882 var3910)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3926=org.hibernate.dialect.InterbaseDialect, var63=r7, var1553=r1, var2732=null_type, var2056=z0, var3284=$r0, var810=$r2, var3910=$r3, var2382=$r8}
; {org.hibernate.dialect.InterbaseDialect=var3926, r7=var63, r1=var1553, null_type=var2732, z0=var2056, $r0=var3284, $r2=var810, $r3=var3910, $r8=var2382}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.dialect.InterbaseDialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ?");	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3