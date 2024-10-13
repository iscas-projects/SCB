(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1643 0)
(declare-sort var3644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/218973604 (var1643 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1643 var1643)
(declare-const null-String String)
(declare-const var3867 var1643) ; Statement: r1 := @this: org.hibernate.dialect.InterbaseDialect 
(assert (not (= var3867 null-var1643)))
(declare-const var767 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var767 null-String)))
(define-const var2572 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2572)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2572!1 String)
(assert (= var2572!1 ""))
(assert true)
(define-const var3796 String (append/672562846 var2572!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var2572!2 String)
(assert (= var2572!2 (str.++ var2572!1 "select ")))
(assert true)
(define-const var1242 String (getSelectSequenceNextValString/218973604 var3867 var767)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.InterbaseDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var2549 String (append/672562846 var3796 var1242)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3796!1 String)
(assert (= var3796!1 (str.++ var3796 var1242)))
(assert true)
(define-const var1515 String (append/672562846 var2549 " from rdb$database")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from rdb$database") 
(declare-const var2549!1 String)
(assert (= var2549!1 (str.++ var2549 " from rdb$database")))
(assert true)
(define-const var3626 String (toString/-2075883882 var1515)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/218973604=([org.hibernate.dialect.InterbaseDialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1643=org.hibernate.dialect.InterbaseDialect, var3867=r1, var767=r2, var3644=null_type, var2572=$r0, var3796=$r4, var1242=$r3, var2549=$r5, var1515=$r6, var3626=$r7}
; {org.hibernate.dialect.InterbaseDialect=var1643, r1=var3867, r2=var767, null_type=var3644, $r0=var2572, $r4=var3796, $r3=var1242, $r5=var2549, $r6=var1515, $r7=var3626}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.InterbaseDialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.InterbaseDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from rdb$database");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1