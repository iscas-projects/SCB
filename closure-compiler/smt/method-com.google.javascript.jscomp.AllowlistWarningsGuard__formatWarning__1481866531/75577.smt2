(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var604 0)
(declare-sort var2189 0)
(declare-sort var2762 0)
(declare-sort var1329 0)
(declare-sort var1353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSourceName/21548920 (var2189) String)
(declare-fun normalizeSourceName/-810904548 (var604 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDescription/639719136 (var2189) String)
(declare-fun splitToList/739613109 (var2762 String) var1329)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1329_get/-1216255739 (var1329 Int) var1353)
(declare-fun cast-from-var1353-to-String (var1353) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var604 var604)
(declare-const null-var2189 var2189)
(declare-const null-Bool Bool)
(declare-const var604-LINE_SPLITTER var2762)
(declare-const var13 var604) ; Statement: r1 := @this: com.google.javascript.jscomp.AllowlistWarningsGuard 
(assert (not (= var13 null-var604)))
(declare-const var2939 var2189) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var2939 null-var2189)))
(declare-const var2564 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2564 null-Bool)))
(define-const var954 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var954)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var954!1 String)
(assert (= var954!1 ""))
(assert true)
(define-const var3858 String (getSourceName/21548920 var2939)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var1865 String (normalizeSourceName/-810904548 var13 var3858)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.AllowlistWarningsGuard: java.lang.String normalizeSourceName(java.lang.String)>($r3) 
(assert true)
(define-const var734 String (append/672562846 var954!1 var1865)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var954!2 String)
(assert (= var954!2 (str.++ var954!1 var1865)))
(assert true)
;(assert (append/672562846 var734 ":")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var734!1 String)
(assert (= var734!1 (str.++ var734 ":")))
 ; Statement: if z0 == 0 goto $r6 = <com.google.javascript.jscomp.AllowlistWarningsGuard: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter LINE_SPLITTER> 
(assert (= (ite var2564 1 0) 0)) ; Cond: z0 == 0 
(define-const var3183 var2762 var604-LINE_SPLITTER) ; Statement: $r6 = <com.google.javascript.jscomp.AllowlistWarningsGuard: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter LINE_SPLITTER> 
(assert true)
(define-const var296 String (getDescription/639719136 var2939)) ; Statement: $r7 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var1138 var1329 (splitToList/739613109 var3183 (cast-from-String-to-String var296))) ; Statement: $r15 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>($r7) 
(assert true)
(define-const var1822 String (append/672562846 var954!2 "  ")) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var954!3 String)
(assert (= var954!3 (str.++ var954!2 "  ")))
(define-const var1342 var1353 (var1329_get/-1216255739 var1138 0)) ; Statement: $r8 = interfaceinvoke $r15.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1620 String (cast-from-var1353-to-String var1342)) ; Statement: $r9 = (java.lang.String) $r8 
(assert true)
;(assert (append/672562846 var1822 var1620)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1822!1 String)
(assert (= var1822!1 (str.++ var1822 var1620)))
 ; Statement: if z0 == 0 goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2564 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var657 String (toString/-2075883882 var954!3)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), normalizeSourceName/-810904548=([com.google.javascript.jscomp.AllowlistWarningsGuard, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), splitToList/739613109=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1329_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1353-to-String=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var604=com.google.javascript.jscomp.AllowlistWarningsGuard, var13=r1, var2189=com.google.javascript.jscomp.JSError, var2939=r2, var2564=z0, var954=$r0, var3858=$r3, var1865=$r4, var734=$r5, var2762=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var3183=$r6, var296=$r7, var1329=java.util.List, var1138=$r15, var1822=$r10, var1353=java.lang.Object, var1342=$r8, var1620=$r9, var657=$r11}
; {com.google.javascript.jscomp.AllowlistWarningsGuard=var604, r1=var13, com.google.javascript.jscomp.JSError=var2189, r2=var2939, z0=var2564, $r0=var954, $r3=var3858, $r4=var1865, $r5=var734, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var2762, $r6=var3183, $r7=var296, java.util.List=var1329, $r15=var1138, $r10=var1822, java.lang.Object=var1353, $r8=var1342, $r9=var1620, $r11=var657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.AllowlistWarningsGuard;	r2 := @parameter0: com.google.javascript.jscomp.JSError;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.AllowlistWarningsGuard: java.lang.String normalizeSourceName(java.lang.String)>($r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	if z0 == 0 goto $r6 = <com.google.javascript.jscomp.AllowlistWarningsGuard: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter LINE_SPLITTER>;	$r6 = <com.google.javascript.jscomp.AllowlistWarningsGuard: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter LINE_SPLITTER>;	$r7 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r15 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>($r7);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r8 = interfaceinvoke $r15.<java.util.List: java.lang.Object get(int)>(0);	$r9 = (java.lang.String) $r8;	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z0 == 0 goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3