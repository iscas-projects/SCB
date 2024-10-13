(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var878 0)
(declare-sort var2164 0)
(declare-sort var1192 0)
(declare-sort var2933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dateFormats/-834359679 (var2365) var878)
(declare-fun var878_get/-1216255739 (var878 Int) var2164)
(declare-fun cast-from-var2164-to-var1192 (var2164) var1192)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var1192-to-var2933 (var1192) var2933)
(declare-fun toPattern/-1065589675 (var2933) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2365 var2365)
(declare-const var1357 var2365) ; Statement: r0 := @this: com.google.gson.internal.bind.DefaultDateTypeAdapter 
(assert (not (= var1357 null-var2365)))
(define-const var2581 var878 (dateFormats/-834359679 var1357)) ; Statement: $r1 = r0.<com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats> 
(define-const var3420 var2164 (var878_get/-1216255739 var2581 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2121 var1192 (cast-from-var2164-to-var1192 var3420)) ; Statement: r3 = (java.text.DateFormat) $r2 
(define-const var3872 Bool false) ; Statement: $z0 = r3 instanceof java.text.SimpleDateFormat 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (not (= (ite var3872 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var59 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var59)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var59!1 String)
(assert (= var59!1 ""))
(assert true)
(define-const var2247 String (append/672562846 var59!1 "DefaultDateTypeAdapter(")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(") 
(declare-const var59!2 String)
(assert (= var59!2 (str.++ var59!1 "DefaultDateTypeAdapter(")))
(define-const var3945 var2933 (cast-from-var1192-to-var2933 var2121)) ; Statement: $r12 = (java.text.SimpleDateFormat) r3 
(assert true)
(define-const var1531 String (toPattern/-1065589675 var3945)) ; Statement: $r13 = virtualinvoke $r12.<java.text.SimpleDateFormat: java.lang.String toPattern()>() 
(assert true)
(define-const var108 String (append/672562846 var2247 var1531)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2247!1 String)
(assert (= var2247!1 (str.++ var2247 var1531)))
(assert true)
(define-const var3140 String (append/-1166366385 var108 41)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var108!1 String)
(assert (str.prefixof var108 var108!1))
(assert true)
(define-const var49 String (toString/-2075883882 var3140)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {dateFormats/-834359679=([com.google.gson.internal.bind.DefaultDateTypeAdapter], java.util.List), var878_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2164-to-var1192=([java.lang.Object], java.text.DateFormat), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var1192-to-var2933=([java.text.DateFormat], java.text.SimpleDateFormat), toPattern/-1065589675=([java.text.SimpleDateFormat], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2365=com.google.gson.internal.bind.DefaultDateTypeAdapter, var1357=r0, var878=java.util.List, var2581=$r1, var2164=java.lang.Object, var3420=$r2, var1192=java.text.DateFormat, var2121=r3, var3872=$z0, var59=$r11, var2247=$r14, var2933=java.text.SimpleDateFormat, var3945=$r12, var1531=$r13, var108=$r15, var3140=$r16, var49=$r17}
; {com.google.gson.internal.bind.DefaultDateTypeAdapter=var2365, r0=var1357, java.util.List=var878, $r1=var2581, java.lang.Object=var2164, $r2=var3420, java.text.DateFormat=var1192, r3=var2121, $z0=var3872, $r11=var59, $r14=var2247, java.text.SimpleDateFormat=var2933, $r12=var3945, $r13=var1531, $r15=var108, $r16=var3140, $r17=var49}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.DefaultDateTypeAdapter;	$r1 = r0.<com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.text.DateFormat) $r2;	$z0 = r3 instanceof java.text.SimpleDateFormat;	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(");	$r12 = (java.text.SimpleDateFormat) r3;	$r13 = virtualinvoke $r12.<java.text.SimpleDateFormat: java.lang.String toPattern()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2