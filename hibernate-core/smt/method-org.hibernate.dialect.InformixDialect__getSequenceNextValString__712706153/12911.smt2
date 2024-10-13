(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2631 0)
(declare-sort var3542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSelectSequenceNextValString/-1731056187 (var2631 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2631 var2631)
(declare-const null-String String)
(declare-const var1058 var2631) ; Statement: r1 := @this: org.hibernate.dialect.InformixDialect 
(assert (not (= var1058 null-var2631)))
(declare-const var1023 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1023 null-String)))
(define-const var558 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var558)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var558!1 String)
(assert (= var558!1 ""))
(assert true)
(define-const var2439 String (append/672562846 var558!1 "select ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var558!2 String)
(assert (= var558!2 (str.++ var558!1 "select ")))
(assert true)
(define-const var1101 String (getSelectSequenceNextValString/-1731056187 var1058 var1023)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.InformixDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2) 
(assert true)
(define-const var3286 String (append/672562846 var2439 var1101)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2439!1 String)
(assert (= var2439!1 (str.++ var2439 var1101)))
(assert true)
(define-const var3795 String (append/672562846 var3286 " from informix.systables where tabid=1")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from informix.systables where tabid=1") 
(declare-const var3286!1 String)
(assert (= var3286!1 (str.++ var3286 " from informix.systables where tabid=1")))
(assert true)
(define-const var723 String (toString/-2075883882 var3795)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSelectSequenceNextValString/-1731056187=([org.hibernate.dialect.InformixDialect, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2631=org.hibernate.dialect.InformixDialect, var1058=r1, var1023=r2, var3542=null_type, var558=$r0, var2439=$r4, var1101=$r3, var3286=$r5, var3795=$r6, var723=$r7}
; {org.hibernate.dialect.InformixDialect=var2631, r1=var1058, r2=var1023, null_type=var3542, $r0=var558, $r4=var2439, $r3=var1101, $r5=var3286, $r6=var3795, $r7=var723}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.InformixDialect;	r2 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r3 = virtualinvoke r1.<org.hibernate.dialect.InformixDialect: java.lang.String getSelectSequenceNextValString(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from informix.systables where tabid=1");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1