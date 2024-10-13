(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var910 0)
(declare-sort var1948 0)
(declare-sort var470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun first/-511963710 (var910) Bool)
(declare-fun sb/-511963710 (var910) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var910 var910)
(declare-const null-String String)
(declare-const null-var470 var470)
(declare-const var2554 var910) ; Statement: r0 := @this: jdk.management.jfr.Stringifier 
(assert (not (= var2554 null-var910)))
(declare-const var2388 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2388 null-String)))
(declare-const var3162 var470) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3162 null-var470)))
(define-const var2906 Bool (first/-511963710 var2554)) ; Statement: $z0 = r0.<jdk.management.jfr.Stringifier: boolean first> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert (= (ite var2906 1 0) 0)) ; Cond: $z0 == 0 
(define-const var449 String (sb/-511963710 var2554)) ; Statement: $r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var449 " ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var449!1 String)
(assert (= var449!1 (str.++ var449 " ")))
(assert true) ; Non Conditional
(define-const var2894 Bool false) ; Statement: $z1 = r2 instanceof java.lang.String 
(define-const var397 String (sb/-511963710 var2554)) ; Statement: $r4 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert true)
(define-const var920 String (append/672562846 var397 var2388)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var397!1 String)
(assert (= var397!1 (str.++ var397 var2388)))
(assert true)
;(assert (append/672562846 var920 "=")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var920!1 String)
(assert (= var920!1 (str.++ var920 "=")))
 ; Statement: if r2 != null goto (branch) 
(assert (not (not (= var3162 null-var470)))) ; Negate: Cond: r2 != null  
(define-const var224 String (sb/-511963710 var2554)) ; Statement: $r9 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var224 "null")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var224!1 String)
(assert (= var224!1 (str.++ var224 "null")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {first/-511963710=([jdk.management.jfr.Stringifier], boolean), sb/-511963710=([jdk.management.jfr.Stringifier], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var910=jdk.management.jfr.Stringifier, var2554=r0, var2388=r3, var1948=null_type, var470=java.lang.Object, var3162=r2, var2906=$z0, var449=$r1, var2894=$z1, var397=$r4, var920=$r5, var224=$r9}
; {jdk.management.jfr.Stringifier=var910, r0=var2554, r3=var2388, null_type=var1948, java.lang.Object=var470, r2=var3162, $z0=var2906, $r1=var449, $z1=var2894, $r4=var397, $r5=var920, $r9=var224}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r0 := @this: jdk.management.jfr.Stringifier;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$z0 = r0.<jdk.management.jfr.Stringifier: boolean first>;	if $z0 == 0 goto $r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	$r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$z1 = r2 instanceof java.lang.String;	$r4 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	if r2 != null goto (branch);	$r9 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	goto [?= return];	return
;block_num 5