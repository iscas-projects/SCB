(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3304 0)
(declare-sort var1002 0)
(declare-sort var125 0)
(declare-sort var1186 0)
(declare-sort var1554 0)
(declare-sort var692 0)
(declare-sort var2984 0)
(declare-sort var869 0)
(declare-sort var1818 0)
(declare-sort var690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1186_checkNotNullParameter/-2060636419 (var1554 String) void)
(declare-fun cast-from-var1002-to-var1554 (var1002) var1554)
(declare-fun cast-from-String-to-var1554 (String) var1554)
(declare-fun var692-init () var692)
(declare-fun cast-from-var1002-to-var2984 (var1002) var2984)
(declare-fun <init>/-1642545178 (var692 var2984) void)
(declare-fun cast-from-var692-to-var869 (var692) var869)
(declare-fun var1818-init () var1818)
(declare-fun <init>/-325640736 (var1818) void)
(declare-fun cast-from-var1818-to-var1002 (var1818) var1002)
(declare-fun var869_removeFirst/-982014732 (var869) var1554)
(declare-fun var1186_checkNotNullExpressionValue/47304269 (var1554 String) void)
(declare-fun var1002_add/328494887 (var1002 var1554) Bool)
(declare-fun var690-init () var690)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1554) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-619239247 (var690 String) void)
(declare-const null-var3304 var3304)
(declare-const null-var1002 var1002)
(declare-const null-String String)
(declare-const var2158 var3304) ; Statement: r15 := @this: okhttp3.internal.tls.BasicCertificateChainCleaner 
(assert (not (= var2158 null-var3304)))
(declare-const var137 var1002) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var137 null-var1002)))
(declare-const var3885 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3885 null-String)))
;(assert (var1186_checkNotNullParameter/-2060636419 (cast-from-var1002-to-var1554 var137) "chain")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "chain") 

(declare-const var137!1 var1002)
(declare-const var3156 String)
;(assert (var1186_checkNotNullParameter/-2060636419 (cast-from-String-to-var1554 var3885) "hostname")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "hostname") 

(declare-const var3885!1 String)
(declare-const var1011 String)
(define-const var1148 var692 var692-init) ; Statement: $r2 = new java.util.ArrayDeque 
(define-const var3336 var2984 (cast-from-var1002-to-var2984 var137!1)) ; Statement: $r3 = (java.util.Collection) r0 
(assert true)
;(assert (<init>/-1642545178 var1148 var3336)) ; Statement: specialinvoke $r2.<java.util.ArrayDeque: void <init>(java.util.Collection)>($r3) 

(declare-const var1148!1 var692)
(declare-const var3336!1 var2984)
(define-const var33 var869 (cast-from-var692-to-var869 var1148!1)) ; Statement: r4 = (java.util.Deque) $r2 
(define-const var2481 var1818 var1818-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2481)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2481!1 var1818)
(define-const var2404 var1002 (cast-from-var1818-to-var1002 var2481!1)) ; Statement: r6 = (java.util.List) $r5 
(define-const var1180 var1554 (var869_removeFirst/-982014732 var33)) ; Statement: $r7 = interfaceinvoke r4.<java.util.Deque: java.lang.Object removeFirst()>() 
;(assert (var1186_checkNotNullExpressionValue/47304269 var1180 "queue.removeFirst()")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "queue.removeFirst()") 

(declare-const var1180!1 var1554)
(declare-const var2740 String)
;(assert (var1002_add/328494887 var2404 var1180!1)) ; Statement: interfaceinvoke r6.<java.util.List: boolean add(java.lang.Object)>($r7) 

