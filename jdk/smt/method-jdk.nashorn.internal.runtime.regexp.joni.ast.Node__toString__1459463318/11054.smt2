(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3363 0)
(declare-sort var1527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAddressName/981013177 (var3363) String)
(declare-fun parent/-1228377994 (var3363) var3363)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var1527) String)
(declare-fun cast-from-String-to-var1527 (String) var1527)
(declare-fun toString/978417251 (var3363 Int) String)
(declare-const null-var3363 var3363)
(declare-const var3304 var3363) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.Node 
(assert (not (= var3304 null-var3363)))
(define-const var1196 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1196)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1196!1 String)
(assert (= var1196!1 ""))
(define-const var587 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var587)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var587!1 String)
(assert (= var587!1 ""))
(assert true)
(define-const var3813 String (append/672562846 var587!1 "<")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var587!2 String)
(assert (= var587!2 (str.++ var587!1 "<")))
(assert true)
(define-const var488 String (getAddressName/981013177 var3304)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getAddressName()>() 
(assert true)
(define-const var1593 String (append/672562846 var3813 var488)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3813!1 String)
(assert (= var3813!1 (str.++ var3813 var488)))
(assert true)
(define-const var738 String (append/672562846 var1593 " (")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1593!1 String)
(assert (= var1593!1 (str.++ var1593 " (")))
(define-const var2713 var3363 (parent/-1228377994 var3304)) ; Statement: $r6 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent> 
 ; Statement: if $r6 != null goto $r7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent> 
(assert (not (= var2713 null-var3363))) ; Cond: $r6 != null 
(define-const var394 var3363 (parent/-1228377994 var3304)) ; Statement: $r7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent> 
(assert true)
(define-const var3881 String (getAddressName/981013177 var394)) ; Statement: $r17 = virtualinvoke $r7.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getAddressName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1849 String (append/672562846 var738 var3881)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var738!1 String)
(assert (= var738!1 (str.++ var738 var3881)))
(assert true)
(define-const var1478 String (append/672562846 var1849 ")>")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")>") 
(declare-const var1849!1 String)
(assert (= var1849!1 (str.++ var1849 ")>")))
(assert true)
(define-const var2607 String (toString/-2075883882 var1478)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1196!1 var2607)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1196!2 String)
(assert (= var1196!2 (str.++ var1196!1 var2607)))
(define-const var1917 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1917)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1917!1 String)
(assert (= var1917!1 ""))
(assert true)
(define-const var2401 String (append/-1031950772 var1917!1 (cast-from-String-to-var1527 var1196!2))) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var1917!2 String)
(assert (str.prefixof var1917!1 var1917!2))
(assert true)
(define-const var202 String (toString/978417251 var3304 0)) ; Statement: $r13 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String toString(int)>(0) 
(assert true)
(define-const var3466 String (append/672562846 var2401 var202)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2401!1 String)
(assert (= var2401!1 (str.++ var2401 var202)))
(assert true)
(define-const var3017 String (toString/-2075883882 var3466)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAddressName/981013177=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], java.lang.String), parent/-1228377994=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node], jdk.nashorn.internal.runtime.regexp.joni.ast.Node), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var1527=([java.lang.StringBuilder], java.lang.Object), toString/978417251=([jdk.nashorn.internal.runtime.regexp.joni.ast.Node, int], java.lang.String)}
; {var3363=jdk.nashorn.internal.runtime.regexp.joni.ast.Node, var3304=r2, var1196=$r0, var587=$r1, var3813=$r4, var488=$r3, var1593=$r5, var738=$r8, var2713=$r6, var394=$r7, var3881=$r17, var1849=$r9, var1478=$r10, var2607=$r11, var1917=$r12, var1527=java.lang.Object, var2401=$r14, var202=$r13, var3466=$r15, var3017=$r16}
; {jdk.nashorn.internal.runtime.regexp.joni.ast.Node=var3363, r2=var3304, $r0=var1196, $r1=var587, $r4=var3813, $r3=var488, $r5=var1593, $r8=var738, $r6=var2713, $r7=var394, $r17=var3881, $r9=var1849, $r10=var1478, $r11=var2607, $r12=var1917, java.lang.Object=var1527, $r14=var2401, $r13=var202, $r15=var3466, $r16=var3017}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ast.Node;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getAddressName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r6 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent>;	if $r6 != null goto $r7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent>;	$r7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: jdk.nashorn.internal.runtime.regexp.joni.ast.Node parent>;	$r17 = virtualinvoke $r7.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String getAddressName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")>");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r13 = virtualinvoke r2.<jdk.nashorn.internal.runtime.regexp.joni.ast.Node: java.lang.String toString(int)>(0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 3