(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1994 0)
(declare-sort var1167 0)
(declare-sort var3797 0)
(declare-sort var760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dateFormats/1648625650 (var1994) var1167)
(declare-fun var1167_get/-1216255739 (var1167 Int) var3797)
(declare-fun cast-from-var3797-to-var760 (var3797) var760)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3797) ClassObject)
(declare-fun cast-from-var760-to-var3797 (var760) var3797)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1994 var1994)
(declare-const var3339 var1994) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter 
(assert (not (= var3339 null-var1994)))
(define-const var2110 var1167 (dateFormats/1648625650 var3339)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats> 
(define-const var2423 var3797 (var1167_get/-1216255739 var2110 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2238 var760 (cast-from-var3797-to-var760 var2423)) ; Statement: r3 = (java.text.DateFormat) $r2 
(define-const var2443 Bool false) ; Statement: $z0 = r3 instanceof java.text.SimpleDateFormat 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (= (ite var2443 1 0) 0)) ; Cond: $z0 == 0 
(define-const var647 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var647)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var647!1 String)
(assert (= var647!1 ""))
(assert true)
(define-const var2991 String (append/672562846 var647!1 "DefaultDateTypeAdapter(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(") 
(declare-const var647!2 String)
(assert (= var647!2 (str.++ var647!1 "DefaultDateTypeAdapter(")))
(assert true)
(define-const var1355 ClassObject (getClass/1258963082 (cast-from-var760-to-var3797 var2238))) ; Statement: $r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3688 String (getSimpleName/-390194377 var1355)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1247 String (append/672562846 var2991 var3688)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2991!1 String)
(assert (= var2991!1 (str.++ var2991 var3688)))
(assert true)
(define-const var1958 String (append/-1166366385 var1247 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1247!1 String)
(assert (str.prefixof var1247 var1247!1))
(assert true)
(define-const var3891 String (toString/-2075883882 var1958)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {dateFormats/1648625650=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter], java.util.List), var1167_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3797-to-var760=([java.lang.Object], java.text.DateFormat), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var760-to-var3797=([java.text.DateFormat], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1994=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter, var3339=r0, var1167=java.util.List, var2110=$r1, var3797=java.lang.Object, var2423=$r2, var760=java.text.DateFormat, var2238=r3, var2443=$z0, var647=$r4, var2991=$r7, var1355=$r5, var3688=$r6, var1247=$r8, var1958=$r9, var3891=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter=var1994, r0=var3339, java.util.List=var1167, $r1=var2110, java.lang.Object=var3797, $r2=var2423, java.text.DateFormat=var760, r3=var2238, $z0=var2443, $r4=var647, $r7=var2991, $r5=var1355, $r6=var3688, $r8=var1247, $r9=var1958, $r10=var3891}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.text.DateFormat) $r2;	$z0 = r3 instanceof java.text.SimpleDateFormat;	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(");	$r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2