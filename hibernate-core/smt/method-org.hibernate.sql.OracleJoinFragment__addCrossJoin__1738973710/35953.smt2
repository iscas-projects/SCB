(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var777 0)
(declare-sort var2879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1122535774 (var777) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var777 var777)
(declare-const null-String String)
(declare-const var3799 var777) ; Statement: r0 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var3799 null-var777)))
(declare-const var1487 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1487 null-String)))
(declare-const var1848 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1848 null-String)))
(define-const var2766 String (afterFrom/1122535774 var3799)) ; Statement: $r1 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var600 String (append/672562846 var2766 ", ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2766!1 String)
(assert (= var2766!1 (str.++ var2766 ", ")))
(assert true)
(define-const var3505 String (append/672562846 var600 var1487)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var600!1 String)
(assert (= var600!1 (str.++ var600 var1487)))
(assert true)
(define-const var3237 String (append/-1166366385 var3505 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3505!1 String)
(assert (str.prefixof var3505 var3505!1))
(assert true)
;(assert (append/672562846 var3237 var1848)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3237!1 String)
(assert (= var3237!1 (str.++ var3237 var1848)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var777=org.hibernate.sql.OracleJoinFragment, var3799=r0, var1487=r2, var2879=null_type, var1848=r5, var2766=$r1, var600=$r3, var3505=$r4, var3237=$r6}
; {org.hibernate.sql.OracleJoinFragment=var777, r0=var3799, r2=var1487, null_type=var2879, r5=var1848, $r1=var2766, $r3=var600, $r4=var3505, $r6=var3237}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.sql.OracleJoinFragment;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	return
;block_num 1