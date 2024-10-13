(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var52 0)
(declare-sort var2341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/1489215714 (var52 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var52 var52)
(declare-const null-String String)
(declare-const var3571 var52) ; Statement: r1 := @this: org.hibernate.dialect.MckoiDialect 
(assert (not (= var3571 null-var52)))
(declare-const var2050 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2050 null-String)))
(define-const var3385 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3385)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3385!1 String)
(assert (= var3385!1 ""))
(assert true)
(define-const var751 String (append/672562846 var3385!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3385!2 String)
(assert (= var3385!2 (str.++ var3385!1 "select ")))
(assert true)
(define-const var6 String (getSelectSequenceNextValString/1489215714 var3571 var2050)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.MckoiDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var300 String (append/672562846 var751 var6)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var751!1 String)
(assert (= var751!1 (str.++ var751 var6)))
(assert true)
(define-const var1156 String (toString/-2075883882 var300)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/1489215714=([org.hibernate.dialect.MckoiDialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var52=org.hibernate.dialect.MckoiDialect, var3571=r1, var2050=r2, var2341=null_type, var3385=$r0, var751=$r4, var6=$r3, var300=$r5, var1156=$r6}
; {org.hibernate.dialect.MckoiDialect=var52, r1=var3571, r2=var2050, null_type=var2341, $r0=var3385, $r4=var751, $r3=var6, $r5=var300, $r6=var1156}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.MckoiDialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.MckoiDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1