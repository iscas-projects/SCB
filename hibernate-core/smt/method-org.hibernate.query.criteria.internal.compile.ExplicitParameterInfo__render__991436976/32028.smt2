(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isNamed/-2131889558 (var3621) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1754510778 (var3621) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3621 var3621)
(declare-const var2228 var3621) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo 
(assert (not (= var2228 null-var3621)))
(assert true)
(define-const var1573 Bool (isNamed/-2131889558 var2228)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: boolean isNamed()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1573 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var48 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var48)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var48!1 String)
(assert (= var48!1 ""))
(assert true)
(define-const var3370 String (append/672562846 var48!1 ":")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var48!2 String)
(assert (= var48!2 (str.++ var48!1 ":")))
(define-const var3764 String (name/1754510778 var2228)) ; Statement: $r7 = r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: java.lang.String name> 
(assert true)
(define-const var1491 String (append/672562846 var3370 var3764)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3370!1 String)
(assert (= var3370!1 (str.++ var3370 var3764)))
(assert true)
(define-const var1364 String (toString/-2075883882 var1491)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r10] 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {isNamed/-2131889558=([org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1754510778=([org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3621=org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo, var2228=r0, var1573=$z0, var48=$r6, var3370=$r8, var3764=$r7, var1491=$r9, var1364=$r10}
; {org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo=var3621, r0=var2228, $z0=var1573, $r6=var48, $r8=var3370, $r7=var3764, $r9=var1491, $r10=var1364}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo;	$z0 = virtualinvoke r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: boolean isNamed()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = r0.<org.hibernate.query.criteria.internal.compile.ExplicitParameterInfo: java.lang.String name>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r10];	return $r10
;block_num 3