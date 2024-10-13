(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var27 0)
(declare-sort var1654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-901126642 (var27 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var27 var27)
(declare-const null-String String)
(declare-const var52 var27) ; Statement: r1 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var52 null-var27)))
(declare-const var1531 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1531 null-String)))
(define-const var1746 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1746)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1746!1 String)
(assert (= var1746!1 ""))
(assert true)
(define-const var3361 String (getForUpdateString/-901126642 var52 var1531)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString(java.lang.String)>(r2) 
(assert true)
(define-const var706 String (append/672562846 var1746!1 var3361)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1746!2 String)
(assert (= var1746!2 (str.++ var1746!1 var3361)))
(assert true)
(define-const var112 String (append/672562846 var706 " nowait")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait") 
(declare-const var706!1 String)
(assert (= var706!1 (str.++ var706 " nowait")))
(assert true)
(define-const var3172 String (toString/-2075883882 var112)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-901126642=([org.hibernate.dialect.AbstractHANADialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var27=org.hibernate.dialect.AbstractHANADialect, var52=r1, var1531=r2, var1654=null_type, var1746=$r0, var3361=$r3, var706=$r4, var112=$r5, var3172=$r6}
; {org.hibernate.dialect.AbstractHANADialect=var27, r1=var52, r2=var1531, null_type=var1654, $r0=var1746, $r3=var3361, $r4=var706, $r5=var112, $r6=var3172}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.AbstractHANADialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString(java.lang.String)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1