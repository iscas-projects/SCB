(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2173 0)
(declare-sort var3986 0)
(declare-sort var1926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun schema/670250589 (var2173) var3986)
(declare-fun getName/-1690903219 (var3986) String)
(declare-fun var1926_quoteIdentifier/-407364542 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/670250589 (var2173) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2173 var2173)
(declare-const var1492 var2173) ; Statement: r1 := @this: com.mysql.cj.xdevapi.CollectionImpl 
(assert (not (= var1492 null-var2173)))
(define-const var3688 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3688 "Collection(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Collection(") 
(declare-const var3688!1 String)
(assert (= var3688!1 "Collection("))
(define-const var1918 var3986 (schema/670250589 var1492)) ; Statement: $r2 = r1.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.xdevapi.SchemaImpl schema> 
(assert true)
(define-const var3754 String (getName/-1690903219 var1918)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>() 
(define-const var3913 String (var1926_quoteIdentifier/-407364542 var3754)) ; Statement: $r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r3) 
(assert true)
;(assert (append/672562846 var3688!1 var3913)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3688!2 String)
(assert (= var3688!2 (str.++ var3688!1 var3913)))
(assert true)
;(assert (append/672562846 var3688!2 ".")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3688!3 String)
(assert (= var3688!3 (str.++ var3688!2 ".")))
(define-const var1772 String (name/670250589 var1492)) ; Statement: $r5 = r1.<com.mysql.cj.xdevapi.CollectionImpl: java.lang.String name> 
(define-const var1690 String (var1926_quoteIdentifier/-407364542 var1772)) ; Statement: $r6 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r5) 
(assert true)
;(assert (append/672562846 var3688!3 var1690)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3688!4 String)
(assert (= var3688!4 (str.++ var3688!3 var1690)))
(assert true)
;(assert (append/672562846 var3688!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3688!5 String)
(assert (= var3688!5 (str.++ var3688!4 ")")))
(assert true)
(define-const var1494 String (toString/-2075883882 var3688!5)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), schema/670250589=([com.mysql.cj.xdevapi.CollectionImpl], com.mysql.cj.xdevapi.SchemaImpl), getName/-1690903219=([com.mysql.cj.xdevapi.SchemaImpl], java.lang.String), var1926_quoteIdentifier/-407364542=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/670250589=([com.mysql.cj.xdevapi.CollectionImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2173=com.mysql.cj.xdevapi.CollectionImpl, var1492=r1, var3688=$r0, var3986=com.mysql.cj.xdevapi.SchemaImpl, var1918=$r2, var3754=$r3, var1926=com.mysql.cj.xdevapi.ExprUnparser, var3913=$r4, var1772=$r5, var1690=$r6, var1494=$r7}
; {com.mysql.cj.xdevapi.CollectionImpl=var2173, r1=var1492, $r0=var3688, com.mysql.cj.xdevapi.SchemaImpl=var3986, $r2=var1918, $r3=var3754, com.mysql.cj.xdevapi.ExprUnparser=var1926, $r4=var3913, $r5=var1772, $r6=var1690, $r7=var1494}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.xdevapi.CollectionImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Collection(");	$r2 = r1.<com.mysql.cj.xdevapi.CollectionImpl: com.mysql.cj.xdevapi.SchemaImpl schema>;	$r3 = virtualinvoke $r2.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>();	$r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = r1.<com.mysql.cj.xdevapi.CollectionImpl: java.lang.String name>;	$r6 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1