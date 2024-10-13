(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var143 0)
(declare-sort var1090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1372228320 (var143) var1090)
(declare-fun append/-1031950772 (String var1090) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var143 var143)
(declare-const var854 var143) ; Statement: r1 := @this: org.hibernate.criterion.IdentifierEqExpression 
(assert (not (= var854 null-var143)))
(define-const var697 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var697)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var697!1 String)
(assert (= var697!1 ""))
(assert true)
(define-const var2756 String (append/672562846 var697!1 "id = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id = ") 
(declare-const var697!2 String)
(assert (= var697!2 (str.++ var697!1 "id = ")))
(define-const var3216 var1090 (value/-1372228320 var854)) ; Statement: $r2 = r1.<org.hibernate.criterion.IdentifierEqExpression: java.lang.Object value> 
(assert true)
(define-const var1928 String (append/-1031950772 var2756 var3216)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2756!1 String)
(assert (str.prefixof var2756 var2756!1))
(assert true)
(define-const var3078 String (toString/-2075883882 var1928)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1372228320=([org.hibernate.criterion.IdentifierEqExpression], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var143=org.hibernate.criterion.IdentifierEqExpression, var854=r1, var697=$r0, var2756=$r3, var1090=java.lang.Object, var3216=$r2, var1928=$r4, var3078=$r5}
; {org.hibernate.criterion.IdentifierEqExpression=var143, r1=var854, $r0=var697, $r3=var2756, java.lang.Object=var1090, $r2=var3216, $r4=var1928, $r5=var3078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.IdentifierEqExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id = ");	$r2 = r1.<org.hibernate.criterion.IdentifierEqExpression: java.lang.Object value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1