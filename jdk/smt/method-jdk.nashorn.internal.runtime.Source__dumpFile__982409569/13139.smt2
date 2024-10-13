(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3421 0)
(declare-sort var2104 0)
(declare-sort var3042 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getURL/1634998554 (var3421) var3042)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var184_now/1189963953 () var184)
(declare-fun toString/216711633 (var184) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/-243293101 (var3421) String)
(declare-fun var2104-init () var2104)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var2104 var2104 String) void)
(declare-const null-var3421 var3421)
(declare-const null-var2104 var2104)
(declare-const null-var3042 var3042)
(declare-const var3835 var3421) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var3835 null-var3421)))
(declare-const var1955 var2104) ; Statement: r7 := @parameter0: java.io.File 
(assert (not (= var1955 null-var2104)))
(assert true)
(define-const var3436 var3042 (getURL/1634998554 var3835)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.net.URL getURL()>() 
(define-const var1332 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1332)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1332!1 String)
(assert (= var1332!1 ""))
(define-const var2362 var184 var184_now/1189963953) ; Statement: $r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>() 
(assert true)
(define-const var3113 String (toString/216711633 var2362)) ; Statement: $r4 = virtualinvoke $r3.<java.time.LocalDateTime: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1332!1 var3113)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1332!2 String)
(assert (= var1332!2 (str.++ var1332!1 var3113)))
(assert true)
;(assert (append/-1166366385 var1332!2 95)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var1332!3 String)
(assert (str.prefixof var1332!2 var1332!3))
 ; Statement: if r1 == null goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert (= var3436 null-var3042)) ; Cond: r1 == null 
(assert true)
(define-const var2649 String (getName/-243293101 var3835)) ; Statement: $r5 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1332!3 var2649)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1332!4 String)
(assert (= var1332!4 (str.++ var1332!3 var2649)))
(assert true) ; Non Conditional
(define-const var3881 var2104 var2104-init) ; Statement: $r6 = new java.io.File 
(assert true)
(define-const var1145 String (toString/-2075883882 var1332!4)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3881 var1955 var1145)) ; Statement: specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>(r7, $r8) 

(declare-const var3881!1 var2104)
(declare-const var1955!1 var2104)
(declare-const var1145!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getURL/1634998554=([jdk.nashorn.internal.runtime.Source], java.net.URL), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var184_now/1189963953=([], java.time.LocalDateTime), toString/216711633=([java.time.LocalDateTime], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/-243293101=([jdk.nashorn.internal.runtime.Source], java.lang.String), var2104-init=([], java.io.File), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var3421=jdk.nashorn.internal.runtime.Source, var3835=r0, var2104=java.io.File, var1955=r7, var3042=java.net.URL, var3436=r1, var1332=$r2, var184=java.time.LocalDateTime, var2362=$r3, var3113=$r4, var2649=$r5, var3881=$r6, var1145=$r8}
; {jdk.nashorn.internal.runtime.Source=var3421, r0=var3835, java.io.File=var2104, r7=var1955, java.net.URL=var3042, r1=var3436, $r2=var1332, java.time.LocalDateTime=var184, $r3=var2362, $r4=var3113, $r5=var2649, $r6=var3881, $r8=var1145}
;seq <java.lang.StringBuilder: void <init>()>;	<java.time.LocalDateTime: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.Source;	r7 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.net.URL getURL()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime now()>();	$r4 = virtualinvoke $r3.<java.time.LocalDateTime: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	if r1 == null goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	$r5 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = new java.io.File;	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.io.File: void <init>(java.io.File,java.lang.String)>(r7, $r8);	return $r6
;block_num 3