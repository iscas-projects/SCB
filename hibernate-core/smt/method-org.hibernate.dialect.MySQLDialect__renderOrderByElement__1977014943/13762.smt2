(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var672 0)
(declare-sort var3758 0)
(declare-sort var3158 0)
(declare-sort var2838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun renderOrderByElement/-314772783 (var2838 String String String var3158) String)
(declare-fun cast-from-var672-to-var2838 (var672) var2838)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var672 var672)
(declare-const null-String String)
(declare-const null-var3158 var3158)
(declare-const var3158-NONE var3158)
(declare-const var589 var672) ; Statement: r3 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var589 null-var672)))
(declare-const var617 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var617 null-String)))
(declare-const var962 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var962 null-String)))
(declare-const var2241 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2241 null-String)))
(declare-const var1261 var3158) ; Statement: r1 := @parameter3: org.hibernate.NullPrecedence 
(assert (not (= var1261 null-var3158)))
(define-const var956 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var956)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var956!1 String)
(assert (= var956!1 ""))
(define-const var3261 var3158 var3158-NONE) ; Statement: $r2 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
 ; Statement: if r1 == $r2 goto $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
(assert (= var1261 var3261)) ; Cond: r1 == $r2 
(define-const var2106 var3158 var3158-NONE) ; Statement: $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
(assert true)
(define-const var1708 String (renderOrderByElement/-314772783 (cast-from-var672-to-var2838 var589) var617 var962 var2241 var2106)) ; Statement: $r11 = specialinvoke r3.<org.hibernate.dialect.Dialect: java.lang.String renderOrderByElement(java.lang.String,java.lang.String,java.lang.String,org.hibernate.NullPrecedence)>(r4, r5, r6, $r10) 
(assert true)
;(assert (append/672562846 var956!1 var1708)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var956!2 String)
(assert (= var956!2 (str.++ var956!1 var1708)))
(assert true)
(define-const var2413 String (toString/-2075883882 var956!2)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), renderOrderByElement/-314772783=([org.hibernate.dialect.Dialect, java.lang.String, java.lang.String, java.lang.String, org.hibernate.NullPrecedence], java.lang.String), cast-from-var672-to-var2838=([org.hibernate.dialect.MySQLDialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var672=org.hibernate.dialect.MySQLDialect, var589=r3, var617=r4, var3758=null_type, var962=r5, var2241=r6, var3158=org.hibernate.NullPrecedence, var1261=r1, var956=$r0, var3261=$r2, var2106=$r10, var2838=org.hibernate.dialect.Dialect, var1708=$r11, var2413=$r12}
; {org.hibernate.dialect.MySQLDialect=var672, r3=var589, r4=var617, null_type=var3758, r5=var962, r6=var2241, org.hibernate.NullPrecedence=var3158, r1=var1261, $r0=var956, $r2=var3261, $r10=var2106, org.hibernate.dialect.Dialect=var2838, $r11=var1708, $r12=var2413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.dialect.MySQLDialect;	r4 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r1 := @parameter3: org.hibernate.NullPrecedence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	if r1 == $r2 goto $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	$r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	$r11 = specialinvoke r3.<org.hibernate.dialect.Dialect: java.lang.String renderOrderByElement(java.lang.String,java.lang.String,java.lang.String,org.hibernate.NullPrecedence)>(r4, r5, r6, $r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2