(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var1812 0)
(declare-sort var3295 0)
(declare-sort var1341 0)
(declare-sort var3989 0)
(declare-sort var731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun booleanTests/258954410 (var2751) var1341)
(declare-fun removeLast/1195514639 (var1341) var3989)
(declare-fun cast-from-var3989-to-var731 (var3989) var731)
(declare-fun booleanValue/-1820462562 (var731) Bool)
(declare-fun joins/258954410 (var2751) var1341)
(declare-fun cast-from-var3989-to-String (var3989) String)
(declare-fun getLast/1818428709 (var1341) var3989)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nots/258954410 (var2751) var1341)
(declare-const null-var2751 var2751)
(declare-const null-var1812 var1812)
(declare-const null-String String)
(declare-const var3775 var2751) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.WhereParser 
(assert (not (= var3775 null-var2751)))
(declare-const var512 var1812) ; Statement: r15 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var512 null-var1812)))
(declare-const var192 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var192 null-String)))
(define-const var102 var1341 (booleanTests/258954410 var3775)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList booleanTests> 
(assert true)
(define-const var3951 var3989 (removeLast/1195514639 var102)) ; Statement: $r2 = virtualinvoke $r1.<java.util.LinkedList: java.lang.Object removeLast()>() 
(define-const var1475 var731 (cast-from-var3989-to-var731 var3951)) ; Statement: $r3 = (java.lang.Boolean) $r2 
(assert true)
(define-const var503 Bool (booleanValue/-1820462562 var1475)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins> 
(assert (= (ite var503 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2918 var1341 (joins/258954410 var3775)) ; Statement: $r4 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins> 
(assert true)
(define-const var1974 var3989 (removeLast/1195514639 var2918)) ; Statement: $r5 = virtualinvoke $r4.<java.util.LinkedList: java.lang.Object removeLast()>() 
(define-const var3595 String (cast-from-var3989-to-String var1974)) ; Statement: r6 = (java.lang.StringBuilder) $r5 
(define-const var2050 var1341 (joins/258954410 var3775)) ; Statement: $r7 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins> 
(assert true)
(define-const var1657 var3989 (getLast/1818428709 var2050)) ; Statement: $r8 = virtualinvoke $r7.<java.util.LinkedList: java.lang.Object getLast()>() 
(define-const var3608 String (cast-from-var3989-to-String var1657)) ; Statement: $r10 = (java.lang.StringBuilder) $r8 
(assert true)
(define-const var3518 String (toString/-2075883882 var3595)) ; Statement: $r9 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3608 var3518)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3608!1 String)
(assert (= var3608!1 (str.++ var3608 var3518)))
(assert true) ; Non Conditional
(define-const var2209 var1341 (nots/258954410 var3775)) ; Statement: $r11 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList nots> 
(assert true)
(define-const var2115 var3989 (removeLast/1195514639 var2209)) ; Statement: $r12 = virtualinvoke $r11.<java.util.LinkedList: java.lang.Object removeLast()>() 
(define-const var3071 var731 (cast-from-var3989-to-var731 var2115)) ; Statement: $r13 = (java.lang.Boolean) $r12 
(assert true)
(define-const var3121 Bool (booleanValue/-1820462562 var3071)) ; Statement: $z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 == 0 goto $r24 = ")" 
(assert (= (ite var3121 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3025 String ")") ; Statement: $r24 = ")" 
(assert true)
(define-const var3945 Bool (= var3025 var192)) ; Statement: $z4 = virtualinvoke $r24.<java.lang.String: boolean equals(java.lang.Object)>(r14) 
 ; Statement: if $z4 != 0 goto return 
(assert (not (= (ite var3945 1 0) 0))) ; Cond: $z4 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {booleanTests/258954410=([org.hibernate.hql.internal.classic.WhereParser], java.util.LinkedList), removeLast/1195514639=([java.util.LinkedList], java.lang.Object), cast-from-var3989-to-var731=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), joins/258954410=([org.hibernate.hql.internal.classic.WhereParser], java.util.LinkedList), cast-from-var3989-to-String=([java.lang.Object], java.lang.StringBuilder), getLast/1818428709=([java.util.LinkedList], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nots/258954410=([org.hibernate.hql.internal.classic.WhereParser], java.util.LinkedList)}
; {var2751=org.hibernate.hql.internal.classic.WhereParser, var3775=r0, var1812=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var512=r15, var192=r14, var3295=null_type, var1341=java.util.LinkedList, var102=$r1, var3989=java.lang.Object, var3951=$r2, var731=java.lang.Boolean, var1475=$r3, var503=$z0, var2918=$r4, var1974=$r5, var3595=r6, var2050=$r7, var1657=$r8, var3608=$r10, var3518=$r9, var2209=$r11, var2115=$r12, var3071=$r13, var3121=$z1, var3025=$r24, var3945=$z4}
; {org.hibernate.hql.internal.classic.WhereParser=var2751, r0=var3775, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1812, r15=var512, r14=var192, null_type=var3295, java.util.LinkedList=var1341, $r1=var102, java.lang.Object=var3989, $r2=var3951, java.lang.Boolean=var731, $r3=var1475, $z0=var503, $r4=var2918, $r5=var1974, r6=var3595, $r7=var2050, $r8=var1657, $r10=var3608, $r9=var3518, $r11=var2209, $r12=var2115, $r13=var3071, $z1=var3121, $r24=var3025, $z4=var3945}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.WhereParser;	r15 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r14 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList booleanTests>;	$r2 = virtualinvoke $r1.<java.util.LinkedList: java.lang.Object removeLast()>();	$r3 = (java.lang.Boolean) $r2;	$z0 = virtualinvoke $r3.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $r4 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins>;	$r4 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins>;	$r5 = virtualinvoke $r4.<java.util.LinkedList: java.lang.Object removeLast()>();	r6 = (java.lang.StringBuilder) $r5;	$r7 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList joins>;	$r8 = virtualinvoke $r7.<java.util.LinkedList: java.lang.Object getLast()>();	$r10 = (java.lang.StringBuilder) $r8;	$r9 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = r0.<org.hibernate.hql.internal.classic.WhereParser: java.util.LinkedList nots>;	$r12 = virtualinvoke $r11.<java.util.LinkedList: java.lang.Object removeLast()>();	$r13 = (java.lang.Boolean) $r12;	$z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>();	if $z1 == 0 goto $r24 = ")";	$r24 = ")";	$z4 = virtualinvoke $r24.<java.lang.String: boolean equals(java.lang.Object)>(r14);	if $z4 != 0 goto return;	return
;block_num 5