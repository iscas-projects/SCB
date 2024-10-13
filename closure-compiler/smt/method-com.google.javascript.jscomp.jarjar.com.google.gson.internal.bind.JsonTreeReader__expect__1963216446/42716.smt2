(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2789 0)
(declare-sort var1336 0)
(declare-sort var328 0)
(declare-sort var1764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var2789) var1336)
(declare-fun var328-init () var328)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1764) String)
(declare-fun cast-from-var1336-to-var1764 (var1336) var1764)
(declare-fun locationString/-42154701 (var2789) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var328 String) void)
(declare-const null-var2789 var2789)
(declare-const null-var1336 var1336)
(declare-const var910 var2789) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var910 null-var2789)))
(declare-const var1433 var1336) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken 
(assert (not (= var1433 null-var1336)))
(assert true)
(define-const var1489 var1336 (peek/1179433192 var910)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
 ; Statement: if $r2 == r1 goto return 
(assert (not (= var1489 var1433))) ; Negate: Cond: $r2 == r1  
(define-const var1268 var328 var328-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var73 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var73)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var73!1 String)
(assert (= var73!1 ""))
(assert true)
(define-const var2302 String (append/672562846 var73!1 "Expected ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ") 
(declare-const var73!2 String)
(assert (= var73!2 (str.++ var73!1 "Expected ")))
(assert true)
(define-const var1756 String (append/-1031950772 var2302 (cast-from-var1336-to-var1764 var1433))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2302!1 String)
(assert (str.prefixof var2302 var2302!1))
(assert true)
(define-const var958 String (append/672562846 var1756 " but was ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ") 
(declare-const var1756!1 String)
(assert (= var1756!1 (str.++ var1756 " but was ")))
(assert true)
(define-const var2693 var1336 (peek/1179433192 var910)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(assert true)
(define-const var2943 String (append/-1031950772 var958 (cast-from-var1336-to-var1764 var2693))) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var958!1 String)
(assert (str.prefixof var958 var958!1))
(assert true)
(define-const var3486 String (locationString/-42154701 var910)) ; Statement: $r9 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var1821 String (append/672562846 var2943 var3486)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2943!1 String)
(assert (= var2943!1 (str.++ var2943 var3486)))
(assert true)
(define-const var1427 String (toString/-2075883882 var1821)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1268 var1427)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var1268!1 var328)
(declare-const var1427!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), var328-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1336-to-var1764=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), locationString/-42154701=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2789=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var910=r0, var1336=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var1433=r1, var1489=$r2, var328=java.lang.IllegalStateException, var1268=$r3, var73=$r4, var2302=$r5, var1764=java.lang.Object, var1756=$r6, var958=$r8, var2693=$r7, var2943=$r10, var3486=$r9, var1821=$r11, var1427=$r12}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var2789, r0=var910, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var1336, r1=var1433, $r2=var1489, java.lang.IllegalStateException=var328, $r3=var1268, $r4=var73, $r5=var2302, java.lang.Object=var1764, $r6=var1756, $r8=var958, $r7=var2693, $r10=var2943, $r9=var3486, $r11=var1821, $r12=var1427}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	if $r2 == r1 goto return;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was ");	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r9 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r3
;block_num 2