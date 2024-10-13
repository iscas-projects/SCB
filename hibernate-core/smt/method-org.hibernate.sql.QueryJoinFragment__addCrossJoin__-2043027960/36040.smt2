(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2759 0)
(declare-sort var117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1032958620 (var2759) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2759 var2759)
(declare-const null-String String)
(declare-const var2688 var2759) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var2688 null-var2759)))
(declare-const var2458 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2458 null-String)))
(declare-const var2 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2 null-String)))
(define-const var1098 String (afterFrom/1032958620 var2688)) ; Statement: $r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var1264 String (append/672562846 var1098 ", ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1098!1 String)
(assert (= var1098!1 (str.++ var1098 ", ")))
(assert true)
(define-const var3958 String (append/672562846 var1264 var2458)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1264!1 String)
(assert (= var1264!1 (str.++ var1264 var2458)))
(assert true)
(define-const var2558 String (append/-1166366385 var3958 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3958!1 String)
(assert (str.prefixof var3958 var3958!1))
(assert true)
;(assert (append/672562846 var2558 var2)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2558!1 String)
(assert (= var2558!1 (str.++ var2558 var2)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2759=org.hibernate.sql.QueryJoinFragment, var2688=r0, var2458=r2, var117=null_type, var2=r5, var1098=$r1, var1264=$r3, var3958=$r4, var2558=$r6}
; {org.hibernate.sql.QueryJoinFragment=var2759, r0=var2688, r2=var2458, null_type=var117, r5=var2, $r1=var1098, $r3=var1264, $r4=var3958, $r6=var2558}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	return
;block_num 1