(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2601 0)
(declare-sort var2029 0)
(declare-sort var330 0)
(declare-sort var632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/791961573 (var330 var2029) var2029)
(declare-fun cast-from-var2601-to-var330 (var2601) var330)
(declare-fun var632-init () var632)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-827419029 (var2601) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2029) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var632 String) void)
(declare-const null-var2601 var2601)
(declare-const null-var2029 var2029)
(declare-const var671 var2601) ; Statement: r0 := @this: org.apache.ibatis.session.Configuration$StrictMap 
(assert (not (= var671 null-var2601)))
(declare-const var3410 var2029) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3410 null-var2029)))
(assert true)
(define-const var2996 var2029 (get/791961573 (cast-from-var2601-to-var330 var671) var3410)) ; Statement: r2 = specialinvoke r0.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if r2 != null goto $z0 = r2 instanceof org.apache.ibatis.session.Configuration$StrictMap$Ambiguity 
(assert (not (not (= var2996 null-var2029)))) ; Negate: Cond: r2 != null  
(define-const var2152 var632 var632-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var1929 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
(define-const var2100 String (name/-827419029 var671)) ; Statement: $r15 = r0.<org.apache.ibatis.session.Configuration$StrictMap: java.lang.String name> 
(assert true)
(define-const var1130 String (append/672562846 var1929!1 var2100)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1929!2 String)
(assert (= var1929!2 (str.++ var1929!1 var2100)))
(assert true)
(define-const var3405 String (append/672562846 var1130 " does not contain value for ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not contain value for ") 
(declare-const var1130!1 String)
(assert (= var1130!1 (str.++ var1130 " does not contain value for ")))
(assert true)
(define-const var158 String (append/-1031950772 var3405 var3410)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3405!1 String)
(assert (str.prefixof var3405 var3405!1))
(assert true)
(define-const var914 String (toString/-2075883882 var158)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2152 var914)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var2152!1 var632)
(declare-const var914!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {get/791961573=([java.util.concurrent.ConcurrentHashMap, java.lang.Object], java.lang.Object), cast-from-var2601-to-var330=([org.apache.ibatis.session.Configuration$StrictMap], java.util.concurrent.ConcurrentHashMap), var632-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-827419029=([org.apache.ibatis.session.Configuration$StrictMap], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2601=org.apache.ibatis.session.Configuration$StrictMap, var671=r0, var2029=java.lang.Object, var3410=r1, var330=java.util.concurrent.ConcurrentHashMap, var2996=r2, var632=java.lang.IllegalArgumentException, var2152=$r13, var1929=$r14, var2100=$r15, var1130=$r16, var3405=$r17, var158=$r18, var914=$r19}
; {org.apache.ibatis.session.Configuration$StrictMap=var2601, r0=var671, java.lang.Object=var2029, r1=var3410, java.util.concurrent.ConcurrentHashMap=var330, r2=var2996, java.lang.IllegalArgumentException=var632, $r13=var2152, $r14=var1929, $r15=var2100, $r16=var1130, $r17=var3405, $r18=var158, $r19=var914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.session.Configuration$StrictMap;	r1 := @parameter0: java.lang.Object;	r2 = specialinvoke r0.<java.util.concurrent.ConcurrentHashMap: java.lang.Object get(java.lang.Object)>(r1);	if r2 != null goto $z0 = r2 instanceof org.apache.ibatis.session.Configuration$StrictMap$Ambiguity;	$r13 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.apache.ibatis.session.Configuration$StrictMap: java.lang.String name>;	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not contain value for ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r13
;block_num 2