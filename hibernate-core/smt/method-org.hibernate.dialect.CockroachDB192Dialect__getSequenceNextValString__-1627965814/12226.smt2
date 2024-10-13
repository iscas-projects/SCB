(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/-257851610 (var879 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var879 var879)
(declare-const null-String String)
(declare-const var1680 var879) ; Statement: r1 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var1680 null-var879)))
(declare-const var248 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var248 null-String)))
(define-const var1239 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1239)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1239!1 String)
(assert (= var1239!1 ""))
(assert true)
(define-const var1008 String (append/672562846 var1239!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var1239!2 String)
(assert (= var1239!2 (str.++ var1239!1 "select ")))
(assert true)
(define-const var1068 String (getSelectSequenceNextValString/-257851610 var1680 var248)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var2369 String (append/672562846 var1008 var1068)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1008!1 String)
(assert (= var1008!1 (str.++ var1008 var1068)))
(assert true)
(define-const var2068 String (toString/-2075883882 var2369)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/-257851610=([org.hibernate.dialect.CockroachDB192Dialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var879=org.hibernate.dialect.CockroachDB192Dialect, var1680=r1, var248=r2, var413=null_type, var1239=$r0, var1008=$r4, var1068=$r3, var2369=$r5, var2068=$r6}
; {org.hibernate.dialect.CockroachDB192Dialect=var879, r1=var1680, r2=var248, null_type=var413, $r0=var1239, $r4=var1008, $r3=var1068, $r5=var2369, $r6=var2068}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1