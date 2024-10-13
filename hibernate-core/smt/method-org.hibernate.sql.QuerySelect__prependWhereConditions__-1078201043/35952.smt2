(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3922 0)
(declare-sort var1796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun where/-1123813506 (var3922) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var3922 var3922)
(declare-const null-String String)
(declare-const var1571 var3922) ; Statement: r0 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var1571 null-var3922)))
(declare-const var1469 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1469 null-String)))
(define-const var1329 String (where/-1123813506 var1571)) ; Statement: $r1 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var360 Int (length/-171891354 var1329)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert (not (<= var360 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1099 String (where/-1123813506 var1571)) ; Statement: $r5 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(define-const var2219 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2219)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2219!1 String)
(assert (= var2219!1 ""))
(assert true)
(define-const var3605 String (append/672562846 var2219!1 var1469)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2219!2 String)
(assert (= var2219!2 (str.++ var2219!1 var1469)))
(assert true)
(define-const var474 String (append/672562846 var3605 " and ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var3605!1 String)
(assert (= var3605!1 (str.++ var3605 " and ")))
(assert true)
(define-const var1970 String (toString/-2075883882 var474)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (insert/1196171004 var1099 0 var1970)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, $r8) 

(declare-const var1099!1 String)
(declare-const var2917 Int)
(declare-const var1970!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var3922=org.hibernate.sql.QuerySelect, var1571=r0, var1469=r2, var1796=null_type, var1329=$r1, var360=$i0, var1099=$r5, var2219=$r4, var3605=$r6, var474=$r7, var1970=$r8, var2917=0}
; {org.hibernate.sql.QuerySelect=var3922, r0=var1571, r2=var1469, null_type=var1796, $r1=var1329, $i0=var360, $r5=var1099, $r4=var2219, $r6=var3605, $r7=var474, $r8=var1970, 0=var2917}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.QuerySelect;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r5 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, $r8);	goto [?= return];	return
;block_num 3