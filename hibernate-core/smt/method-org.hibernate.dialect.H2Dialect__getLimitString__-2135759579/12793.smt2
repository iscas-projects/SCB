(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3359 0)
(declare-sort var2791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3359 var3359)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1510 var3359) ; Statement: r5 := @this: org.hibernate.dialect.H2Dialect 
(assert (not (= var1510 null-var3359)))
(declare-const var1766 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1766 null-String)))
(declare-const var291 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var291 null-Bool)))
(define-const var1891 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1891)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1891!1 String)
(assert (= var1891!1 ""))
(assert true)
(define-const var570 String (append/672562846 var1891!1 var1766)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1891!2 String)
(assert (= var1891!2 (str.++ var1891!1 var1766)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (not (= (ite var291 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var76 String " limit ? offset ?") ; Statement: $r6 = " limit ? offset ?" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1758 String (append/672562846 var570 var76)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var570!1 String)
(assert (= var570!1 (str.++ var570 var76)))
(assert true)
(define-const var1007 String (toString/-2075883882 var1758)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3359=org.hibernate.dialect.H2Dialect, var1510=r5, var1766=r1, var2791=null_type, var291=z0, var1891=$r0, var570=$r2, var76=$r6, var1758=$r3, var1007=$r4}
; {org.hibernate.dialect.H2Dialect=var3359, r5=var1510, r1=var1766, null_type=var2791, z0=var291, $r0=var1891, $r2=var570, $r6=var76, $r3=var1758, $r4=var1007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.H2Dialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ? offset ?";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3