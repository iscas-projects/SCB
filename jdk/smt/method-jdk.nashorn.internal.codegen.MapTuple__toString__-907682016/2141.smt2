(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var147 0)
(declare-sort var1184 0)
(declare-sort var2226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-1373302144 (var147) String)
(declare-fun symbol/-1373302144 (var147) var1184)
(declare-fun append/-1031950772 (String var2226) String)
(declare-fun cast-from-var1184-to-var2226 (var1184) var2226)
(declare-fun value/-1373302144 (var147) var2226)
(declare-fun getClass/1258963082 (var2226) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var147 var147)
(declare-const null-var2226 var2226)
(declare-const var2695 var147) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.MapTuple 
(assert (not (= var2695 null-var147)))
(define-const var177 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var177)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var177!1 String)
(assert (= var177!1 ""))
(assert true)
(define-const var1253 String (append/672562846 var177!1 "[key=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[key=") 
(declare-const var177!2 String)
(assert (= var177!2 (str.++ var177!1 "[key=")))
(define-const var750 String (key/-1373302144 var2695)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.String key> 
(assert true)
(define-const var828 String (append/672562846 var1253 var750)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1253!1 String)
(assert (= var1253!1 (str.++ var1253 var750)))
(assert true)
(define-const var1194 String (append/672562846 var828 ", symbol=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", symbol=") 
(declare-const var828!1 String)
(assert (= var828!1 (str.++ var828 ", symbol=")))
(define-const var2676 var1184 (symbol/-1373302144 var2695)) ; Statement: $r5 = r1.<jdk.nashorn.internal.codegen.MapTuple: jdk.nashorn.internal.ir.Symbol symbol> 
(assert true)
(define-const var1183 String (append/-1031950772 var1194 (cast-from-var1184-to-var2226 var2676))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1194!1 String)
(assert (str.prefixof var1194 var1194!1))
(assert true)
(define-const var927 String (append/672562846 var1183 ", value=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=") 
(declare-const var1183!1 String)
(assert (= var1183!1 (str.++ var1183 ", value=")))
(define-const var3115 var2226 (value/-1373302144 var2695)) ; Statement: $r8 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value> 
(assert true)
(define-const var2556 String (append/-1031950772 var927 var3115)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var927!1 String)
(assert (str.prefixof var927 var927!1))
(assert true)
(define-const var607 String (append/672562846 var2556 " (")) ; Statement: $r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2556!1 String)
(assert (= var2556!1 (str.++ var2556 " (")))
(define-const var378 var2226 (value/-1373302144 var2695)) ; Statement: $r11 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value> 
 ; Statement: if $r11 != null goto $r12 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value> 
(assert (not (= var378 null-var2226))) ; Cond: $r11 != null 
(define-const var1603 var2226 (value/-1373302144 var2695)) ; Statement: $r12 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value> 
(assert true)
(define-const var304 ClassObject (getClass/1258963082 var1603)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var922 String (getSimpleName/-390194377 var304)) ; Statement: $r18 = virtualinvoke $r13.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var707 String (append/672562846 var607 var922)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var607!1 String)
(assert (= var607!1 (str.++ var607 var922)))
(assert true)
(define-const var193 String (append/672562846 var707 ")]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var707!1 String)
(assert (= var707!1 (str.++ var707 ")]")))
(assert true)
(define-const var1235 String (toString/-2075883882 var193)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-1373302144=([jdk.nashorn.internal.codegen.MapTuple], java.lang.String), symbol/-1373302144=([jdk.nashorn.internal.codegen.MapTuple], jdk.nashorn.internal.ir.Symbol), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1184-to-var2226=([jdk.nashorn.internal.ir.Symbol], java.lang.Object), value/-1373302144=([jdk.nashorn.internal.codegen.MapTuple], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var147=jdk.nashorn.internal.codegen.MapTuple, var2695=r1, var177=$r0, var1253=$r3, var750=$r2, var828=$r4, var1194=$r6, var1184=jdk.nashorn.internal.ir.Symbol, var2676=$r5, var2226=java.lang.Object, var1183=$r7, var927=$r9, var3115=$r8, var2556=$r10, var607=$r14, var378=$r11, var1603=$r12, var304=$r13, var922=$r18, var707=$r15, var193=$r16, var1235=$r17}
; {jdk.nashorn.internal.codegen.MapTuple=var147, r1=var2695, $r0=var177, $r3=var1253, $r2=var750, $r4=var828, $r6=var1194, jdk.nashorn.internal.ir.Symbol=var1184, $r5=var2676, java.lang.Object=var2226, $r7=var1183, $r9=var927, $r8=var3115, $r10=var2556, $r14=var607, $r11=var378, $r12=var1603, $r13=var304, $r18=var922, $r15=var707, $r16=var193, $r17=var1235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.MapTuple;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[key=");	$r2 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.String key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", symbol=");	$r5 = r1.<jdk.nashorn.internal.codegen.MapTuple: jdk.nashorn.internal.ir.Symbol symbol>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=");	$r8 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r11 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value>;	if $r11 != null goto $r12 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value>;	$r12 = r1.<jdk.nashorn.internal.codegen.MapTuple: java.lang.Object value>;	$r13 = virtualinvoke $r12.<java.lang.Object: java.lang.Class getClass()>();	$r18 = virtualinvoke $r13.<java.lang.Class: java.lang.String getSimpleName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 3