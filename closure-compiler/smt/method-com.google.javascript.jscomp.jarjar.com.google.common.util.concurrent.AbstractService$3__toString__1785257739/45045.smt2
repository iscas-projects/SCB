(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var357 0)
(declare-sort var1326 0)
(declare-sort var3102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$from/-798848853 (var357) var1326)
(declare-fun append/-1031950772 (String var3102) String)
(declare-fun cast-from-var1326-to-var3102 (var1326) var3102)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var357 var357)
(declare-const var1273 var357) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$3 
(assert (not (= var1273 null-var357)))
(define-const var115 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var115)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var115!1 String)
(assert (= var115!1 ""))
(assert true)
(define-const var3566 String (append/672562846 var115!1 "terminated({from = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("terminated({from = ") 
(declare-const var115!2 String)
(assert (= var115!2 (str.++ var115!1 "terminated({from = ")))
(define-const var580 var1326 (val$from/-798848853 var1273)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$3: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State val$from> 
(assert true)
(define-const var1652 String (append/-1031950772 var3566 (cast-from-var1326-to-var3102 var580))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3566!1 String)
(assert (str.prefixof var3566 var3566!1))
(assert true)
(define-const var3365 String (append/672562846 var1652 "})")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var1652!1 String)
(assert (= var1652!1 (str.++ var1652 "})")))
(assert true)
(define-const var2386 String (toString/-2075883882 var3365)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$from/-798848853=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$3], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1326-to-var3102=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var357=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$3, var1273=r1, var115=$r0, var3566=$r3, var1326=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var580=$r2, var3102=java.lang.Object, var1652=$r4, var3365=$r5, var2386=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$3=var357, r1=var1273, $r0=var115, $r3=var3566, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var1326, $r2=var580, java.lang.Object=var3102, $r4=var1652, $r5=var3365, $r6=var2386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$3;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("terminated({from = ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$3: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State val$from>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1