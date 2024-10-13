(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2541 0)
(declare-sort var554 0)
(declare-sort var288 0)
(declare-sort var1565 0)
(declare-sort var1445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2541 var2541)
(declare-const null-String String)
(declare-const null-var288 var288)
(declare-const null-var1565 var1565)
(declare-const null-var1445 var1445)
(declare-const var90 var2541) ; Statement: r11 := @this: org.hibernate.hql.spi.id.persistent.Helper 
(assert (not (= var90 null-var2541)))
(declare-const var260 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var260 null-String)))
(declare-const var169 var288) ; Statement: r8 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var169 null-var288)))
(define-const var763 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var763)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var763!1 String)
(assert (= var763!1 ""))
(assert true)
(define-const var2601 String (append/672562846 var763!1 "delete from ")) ; Statement: $r2 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from ") 
(declare-const var763!2 String)
(assert (= var763!2 (str.++ var763!1 "delete from ")))
(assert true)
(define-const var156 String (append/672562846 var2601 var260)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2601!1 String)
(assert (= var2601!1 (str.++ var2601 var260)))
(assert true)
(define-const var2865 String (append/672562846 var156 " where ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ") 
(declare-const var156!1 String)
(assert (= var156!1 (str.++ var156 " where ")))
(assert true)
(define-const var2053 String (append/672562846 var2865 "hib_sess_id")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id") 
(declare-const var2865!1 String)
(assert (= var2865!1 (str.++ var2865 "hib_sess_id")))
(assert true)
(define-const var566 String (append/672562846 var2053 "=?")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?") 
(declare-const var2053!1 String)
(assert (= var2053!1 (str.++ var2053 "=?")))
(assert true)
(define-const var3015 String (toString/-2075883882 var566)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var777 var1565 null-var1565) ; Statement: r32 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3913 var1445) ; Statement: $r27 := @caughtexception 
(assert (not (= var3913 null-var1445)))
(assert true) ; Non Conditional
 ; Statement: if r32 == null goto throw $r27 
(assert (= var777 null-var1565)) ; Cond: r32 == null 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2541=org.hibernate.hql.spi.id.persistent.Helper, var90=r11, var260=r1, var554=null_type, var288=org.hibernate.engine.spi.SharedSessionContractImplementor, var169=r8, var763=$r33, var2601=$r2, var156=$r3, var2865=$r4, var2053=$r5, var566=$r6, var3015=r7, var1565=java.sql.PreparedStatement, var777=r32, var1445=java.lang.Throwable, var3913=$r27}
; {org.hibernate.hql.spi.id.persistent.Helper=var2541, r11=var90, r1=var260, null_type=var554, org.hibernate.engine.spi.SharedSessionContractImplementor=var288, r8=var169, $r33=var763, $r2=var2601, $r3=var156, $r4=var2865, $r5=var2053, $r6=var566, r7=var3015, java.sql.PreparedStatement=var1565, r32=var777, java.lang.Throwable=var1445, $r27=var3913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.hql.spi.id.persistent.Helper;	r1 := @parameter0: java.lang.String;	r8 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("delete from ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" where ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("hib_sess_id");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?");	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r32 = null;	$r27 := @caughtexception;	if r32 == null goto throw $r27;	throw $r27
;block_num 4