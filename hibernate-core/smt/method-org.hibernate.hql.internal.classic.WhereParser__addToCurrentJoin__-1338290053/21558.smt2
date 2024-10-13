(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var2870 0)
(declare-sort var1223 0)
(declare-sort var2852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun joins/258954410 (var3520) var1223)
(declare-fun getLast/1818428709 (var1223) var2852)
(declare-fun cast-from-var2852-to-String (var2852) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3520 var3520)
(declare-const null-String String)
(declare-const var3293 var3520) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var3293 null-var3520)))
(declare-const var1647 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1647 null-String)))
(define-const var3538 var1223 (joins/258954410 var3293)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins> 
(assert true)
(define-const var1242 var2852 (getLast/1818428709 var3538)) ; Statement: $r2 = virtualinvoke $r1.<java.util.LinkedList: java.lang.Object getLast()>() 
(define-const var3859 String (cast-from-var2852-to-String var1242)) ; Statement: $r4 = (java.lang.StringBuilder) $r2 
(assert true)
;(assert (append/672562846 var3859 var1647)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3859!1 String)
(assert (= var3859!1 (str.++ var3859 var1647)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {joins/258954410=([org.hibernate.hql.internal.classic.WhereParser], java.util.LinkedList), getLast/1818428709=([java.util.LinkedList], java.lang.Object), cast-from-var2852-to-String=([java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3520=org.hibernate.hql.internal.classic.WhereParser, var3293=r0, var1647=r3, var2870=null_type, var1223=java.util.LinkedList, var3538=$r1, var2852=java.lang.Object, var1242=$r2, var3859=$r4}
; {org.hibernate.hql.internal.classic.WhereParser=var3520, r0=var3293, r3=var1647, null_type=var2870, java.util.LinkedList=var1223, $r1=var3538, java.lang.Object=var2852, $r2=var1242, $r4=var3859}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.WhereParser;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins>;	$r2 = virtualinvoke $r1.<java.util.LinkedList: java.lang.Object getLast()>();	$r4 = (java.lang.StringBuilder) $r2;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	return
;block_num 1