(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3002 0)
(declare-sort var2483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3002 var3002)
(declare-const null-String String)
(declare-const var3842 var3002) ; Statement: r6 := @this: org.hibernate.dialect.InterbaseDialect 
(assert (not (= var3842 null-var3002)))
(declare-const var2611 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2611 null-String)))
(define-const var2512 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2512)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2512!1 String)
(assert (= var2512!1 ""))
(assert true)
(define-const var2567 String (append/672562846 var2512!1 "gen_id( ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("gen_id( ") 
(declare-const var2512!2 String)
(assert (= var2512!2 (str.++ var2512!1 "gen_id( ")))
(assert true)
(define-const var1246 String (append/672562846 var2567 var2611)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2567!1 String)
(assert (= var2567!1 (str.++ var2567 var2611)))
(assert true)
(define-const var2966 String (append/672562846 var1246 ", 1 )")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", 1 )") 
(declare-const var1246!1 String)
(assert (= var1246!1 (str.++ var1246 ", 1 )")))
(assert true)
(define-const var3046 String (toString/-2075883882 var2966)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3002=org.hibernate.dialect.InterbaseDialect, var3842=r6, var2611=r1, var2483=null_type, var2512=$r0, var2567=$r2, var1246=$r3, var2966=$r4, var3046=$r5}
; {org.hibernate.dialect.InterbaseDialect=var3002, r6=var3842, r1=var2611, null_type=var2483, $r0=var2512, $r2=var2567, $r3=var1246, $r4=var2966, $r5=var3046}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.InterbaseDialect;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("gen_id( ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", 1 )");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1