(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2509 0)
(declare-sort var1521 0)
(declare-sort var2873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var1521) String)
(declare-fun cast-from-var2509-to-var1521 (var2509) var1521)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun delegate/449706288 (var2509) var2873)
(declare-fun append/-1031950772 (String var1521) String)
(declare-fun cast-from-var2873-to-var1521 (var2873) var1521)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2509 var2509)
(declare-const var3465 var2509) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator 
(assert (not (= var3465 null-var2509)))
(define-const var1894 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1894)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1894!1 String)
(assert (= var1894!1 ""))
(assert true)
(define-const var1563 String (toString/-522406933 (cast-from-var2509-to-var1521 var3465))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1630 String (append/672562846 var1894!1 var1563)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1894!2 String)
(assert (= var1894!2 (str.++ var1894!1 var1563)))
(assert true)
(define-const var1541 String (append/672562846 var1630 "[")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1630!1 String)
(assert (= var1630!1 (str.++ var1630 "[")))
(define-const var2241 var2873 (delegate/449706288 var3465)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator: java.util.concurrent.ExecutorService delegate> 
(assert true)
(define-const var1816 String (append/-1031950772 var1541 (cast-from-var2873-to-var1521 var2241))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1541!1 String)
(assert (str.prefixof var1541 var1541!1))
(assert true)
(define-const var1662 String (append/672562846 var1816 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1816!1 String)
(assert (= var1816!1 (str.++ var1816 "]")))
(assert true)
(define-const var3029 String (toString/-2075883882 var1662)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2509-to-var1521=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), delegate/449706288=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator], java.util.concurrent.ExecutorService), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2873-to-var1521=([java.util.concurrent.ExecutorService], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2509=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator, var3465=r1, var1894=$r0, var1521=java.lang.Object, var1563=$r2, var1630=$r3, var1541=$r5, var2873=java.util.concurrent.ExecutorService, var2241=$r4, var1816=$r6, var1662=$r7, var3029=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator=var2509, r1=var3465, $r0=var1894, java.lang.Object=var1521, $r2=var1563, $r3=var1630, $r5=var1541, java.util.concurrent.ExecutorService=var2873, $r4=var2241, $r6=var1816, $r7=var1662, $r8=var3029}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.MoreExecutors$ListeningDecorator: java.util.concurrent.ExecutorService delegate>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1