(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3313 0)
(declare-sort var414 0)
(declare-sort var3079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$from/-798848852 (var3313) var414)
(declare-fun append/-1031950772 (String var3079) String)
(declare-fun cast-from-var414-to-var3079 (var414) var3079)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3313 var3313)
(declare-const var2055 var3313) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$4 
(assert (not (= var2055 null-var3313)))
(define-const var1837 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1837)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1837!1 String)
(assert (= var1837!1 ""))
(assert true)
(define-const var524 String (append/672562846 var1837!1 "stopping({from = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stopping({from = ") 
(declare-const var1837!2 String)
(assert (= var1837!2 (str.++ var1837!1 "stopping({from = ")))
(define-const var43 var414 (val$from/-798848852 var2055)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$4: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State val$from> 
(assert true)
(define-const var3753 String (append/-1031950772 var524 (cast-from-var414-to-var3079 var43))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var524!1 String)
(assert (str.prefixof var524 var524!1))
(assert true)
(define-const var3013 String (append/672562846 var3753 "})")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var3753!1 String)
(assert (= var3753!1 (str.++ var3753 "})")))
(assert true)
(define-const var1146 String (toString/-2075883882 var3013)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$from/-798848852=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$4], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var414-to-var3079=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3313=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$4, var2055=r1, var1837=$r0, var524=$r3, var414=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var43=$r2, var3079=java.lang.Object, var3753=$r4, var3013=$r5, var1146=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$4=var3313, r1=var2055, $r0=var1837, $r3=var524, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var414, $r2=var43, java.lang.Object=var3079, $r4=var3753, $r5=var3013, $r6=var1146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$4;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stopping({from = ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$4: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State val$from>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1