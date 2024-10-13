(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3512 0)
(declare-sort var726 0)
(declare-sort var448 0)
(declare-sort var3619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun renderOrderByElement/-314772783 (var3619 String String String var448) String)
(declare-fun cast-from-var3512-to-var3619 (var3512) var3619)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3512 var3512)
(declare-const null-String String)
(declare-const null-var448 var448)
(declare-const var448-NONE var448)
(declare-const var688 var3512) ; Statement: r2 := @this: org.hibernate.dialect.SQLServer2008Dialect 
(assert (not (= var688 null-var3512)))
(declare-const var2443 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2443 null-String)))
(declare-const var134 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var134 null-String)))
(declare-const var2222 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2222 null-String)))
(declare-const var2184 var448) ; Statement: r1 := @parameter3: org.hibernate.NullPrecedence 
(assert (not (= var2184 null-var448)))
(define-const var2990 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2990)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2990!1 String)
(assert (= var2990!1 ""))
 ; Statement: if r1 == null goto $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
(assert (= var2184 null-var448)) ; Cond: r1 == null 
(define-const var2283 var448 var448-NONE) ; Statement: $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE> 
(assert true)
(define-const var2856 String (renderOrderByElement/-314772783 (cast-from-var3512-to-var3619 var688) var2443 var134 var2222 var2283)) ; Statement: $r11 = specialinvoke r2.<org.hibernate.dialect.SQLServer2005Dialect: java.lang.String renderOrderByElement(java.lang.String,java.lang.String,java.lang.String,org.hibernate.NullPrecedence)>(r3, r4, r5, $r10) 
(assert true)
;(assert (append/672562846 var2990!1 var2856)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2990!2 String)
(assert (= var2990!2 (str.++ var2990!1 var2856)))
(assert true)
(define-const var1836 String (toString/-2075883882 var2990!2)) ; Statement: $r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), renderOrderByElement/-314772783=([org.hibernate.dialect.Dialect, java.lang.String, java.lang.String, java.lang.String, org.hibernate.NullPrecedence], java.lang.String), cast-from-var3512-to-var3619=([org.hibernate.dialect.SQLServer2008Dialect], org.hibernate.dialect.Dialect), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3512=org.hibernate.dialect.SQLServer2008Dialect, var688=r2, var2443=r3, var726=null_type, var134=r4, var2222=r5, var448=org.hibernate.NullPrecedence, var2184=r1, var2990=$r0, var2283=$r10, var3619=org.hibernate.dialect.Dialect, var2856=$r11, var1836=$r12}
; {org.hibernate.dialect.SQLServer2008Dialect=var3512, r2=var688, r3=var2443, null_type=var726, r4=var134, r5=var2222, org.hibernate.NullPrecedence=var448, r1=var2184, $r0=var2990, $r10=var2283, org.hibernate.dialect.Dialect=var3619, $r11=var2856, $r12=var1836}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.SQLServer2008Dialect;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	r1 := @parameter3: org.hibernate.NullPrecedence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	$r10 = <org.hibernate.NullPrecedence: org.hibernate.NullPrecedence NONE>;	$r11 = specialinvoke r2.<org.hibernate.dialect.SQLServer2005Dialect: java.lang.String renderOrderByElement(java.lang.String,java.lang.String,java.lang.String,org.hibernate.NullPrecedence)>(r3, r4, r5, $r10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 2