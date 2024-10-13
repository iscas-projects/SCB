(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1835 0)
(declare-sort var1264 0)
(declare-sort var1765 0)
(declare-sort var112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun serializeNulls/1032430839 (var1835) Bool)
(declare-fun append/-388390247 (String Bool) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun factories/1032430839 (var1835) var1264)
(declare-fun append/-1031950772 (String var1765) String)
(declare-fun cast-from-var1264-to-var1765 (var1264) var1765)
(declare-fun constructorConstructor/1032430839 (var1835) var112)
(declare-fun cast-from-var112-to-var1765 (var112) var1765)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1835 var1835)
(declare-const var3107 var1835) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.Gson 
(assert (not (= var3107 null-var1835)))
(define-const var1228 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1228 "{serializeNulls:")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{serializeNulls:") 
(declare-const var1228!1 String)
(assert (= var1228!1 "{serializeNulls:"))
(define-const var1313 Bool (serializeNulls/1032430839 var3107)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: boolean serializeNulls> 
(assert true)
(define-const var855 String (append/-388390247 var1228!1 var1313)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var1228!2 String)
(assert (str.prefixof var1228!1 var1228!2))
(assert true)
(define-const var2184 String (append/672562846 var855 ",factories:")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",factories:") 
(declare-const var855!1 String)
(assert (= var855!1 (str.++ var855 ",factories:")))
(define-const var2899 var1264 (factories/1032430839 var3107)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.util.List factories> 
(assert true)
(define-const var2673 String (append/-1031950772 var2184 (cast-from-var1264-to-var1765 var2899))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2184!1 String)
(assert (str.prefixof var2184 var2184!1))
(assert true)
(define-const var3139 String (append/672562846 var2673 ",instanceCreators:")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",instanceCreators:") 
(declare-const var2673!1 String)
(assert (= var2673!1 (str.++ var2673 ",instanceCreators:")))
(define-const var3963 var112 (constructorConstructor/1032430839 var3107)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor constructorConstructor> 
(assert true)
(define-const var660 String (append/-1031950772 var3139 (cast-from-var112-to-var1765 var3963))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3139!1 String)
(assert (str.prefixof var3139 var3139!1))
(assert true)
(define-const var90 String (append/672562846 var660 "}")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var660!1 String)
(assert (= var660!1 (str.++ var660 "}")))
(assert true)
(define-const var401 String (toString/-2075883882 var90)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), serializeNulls/1032430839=([com.google.javascript.jscomp.jarjar.com.google.gson.Gson], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), factories/1032430839=([com.google.javascript.jscomp.jarjar.com.google.gson.Gson], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1264-to-var1765=([java.util.List], java.lang.Object), constructorConstructor/1032430839=([com.google.javascript.jscomp.jarjar.com.google.gson.Gson], com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor), cast-from-var112-to-var1765=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1835=com.google.javascript.jscomp.jarjar.com.google.gson.Gson, var3107=r1, var1228=$r0, var1313=$z0, var855=$r2, var2184=$r4, var1264=java.util.List, var2899=$r3, var1765=java.lang.Object, var2673=$r5, var3139=$r7, var112=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor, var3963=$r6, var660=$r8, var90=$r9, var401=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.gson.Gson=var1835, r1=var3107, $r0=var1228, $z0=var1313, $r2=var855, $r4=var2184, java.util.List=var1264, $r3=var2899, java.lang.Object=var1765, $r5=var2673, $r7=var3139, com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor=var112, $r6=var3963, $r8=var660, $r9=var90, $r10=var401}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.Gson;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{serializeNulls:");	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: boolean serializeNulls>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",factories:");	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.util.List factories>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",instanceCreators:");	$r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor constructorConstructor>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1