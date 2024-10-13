(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2210 0)
(declare-sort var481 0)
(declare-sort var2289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun first/-511963710 (var2210) Bool)
(declare-fun sb/-511963710 (var2210) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2210 var2210)
(declare-const null-String String)
(declare-const null-var2289 var2289)
(declare-const var1196 var2210) ; Statement: r0 := @this: jdk.management.jfr.Stringifier 
(assert (not (= var1196 null-var2210)))
(declare-const var133 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var133 null-String)))
(declare-const var2509 var2289) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2509 null-var2289)))
(define-const var289 Bool (first/-511963710 var1196)) ; Statement: $z0 = r0.<jdk.management.jfr.Stringifier: boolean first> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert (not (= (ite var289 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1196!1 var2210)
(assert (not (= var1196!1 null-var2210)))
(assert (= (first/-511963710 var1196!1) (ite (= 1 0) true false))) ; Statement: r0.<jdk.management.jfr.Stringifier: boolean first> = 0 
 ; Statement: goto [?= $z1 = r2 instanceof java.lang.String] 
(assert true) ; Non Conditional
(define-const var2514 Bool false) ; Statement: $z1 = r2 instanceof java.lang.String 
(define-const var3531 String (sb/-511963710 var1196!1)) ; Statement: $r4 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert true)
(define-const var97 String (append/672562846 var3531 var133)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3531!1 String)
(assert (= var3531!1 (str.++ var3531 var133)))
(assert true)
;(assert (append/672562846 var97 "=")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var97!1 String)
(assert (= var97!1 (str.++ var97 "=")))
 ; Statement: if r2 != null goto (branch) 
(assert (not (not (= var2509 null-var2289)))) ; Negate: Cond: r2 != null  
(define-const var1646 String (sb/-511963710 var1196!1)) ; Statement: $r9 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var1646 "null")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var1646!1 String)
(assert (= var1646!1 (str.++ var1646 "null")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {first/-511963710=([jdk.management.jfr.Stringifier], boolean), sb/-511963710=([jdk.management.jfr.Stringifier], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2210=jdk.management.jfr.Stringifier, var1196=r0, var133=r3, var481=null_type, var2289=java.lang.Object, var2509=r2, var289=$z0, var2514=$z1, var3531=$r4, var97=$r5, var1646=$r9}
; {jdk.management.jfr.Stringifier=var2210, r0=var1196, r3=var133, null_type=var481, java.lang.Object=var2289, r2=var2509, $z0=var289, $z1=var2514, $r4=var3531, $r5=var97, $r9=var1646}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @this: jdk.management.jfr.Stringifier;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$z0 = r0.<jdk.management.jfr.Stringifier: boolean first>;	if $z0 == 0 goto $r1 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	r0.<jdk.management.jfr.Stringifier: boolean first> = 0;	goto [?= $z1 = r2 instanceof java.lang.String];	$z1 = r2 instanceof java.lang.String;	$r4 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	if r2 != null goto (branch);	$r9 = r0.<jdk.management.jfr.Stringifier: java.lang.StringBuilder sb>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	goto [?= return];	return
;block_num 5