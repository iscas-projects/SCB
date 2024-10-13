(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1589 0)
(declare-sort var2157 0)
(declare-sort var409 0)
(declare-sort var2669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columns/2096745176 (var1589) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2157-init () var2157)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/2096745176 (var1589) String)
(declare-fun append/-1031950772 (String var409) String)
(declare-fun cast-from-String-to-var409 (String) var409)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2157 String) void)
(declare-fun cast-from-var2157-to-var2669 (var2157) var2669)
(declare-const null-var1589 var1589)
(declare-const var874 var1589) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var874 null-var1589)))
(define-const var237 (Array Int String) (columns/2096745176 var874)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns> 
(define-const var1718 Int (getLength-Arr-String-1 var237)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if $i0 == 1 goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns> 
(assert (not (= var1718 1))) ; Negate: Cond: $i0 == 1  
(define-const var3295 var2157 var2157-init) ; Statement: $r11 = new org.hibernate.QueryException 
(define-const var1655 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1655)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1655!1 String)
(assert (= var1655!1 ""))
(assert true)
(define-const var1580 String (append/672562846 var1655!1 "path expression ends in a composite value: ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("path expression ends in a composite value: ") 
(declare-const var1655!2 String)
(assert (= var1655!2 (str.++ var1655!1 "path expression ends in a composite value: ")))
(define-const var640 String (path/2096745176 var874)) ; Statement: $r6 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path> 
(assert true)
(define-const var3476 String (append/-1031950772 var1580 (cast-from-String-to-var409 var640))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1580!1 String)
(assert (str.prefixof var1580 var1580!1))
(assert true)
(define-const var83 String (toString/-2075883882 var3476)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3295 var83)) ; Statement: specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9) 

(declare-const var3295!1 var2157)
(declare-const var83!1 String)
(define-const var978 var2669 (cast-from-var2157-to-var2669 var3295!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {columns/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2157-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var409=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2157-to-var2669=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1589=org.hibernate.hql.internal.classic.PathExpressionParser, var874=r0, var237=$r1, var1718=$i0, var2157=org.hibernate.QueryException, var3295=$r11, var1655=$r10, var1580=$r7, var640=$r6, var409=java.lang.Object, var3476=$r8, var83=$r9, var2669=java.lang.Throwable, var978=$r12}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var1589, r0=var874, $r1=var237, $i0=var1718, org.hibernate.QueryException=var2157, $r11=var3295, $r10=var1655, $r7=var1580, $r6=var640, java.lang.Object=var409, $r8=var3476, $r9=var83, java.lang.Throwable=var2669, $r12=var978}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	$r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns>;	$i0 = lengthof $r1;	if $i0 == 1 goto $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String[] columns>;	$r11 = new org.hibernate.QueryException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("path expression ends in a composite value: ");	$r6 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.QueryException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2