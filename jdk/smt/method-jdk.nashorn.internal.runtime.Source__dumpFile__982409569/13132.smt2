(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3090 0)
(declare-sort var2454 0)
(declare-sort var3064 0)
(declare-sort var1730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getURL/1634998554 (var3090) var3064)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1730_now/1189963953 () var1730)
(declare-fun toString/216711633 (var1730) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString/-1839352374 (var3064) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var2454-init () var2454)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2454 var2454 String) void)
(declare-const null-var3090 var3090)
(declare-const null-var2454 var2454)
(declare-const null-var3064 var3064)
(declare-const var2606 var3090) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var2606 null-var3090)))
(declare-const var2827 var2454) ; Statement: r7 := @parameter0: java.io.File 
(assert (not (= var2827 null-var2454)))
(assert true)
(define-const var1253 var3064 (getURL/1634998554 var2606)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.net.URL getURL()>() 
(define-const var3528 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3528)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3528!1 String)
(assert (= var3528!1 ""))
(define-const var1711 var1730 var1730_now/1189963953) ; Statement: $r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>() 
(assert true)
(define-const var484 String (toString/216711633 var1711)) ; Statement: $r4 = virtualinvoke $r3.<java.time.LocalDateTime: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3528!1 var484)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3528!2 String)
(assert (= var3528!2 (str.++ var3528!1 var484)))
(assert true)
;(assert (append/-1166366385 var3528!2 95)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var3528!3 String)
(assert (str.prefixof var3528!2 var3528!3))
 ; Statement: if r1 == null goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert (not (= var1253 null-var3064))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var3156 String (toString/-1839352374 var1253)) ; Statement: $r9 = virtualinvoke r1.<java.net.URL: java.lang.String toString()>() 
(assert true)
(define-const var972 String (replace/1524665721 var3156 47 95)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(47, 95) 
(assert true)
(define-const var3862 String (replace/1524665721 var972 92 95)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.String: java.lang.String replace(char,char)>(92, 95) 
(assert true)
;(assert (append/672562846 var3528!3 var3862)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3528!4 String)
(assert (= var3528!4 (str.++ var3528!3 var3862)))
 ; Statement: goto [?= $r6 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var364 var2454 var2454-init) ; Statement: $r6 = new java.io.File 
(assert true)
(define-const var3267 String (toString/-2075883882 var3528!4)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var364 var2827 var3267)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>(r7, $r8) 

(declare-const var364!1 var2454)
(declare-const var2827!1 var2454)
(declare-const var3267!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getURL/1634998554=([jdk.nashorn.internal.runtime.Source], java.net.URL), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1730_now/1189963953=([], java.time.LocalDateTime), toString/216711633=([java.time.LocalDateTime], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-1839352374=([java.net.URL], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), var2454-init=([], java.io.File), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var3090=jdk.nashorn.internal.runtime.Source, var2606=r0, var2454=java.io.File, var2827=r7, var3064=java.net.URL, var1253=r1, var3528=$r2, var1730=java.time.LocalDateTime, var1711=$r3, var484=$r4, var3156=$r9, var972=$r10, var3862=$r11, var364=$r6, var3267=$r8}
; {jdk.nashorn.internal.runtime.Source=var3090, r0=var2606, java.io.File=var2454, r7=var2827, java.net.URL=var3064, r1=var1253, $r2=var3528, java.time.LocalDateTime=var1730, $r3=var1711, $r4=var484, $r9=var3156, $r10=var972, $r11=var3862, $r6=var364, $r8=var3267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.time.LocalDateTime: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.net.URL: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.Source;	r7 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.net.URL getURL()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>();	$r4 = virtualinvoke $r3.<java.time.LocalDateTime: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	if r1 == null goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	$r9 = virtualinvoke r1.<java.net.URL: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(47, 95);	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String replace(char,char)>(92, 95);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	goto [?= $r6 = new java.io.File];	$r6 = new java.io.File;	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>(r7, $r8);	return $r6
;block_num 3