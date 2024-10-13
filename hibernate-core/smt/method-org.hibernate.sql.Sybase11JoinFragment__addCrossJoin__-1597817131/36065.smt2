(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var873 0)
(declare-sort var927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/-585940105 (var873) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var873 var873)
(declare-const null-String String)
(declare-const var3200 var873) ; Statement: r0 := @this: org.hibernate.sql.Sybase11JoinFragment 
(assert (not (= var3200 null-var873)))
(declare-const var3132 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3132 null-String)))
(declare-const var2979 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2979 null-String)))
(define-const var1199 String (afterFrom/-585940105 var3200)) ; Statement: $r1 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var3844 String (append/672562846 var1199 ", ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1199!1 String)
(assert (= var1199!1 (str.++ var1199 ", ")))
(assert true)
(define-const var3399 String (append/672562846 var3844 var3132)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3844!1 String)
(assert (= var3844!1 (str.++ var3844 var3132)))
(assert true)
(define-const var2364 String (append/-1166366385 var3399 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3399!1 String)
(assert (str.prefixof var3399 var3399!1))
(assert true)
;(assert (append/672562846 var2364 var2979)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2364!1 String)
(assert (= var2364!1 (str.++ var2364 var2979)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var873=org.hibernate.sql.Sybase11JoinFragment, var3200=r0, var3132=r2, var927=null_type, var2979=r5, var1199=$r1, var3844=$r3, var3399=$r4, var2364=$r6}
; {org.hibernate.sql.Sybase11JoinFragment=var873, r0=var3200, r2=var3132, null_type=var927, r5=var2979, $r1=var1199, $r3=var3844, $r4=var3399, $r6=var2364}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.sql.Sybase11JoinFragment;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	return
;block_num 1