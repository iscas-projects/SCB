(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var265 0)
(declare-sort var104 0)
(declare-sort var3757 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$from/-798848851 (var265) var104)
(declare-fun append/-1031950772 (String var3757) String)
(declare-fun cast-from-var104-to-var3757 (var104) var3757)
(declare-fun val$cause/-798848851 (var265) var1783)
(declare-fun cast-from-var1783-to-var3757 (var1783) var3757)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var265 var265)
(declare-const var3966 var265) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5 
(assert (not (= var3966 null-var265)))
(define-const var3508 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3508)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3508!1 String)
(assert (= var3508!1 ""))
(assert true)
(define-const var2867 String (append/672562846 var3508!1 "failed({from = ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed({from = ") 
(declare-const var3508!2 String)
(assert (= var3508!2 (str.++ var3508!1 "failed({from = ")))
(define-const var2079 var104 (val$from/-798848851 var3966)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State val$from> 
(assert true)
(define-const var1773 String (append/-1031950772 var2867 (cast-from-var104-to-var3757 var2079))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2867!1 String)
(assert (str.prefixof var2867 var2867!1))
(assert true)
(define-const var3994 String (append/672562846 var1773 ", cause = ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cause = ") 
(declare-const var1773!1 String)
(assert (= var1773!1 (str.++ var1773 ", cause = ")))
(define-const var3237 var1783 (val$cause/-798848851 var3966)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5: java.lang.Throwable val$cause> 
(assert true)
(define-const var3295 String (append/-1031950772 var3994 (cast-from-var1783-to-var3757 var3237))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3994!1 String)
(assert (str.prefixof var3994 var3994!1))
(assert true)
(define-const var2312 String (append/672562846 var3295 "})")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var3295!1 String)
(assert (= var3295!1 (str.++ var3295 "})")))
(assert true)
(define-const var1999 String (toString/-2075883882 var2312)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$from/-798848851=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var104-to-var3757=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), val$cause/-798848851=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5], java.lang.Throwable), cast-from-var1783-to-var3757=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var265=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5, var3966=r1, var3508=$r0, var2867=$r3, var104=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var2079=$r2, var3757=java.lang.Object, var1773=$r4, var3994=$r6, var1783=java.lang.Throwable, var3237=$r5, var3295=$r7, var2312=$r8, var1999=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5=var265, r1=var3966, $r0=var3508, $r3=var2867, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var104, $r2=var2079, java.lang.Object=var3757, $r4=var1773, $r6=var3994, java.lang.Throwable=var1783, $r5=var3237, $r7=var3295, $r8=var2312, $r9=var1999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed({from = ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State val$from>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cause = ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService$5: java.lang.Throwable val$cause>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1