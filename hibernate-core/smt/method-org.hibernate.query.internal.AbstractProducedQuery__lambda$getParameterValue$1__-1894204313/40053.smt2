(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3076 0)
(declare-sort var966 0)
(declare-sort var179 0)
(declare-sort var1513 0)
(declare-sort var1548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var179) String)
(declare-fun cast-from-var3076-to-var179 (var3076) var179)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1513-init () var1513)
(declare-fun cast-from-var966-to-var1548 (var966) var1548)
(declare-fun <init>/-1425936906 (var1513 String var1548) void)
(declare-const null-var3076 var3076)
(declare-const null-var966 var966)
(declare-const var1107 var3076) ; Statement: r1 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var1107 null-var3076)))
(declare-const var1845 var966) ; Statement: r6 := @parameter1: org.hibernate.QueryParameterException 
(assert (not (= var1845 null-var966)))
(define-const var443 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var443)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var443!1 String)
(assert (= var443!1 ""))
(assert true)
(define-const var2447 String (append/672562846 var443!1 "Parameter reference [")) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter reference [") 
(declare-const var443!2 String)
(assert (= var443!2 (str.++ var443!1 "Parameter reference [")))
(assert true)
(define-const var330 String (append/-1031950772 var2447 (cast-from-var3076-to-var179 var1107))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2447!1 String)
(assert (str.prefixof var2447 var2447!1))
(assert true)
(define-const var2172 String (append/672562846 var330 "] did not come from this query")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not come from this query") 
(declare-const var330!1 String)
(assert (= var330!1 (str.++ var330 "] did not come from this query")))
(assert true)
(define-const var3644 String (toString/-2075883882 var2172)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r6 != null goto $r11 = new java.lang.IllegalArgumentException 
(assert (not (= var1845 null-var966))) ; Cond: r6 != null 
(define-const var2352 var1513 var1513-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var2305 var1548 (cast-from-var966-to-var1548 var1845)) ; Statement: $r12 = (java.lang.Throwable) r6 
(assert true)
;(assert (<init>/-1425936906 var2352 var3644 var2305)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>(r5, $r12) 

(declare-const var2352!1 var1513)
(declare-const var3644!1 String)
(declare-const var2305!1 var1548)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3076-to-var179=([org.hibernate.query.QueryParameter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1513-init=([], java.lang.IllegalArgumentException), cast-from-var966-to-var1548=([org.hibernate.QueryParameterException], java.lang.Throwable), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void)}
; {var3076=org.hibernate.query.QueryParameter, var1107=r1, var966=org.hibernate.QueryParameterException, var1845=r6, var443=$r9, var2447=$r2, var179=java.lang.Object, var330=$r3, var2172=$r4, var3644=r5, var1513=java.lang.IllegalArgumentException, var2352=$r11, var1548=java.lang.Throwable, var2305=$r12}
; {org.hibernate.query.QueryParameter=var3076, r1=var1107, org.hibernate.QueryParameterException=var966, r6=var1845, $r9=var443, $r2=var2447, java.lang.Object=var179, $r3=var330, $r4=var2172, r5=var3644, java.lang.IllegalArgumentException=var1513, $r11=var2352, java.lang.Throwable=var1548, $r12=var2305}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.query.QueryParameter;	r6 := @parameter1: org.hibernate.QueryParameterException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter reference [");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not come from this query");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r6 != null goto $r11 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.IllegalArgumentException;	$r12 = (java.lang.Throwable) r6;	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>(r5, $r12);	return $r11
;block_num 2