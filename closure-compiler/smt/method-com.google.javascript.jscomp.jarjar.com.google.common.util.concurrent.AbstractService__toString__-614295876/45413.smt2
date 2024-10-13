(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3750 0)
(declare-sort var3581 0)
(declare-sort var2353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3581) ClassObject)
(declare-fun cast-from-var3750-to-var3581 (var3750) var3581)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun state/170621255 (var3750) var2353)
(declare-fun append/-1031950772 (String var3581) String)
(declare-fun cast-from-var2353-to-var3581 (var2353) var3581)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3750 var3750)
(declare-const var2426 var3750) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService 
(assert (not (= var2426 null-var3750)))
(define-const var2092 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2092)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2092!1 String)
(assert (= var2092!1 ""))
(assert true)
(define-const var1185 ClassObject (getClass/1258963082 (cast-from-var3750-to-var3581 var2426))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var689 String (getSimpleName/-390194377 var1185)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3231 String (append/672562846 var2092!1 var689)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2092!2 String)
(assert (= var2092!2 (str.++ var2092!1 var689)))
(assert true)
(define-const var1114 String (append/672562846 var3231 " [")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3231!1 String)
(assert (= var3231!1 (str.++ var3231 " [")))
(assert true)
(define-const var3371 var2353 (state/170621255 var2426)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>() 
(assert true)
(define-const var2867 String (append/-1031950772 var1114 (cast-from-var2353-to-var3581 var3371))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1114!1 String)
(assert (str.prefixof var1114 var1114!1))
(assert true)
(define-const var897 String (append/672562846 var2867 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2867!1 String)
(assert (= var2867!1 (str.++ var2867 "]")))
(assert true)
(define-const var905 String (toString/-2075883882 var897)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3750-to-var3581=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), state/170621255=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2353-to-var3581=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3750=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService, var2426=r1, var2092=$r0, var3581=java.lang.Object, var1185=$r2, var689=$r3, var3231=$r4, var1114=$r6, var2353=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var3371=$r5, var2867=$r7, var897=$r8, var905=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService=var3750, r1=var2426, $r0=var2092, java.lang.Object=var3581, $r2=var1185, $r3=var689, $r4=var3231, $r6=var1114, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var2353, $r5=var3371, $r7=var2867, $r8=var897, $r9=var905}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1