(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var800 0)
(declare-sort var2533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1501424381 (var800) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var800 var800)
(declare-const null-String String)
(declare-const var1302 var800) ; Statement: r0 := @this: org.hibernate.sql.ANSIJoinFragment 
(assert (not (= var1302 null-var800)))
(declare-const var999 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var999 null-String)))
(declare-const var2528 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2528 null-String)))
(define-const var2135 String (buffer/-1501424381 var1302)) ; Statement: $r1 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> 
(assert true)
(define-const var2708 String (append/672562846 var2135 ", ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2135!1 String)
(assert (= var2135!1 (str.++ var2135 ", ")))
(assert true)
(define-const var2487 String (append/672562846 var2708 var999)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2708!1 String)
(assert (= var2708!1 (str.++ var2708 var999)))
(assert true)
(define-const var2735 String (append/-1166366385 var2487 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2487!1 String)
(assert (str.prefixof var2487 var2487!1))
(assert true)
;(assert (append/672562846 var2735 var2528)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2735!1 String)
(assert (= var2735!1 (str.++ var2735 var2528)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var800=org.hibernate.sql.ANSIJoinFragment, var1302=r0, var999=r2, var2533=null_type, var2528=r5, var2135=$r1, var2708=$r3, var2487=$r4, var2735=$r6}
; {org.hibernate.sql.ANSIJoinFragment=var800, r0=var1302, r2=var999, null_type=var2533, r5=var2528, $r1=var2135, $r3=var2708, $r4=var2487, $r6=var2735}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.sql.ANSIJoinFragment;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	return
;block_num 1