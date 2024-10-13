(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var1462 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1462 null-String)))
(declare-const var2010 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2010 null-String)))
(declare-const var619 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var619 null-String)))
(assert true)
(define-const var1895 String (append/672562846 var1462 "@")) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var1462!1 String)
(assert (= var1462!1 (str.++ var1462 "@")))
(assert true)
(define-const var2180 String (append/672562846 var1895 var2010)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1895!1 String)
(assert (= var1895!1 (str.++ var1895 var2010)))
(assert true)
(define-const var3413 String (append/672562846 var2180 " {")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {") 
(declare-const var2180!1 String)
(assert (= var2180!1 (str.++ var2180 " {")))
(assert true)
(define-const var1527 String (append/672562846 var3413 var619)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3413!1 String)
(assert (= var3413!1 (str.++ var3413 var619)))
(assert true)
;(assert (append/672562846 var1527 "}")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1527!1 String)
(assert (= var1527!1 (str.++ var1527 "}")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1462=r0, var2010=r1, var1460=null_type, var619=r4, var1895=$r2, var2180=$r3, var3413=$r5, var1527=$r6}
; {r0=var1462, r1=var2010, null_type=var1460, r4=var619, $r2=var1895, $r3=var2180, $r5=var3413, $r6=var1527}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return
;block_num 1