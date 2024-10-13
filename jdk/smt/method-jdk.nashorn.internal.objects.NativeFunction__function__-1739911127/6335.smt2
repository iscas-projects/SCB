(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1521 0)
(declare-sort var2766 0)
(declare-sort var1755 0)
(declare-sort var2449 0)
(declare-sort var452 0)
(declare-sort var1925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var1521-1 ((Array Int var1521)) Int)
(declare-fun var1755_instance/-1028431714 () var1755)
(declare-fun getContext/2090148484 (var1755) var2449)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun eval/-1519185906 (var2449 var452 String var1521 var1521) var1521)
(declare-fun cast-from-var1755-to-var452 (var1755) var452)
(declare-fun cast-from-var1755-to-var1521 (var1755) var1521)
(declare-fun cast-from-String-to-var1521 (String) var1521)
(declare-fun cast-from-var1521-to-var1925 (var1521) var1925)
(declare-const null-Bool Bool)
(declare-const null-var1521 var1521)
(declare-const null-__Array__Int__var1521__ (Array Int var1521))
(declare-const null-String String)
(declare-const var2775 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var2775 null-Bool)))
(declare-const var3585 var1521) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var3585 null-var1521)))
(declare-const var2319 (Array Int var1521)) ; Statement: r1 := @parameter2: java.lang.Object[] 
(assert (not (= var2319 null-__Array__Int__var1521__)))
(define-const var2257 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2257)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2257!1 String)
(assert (= var2257!1 ""))
(assert true)
;(assert (append/672562846 var2257!1 "(function (")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(function (") 
(declare-const var2257!2 String)
(assert (= var2257!2 (str.++ var2257!1 "(function (")))
(define-const var1649 Int (getLength-Arr-var1521-1 var2319)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 <= 0 goto r12 = null 
(assert (<= var1649 0)) ; Cond: $i0 <= 0 
(define-const var861 String null-String) ; Statement: r12 = null 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2257!2 ") {\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") {\n") 
(declare-const var2257!3 String)
(assert (= var2257!3 (str.++ var2257!2 ") {\n")))
(define-const var3337 Int (getLength-Arr-var1521-1 var2319)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(assert (<= var3337 0)) ; Cond: $i1 <= 0 
(assert true)
;(assert (append/672562846 var2257!3 "})")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var2257!4 String)
(assert (= var2257!4 (str.++ var2257!3 "})")))
(define-const var80 var1755 var1755_instance/-1028431714) ; Statement: $r5 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(assert true)
(define-const var2287 var2449 (getContext/2090148484 var80)) ; Statement: $r6 = virtualinvoke $r5.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>() 
(assert true)
(define-const var3433 String (toString/-2075883882 var2257!4)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var660 var1521 (eval/-1519185906 var2287 (cast-from-var1755-to-var452 var80) var3433 (cast-from-var1755-to-var1521 var80) (cast-from-String-to-var1521 "<function>"))) ; Statement: $r3 = virtualinvoke $r6.<jdk.nashorn.internal.runtime.Context: java.lang.Object eval(jdk.nashorn.internal.runtime.ScriptObject,java.lang.String,java.lang.Object,java.lang.Object)>($r5, $r2, $r5, "<function>") 
(define-const var994 var1925 (cast-from-var1521-to-var1925 var660)) ; Statement: $r4 = (jdk.nashorn.internal.runtime.ScriptFunction) $r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-var1521-1=([java.lang.Object[]], int), var1755_instance/-1028431714=([], jdk.nashorn.internal.objects.Global), getContext/2090148484=([jdk.nashorn.internal.objects.Global], jdk.nashorn.internal.runtime.Context), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), eval/-1519185906=([jdk.nashorn.internal.runtime.Context, jdk.nashorn.internal.runtime.ScriptObject, java.lang.String, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1755-to-var452=([jdk.nashorn.internal.objects.Global], jdk.nashorn.internal.runtime.ScriptObject), cast-from-var1755-to-var1521=([jdk.nashorn.internal.objects.Global], java.lang.Object), cast-from-String-to-var1521=([java.lang.String], java.lang.Object), cast-from-var1521-to-var1925=([java.lang.Object], jdk.nashorn.internal.runtime.ScriptFunction)}
; {var2775=z1, var1521=java.lang.Object, var3585=r11, var2319=r1, var2257=$r0, var1649=$i0, var2766=null_type, var861=r12, var3337=$i1, var1755=jdk.nashorn.internal.objects.Global, var80=$r5, var2449=jdk.nashorn.internal.runtime.Context, var2287=$r6, var3433=$r2, var452=jdk.nashorn.internal.runtime.ScriptObject, var660=$r3, var1925=jdk.nashorn.internal.runtime.ScriptFunction, var994=$r4}
; {z1=var2775, java.lang.Object=var1521, r11=var3585, r1=var2319, $r0=var2257, $i0=var1649, null_type=var2766, r12=var861, $i1=var3337, jdk.nashorn.internal.objects.Global=var1755, $r5=var80, jdk.nashorn.internal.runtime.Context=var2449, $r6=var2287, $r2=var3433, jdk.nashorn.internal.runtime.ScriptObject=var452, $r3=var660, jdk.nashorn.internal.runtime.ScriptFunction=var1925, $r4=var994}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z1 := @parameter0: boolean;	r11 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(function (");	$i0 = lengthof r1;	if $i0 <= 0 goto r12 = null;	r12 = null;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") {\n");	$i1 = lengthof r1;	if $i1 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r5 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	$r6 = virtualinvoke $r5.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.Context getContext()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r6.<jdk.nashorn.internal.runtime.Context: java.lang.Object eval(jdk.nashorn.internal.runtime.ScriptObject,java.lang.String,java.lang.Object,java.lang.Object)>($r5, $r2, $r5, "<function>");	$r4 = (jdk.nashorn.internal.runtime.ScriptFunction) $r3;	return $r4
;block_num 4