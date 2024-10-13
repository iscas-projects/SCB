(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2397 0)
(declare-sort var2681 0)
(declare-sort var3089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2681-init () var2681)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2397_getPosition/-1546248669 (var2397) Int)
(declare-fun append/-1031950772 (String var3089) String)
(declare-fun cast-from-Int-to-var3089 (Int) var3089)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2681 String) void)
(declare-const null-var2397 var2397)
(declare-const var2290 var2397) ; Statement: r2 := @parameter0: org.hibernate.query.QueryParameter 
(assert (not (= var2290 null-var2397)))
(define-const var1220 var2681 var2681-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var3115 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3115)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3115!1 String)
(assert (= var3115!1 ""))
(assert true)
(define-const var1292 String (append/672562846 var3115!1 "Parameter value not yet bound : ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter value not yet bound : ") 
(declare-const var3115!2 String)
(assert (= var3115!2 (str.++ var3115!1 "Parameter value not yet bound : ")))
(define-const var744 Int (var2397_getPosition/-1546248669 var2290)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.query.QueryParameter: java.lang.Integer getPosition()>() 
(assert true)
(define-const var1126 String (append/-1031950772 var1292 (cast-from-Int-to-var3089 var744))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1292!1 String)
(assert (str.prefixof var1292 var1292!1))
(assert true)
(define-const var1036 String (toString/-2075883882 var1126)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1220 var1036)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var1220!1 var2681)
(declare-const var1036!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2681-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2397_getPosition/-1546248669=([org.hibernate.query.QueryParameter], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var3089=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2397=org.hibernate.query.QueryParameter, var2290=r2, var2681=java.lang.IllegalStateException, var1220=$r0, var3115=$r1, var1292=$r4, var744=$r3, var3089=java.lang.Object, var1126=$r5, var1036=$r6}
; {org.hibernate.query.QueryParameter=var2397, r2=var2290, java.lang.IllegalStateException=var2681, $r0=var1220, $r1=var3115, $r4=var1292, $r3=var744, java.lang.Object=var3089, $r5=var1126, $r6=var1036}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.hibernate.query.QueryParameter;	$r0 = new java.lang.IllegalStateException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parameter value not yet bound : ");	$r3 = interfaceinvoke r2.<org.hibernate.query.QueryParameter: java.lang.Integer getPosition()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1