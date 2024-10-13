(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var959 0)
(declare-sort var3032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var959 var959)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2164 var959) ; Statement: r5 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var2164 null-var959)))
(declare-const var659 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var659 null-String)))
(declare-const var230 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var230 null-Bool)))
(define-const var3058 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3058)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3058!1 String)
(assert (= var3058!1 ""))
(assert true)
(define-const var958 String (append/672562846 var3058!1 var659)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3058!2 String)
(assert (= var3058!2 (str.++ var3058!1 var659)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (not (= (ite var230 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2549 String " limit ?, ?") ; Statement: $r6 = " limit ?, ?" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2744 String (append/672562846 var958 var2549)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var958!1 String)
(assert (= var958!1 (str.++ var958 var2549)))
(assert true)
(define-const var1493 String (toString/-2075883882 var2744)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var959=org.hibernate.dialect.MySQLDialect, var2164=r5, var659=r1, var3032=null_type, var230=z0, var3058=$r0, var958=$r2, var2549=$r6, var2744=$r3, var1493=$r4}
; {org.hibernate.dialect.MySQLDialect=var959, r5=var2164, r1=var659, null_type=var3032, z0=var230, $r0=var3058, $r2=var958, $r6=var2549, $r3=var2744, $r4=var1493}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.MySQLDialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ?, ?";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3