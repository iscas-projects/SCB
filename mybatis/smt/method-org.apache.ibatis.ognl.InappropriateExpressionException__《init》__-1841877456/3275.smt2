(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3802 0)
(declare-sort var3320 0)
(declare-sort var3452 0)
(declare-sort var3420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3452) String)
(declare-fun cast-from-var3320-to-var3452 (var3320) var3452)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var3420 String) void)
(declare-fun cast-from-var3802-to-var3420 (var3802) var3420)
(declare-const null-var3802 var3802)
(declare-const null-var3320 var3320)
(declare-const var899 var3802) ; Statement: r0 := @this: org.apache.ibatis.ognl.InappropriateExpressionException 
(assert (not (= var899 null-var3802)))
(declare-const var560 var3320) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.Node 
(assert (not (= var560 null-var3320)))
(define-const var2357 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2357)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2357!1 String)
(assert (= var2357!1 ""))
(assert true)
(define-const var764 String (append/672562846 var2357!1 "Inappropriate OGNL expression: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Inappropriate OGNL expression: ") 
(declare-const var2357!2 String)
(assert (= var2357!2 (str.++ var2357!1 "Inappropriate OGNL expression: ")))
(assert true)
(define-const var3799 String (append/-1031950772 var764 (cast-from-var3320-to-var3452 var560))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var764!1 String)
(assert (str.prefixof var764 var764!1))
(assert true)
(define-const var1923 String (toString/-2075883882 var3799)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 (cast-from-var3802-to-var3420 var899) var1923)) ; Statement: specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r5) 

(declare-const var899!1 var3802)
(declare-const var1923!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3320-to-var3452=([org.apache.ibatis.ognl.Node], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void), cast-from-var3802-to-var3420=([org.apache.ibatis.ognl.InappropriateExpressionException], org.apache.ibatis.ognl.OgnlException)}
; {var3802=org.apache.ibatis.ognl.InappropriateExpressionException, var899=r0, var3320=org.apache.ibatis.ognl.Node, var560=r2, var2357=$r1, var764=$r3, var3452=java.lang.Object, var3799=$r4, var1923=$r5, var3420=org.apache.ibatis.ognl.OgnlException}
; {org.apache.ibatis.ognl.InappropriateExpressionException=var3802, r0=var899, org.apache.ibatis.ognl.Node=var3320, r2=var560, $r1=var2357, $r3=var764, java.lang.Object=var3452, $r4=var3799, $r5=var1923, org.apache.ibatis.ognl.OgnlException=var3420}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.InappropriateExpressionException;	r2 := @parameter0: org.apache.ibatis.ognl.Node;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Inappropriate OGNL expression: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r5);	return
;block_num 1