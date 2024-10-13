(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1178 0)
(declare-sort var3937 0)
(declare-sort var2168 0)
(declare-sort var3790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2168-init () var2168)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3790) String)
(declare-fun cast-from-var3937-to-var3790 (var3937) var3790)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2168 String) void)
(declare-const null-var1178 var1178)
(declare-const null-var3937 var3937)
(declare-const var1152 var1178) ; Statement: r6 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase 
(assert (not (= var1152 null-var1178)))
(declare-const var1401 var3937) ; Statement: r2 := @parameter0: antlr.collections.AST 
(assert (not (= var1401 null-var3937)))
(define-const var2052 var2168 var2168-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1336 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1336)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1336!1 String)
(assert (= var1336!1 ""))
(assert true)
(define-const var200 String (append/672562846 var1336!1 "Unsupported node: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported node: ") 
(declare-const var1336!2 String)
(assert (= var1336!2 (str.++ var1336!1 "Unsupported node: ")))
(assert true)
(define-const var2532 String (append/-1031950772 var200 (cast-from-var3937-to-var3790 var1401))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var200!1 String)
(assert (str.prefixof var200 var200!1))
(assert true)
(define-const var1432 String (toString/-2075883882 var2532)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2052 var1432)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5) 

(declare-const var2052!1 var2168)
(declare-const var1432!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2168-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3937-to-var3790=([antlr.collections.AST], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1178=org.hibernate.hql.internal.antlr.SqlGeneratorBase, var1152=r6, var3937=antlr.collections.AST, var1401=r2, var2168=java.lang.UnsupportedOperationException, var2052=$r0, var1336=$r1, var200=$r3, var3790=java.lang.Object, var2532=$r4, var1432=$r5}
; {org.hibernate.hql.internal.antlr.SqlGeneratorBase=var1178, r6=var1152, antlr.collections.AST=var3937, r2=var1401, java.lang.UnsupportedOperationException=var2168, $r0=var2052, $r1=var1336, $r3=var200, java.lang.Object=var3790, $r4=var2532, $r5=var1432}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.hql.internal.antlr.SqlGeneratorBase;	r2 := @parameter0: antlr.collections.AST;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported node: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1