(declare-const var2404!1 var1002)
(declare-const var1180!2 var1554)
(define-const var990 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var222 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= 9 goto $r8 = new javax.net.ssl.SSLPeerUnverifiedException 
(assert (>= var222 9)) ; Cond: i3 >= 9 
(define-const var2111 var690 var690-init) ; Statement: $r8 = new javax.net.ssl.SSLPeerUnverifiedException 
(define-const var1713 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1713)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1713!1 String)
(assert (= var1713!1 ""))
(assert true)
(define-const var3642 String (append/672562846 var1713!1 "Certificate chain too long: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Certificate chain too long: ") 
(declare-const var1713!2 String)
(assert (= var1713!2 (str.++ var1713!1 "Certificate chain too long: ")))
(assert true)
(define-const var2897 String (append/-1031950772 var3642 (cast-from-var1002-to-var1554 var2404!1))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var3642!1 String)
(assert (str.prefixof var3642 var3642!1))
(assert true)
(define-const var3755 String (toString/-2075883882 var2897)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-619239247 var2111 var3755)) ; Statement: specialinvoke $r8.<javax.net.ssl.SSLPeerUnverifiedException: void <init>(java.lang.String)>($r12) 

(declare-const var2111!1 var690)
(declare-const var3755!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1186_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1002-to-var1554=([java.util.List], java.lang.Object), cast-from-String-to-var1554=([java.lang.String], java.lang.Object), var692-init=([], java.util.ArrayDeque), cast-from-var1002-to-var2984=([java.util.List], java.util.Collection), <init>/-1642545178=([java.util.ArrayDeque, java.util.Collection], void), cast-from-var692-to-var869=([java.util.ArrayDeque], java.util.Deque), var1818-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1818-to-var1002=([java.util.ArrayList], java.util.List), var869_removeFirst/-982014732=([java.util.Deque], java.lang.Object), var1186_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), var1002_add/328494887=([java.util.List, java.lang.Object], boolean), var690-init=([], javax.net.ssl.SSLPeerUnverifiedException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-619239247=([javax.net.ssl.SSLPeerUnverifiedException, java.lang.String], void)}
; {var3304=okhttp3.internal.tls.BasicCertificateChainCleaner, var2158=r15, var1002=java.util.List, var137=r0, var3885=r1, var125=null_type, var1186=kotlin.jvm.internal.Intrinsics, var1554=java.lang.Object, var3156="chain", var1011="hostname", var692=java.util.ArrayDeque, var1148=$r2, var2984=java.util.Collection, var3336=$r3, var869=java.util.Deque, var33=r4, var1818=java.util.ArrayList, var2481=$r5, var2404=r6, var1180=$r7, var2740="queue.removeFirst()", var990=z3, var222=i3, var690=javax.net.ssl.SSLPeerUnverifiedException, var2111=$r8, var1713=$r9, var3642=$r10, var2897=$r11, var3755=$r12}
; {okhttp3.internal.tls.BasicCertificateChainCleaner=var3304, r15=var2158, java.util.List=var1002, r0=var137, r1=var3885, null_type=var125, kotlin.jvm.internal.Intrinsics=var1186, java.lang.Object=var1554, "chain"=var3156, "hostname"=var1011, java.util.ArrayDeque=var692, $r2=var1148, java.util.Collection=var2984, $r3=var3336, java.util.Deque=var869, r4=var33, java.util.ArrayList=var1818, $r5=var2481, r6=var2404, $r7=var1180, "queue.removeFirst()"=var2740, z3=var990, i3=var222, javax.net.ssl.SSLPeerUnverifiedException=var690, $r8=var2111, $r9=var1713, $r10=var3642, $r11=var2897, $r12=var3755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: okhttp3.internal.tls.BasicCertificateChainCleaner;	r0 := @parameter0: java.util.List;	r1 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "chain");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "hostname");	$r2 = new java.util.ArrayDeque;	$r3 = (java.util.Collection) r0;	specialinvoke $r2.<java.util.ArrayDeque: void <init>(java.util.Collection)>($r3);	r4 = (java.util.Deque) $r2;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	r6 = (java.util.List) $r5;	$r7 = interfaceinvoke r4.<java.util.Deque: java.lang.Object removeFirst()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "queue.removeFirst()");	interfaceinvoke r6.<java.util.List: boolean add(java.lang.Object)>($r7);	z3 = 0;	i3 = 0;	if i3 >= 9 goto $r8 = new javax.net.ssl.SSLPeerUnverifiedException;	$r8 = new javax.net.ssl.SSLPeerUnverifiedException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Certificate chain too long: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<javax.net.ssl.SSLPeerUnverifiedException: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 3