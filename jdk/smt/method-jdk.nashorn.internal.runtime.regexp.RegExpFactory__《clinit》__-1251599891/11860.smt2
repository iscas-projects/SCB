(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3953 0)
(declare-sort var3110 0)
(declare-sort var3980 0)
(declare-sort var2171 0)
(declare-sort var767 0)
(declare-sort var2488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3953-init () var3953)
(declare-fun <init>/1093678879 (var3953) void)
(declare-fun var3980_synchronizedMap/-2081757138 (var3110) var3110)
(declare-fun cast-from-var3953-to-var3110 (var3953) var3110)
(declare-fun var2171_getStringProperty/1274007531 (String String) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2488-init () var2488)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1247810213 (var2488 String) void)
(declare-const null-var767 var767)
(define-const var2403 var3953 var3953-init) ; Statement: $r0 = new java.util.WeakHashMap 
(assert true)
;(assert (<init>/1093678879 var2403)) ; Statement: specialinvoke $r0.<java.util.WeakHashMap: void <init>()>() 

(declare-const var2403!1 var3953)
(define-const var3116 var3110 (var3980_synchronizedMap/-2081757138 (cast-from-var3953-to-var3110 var2403!1))) ; Statement: $r1 = staticinvoke <java.util.Collections: java.util.Map synchronizedMap(java.util.Map)>($r0) 
(define-const var2426 var3110 var3116) ; Statement: <jdk.nashorn.internal.runtime.regexp.RegExpFactory: java.util.Map REGEXP_CACHE> = $r1 
(define-const var1542 String (var2171_getStringProperty/1274007531 "nashorn.regexp.impl" "joni")) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.runtime.options.Options: java.lang.String getStringProperty(java.lang.String,java.lang.String)>("nashorn.regexp.impl", "joni") 
(define-const var3047 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3188 Int (hashCode/-467973558 var1542)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 105073: goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("jdk");     case 3268032: goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("joni");     default: goto lookupswitch(b1) {     case 0: goto $r4 = new jdk.nashorn.internal.runtime.regexp.JoniRegExp$Factory;     case 1: goto $r3 = new jdk.nashorn.internal.runtime.regexp.RegExpFactory;     default: goto <jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance> = null; }; } 
(assert (and (not (= var3188 3268032)) (and (not (= var3188 105073)) true))) ; Intersect: Negate: Cond: $i0 == 3268032   and Intersect: Negate: Cond: $i0 == 105073   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto $r4 = new jdk.nashorn.internal.runtime.regexp.JoniRegExp$Factory;     case 1: goto $r3 = new jdk.nashorn.internal.runtime.regexp.RegExpFactory;     default: goto <jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance> = null; } 
(assert (and (not (= var3047 1)) (and (not (= var3047 0)) true))) ; Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var199 var767 null-var767) ; Statement: <jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance> = null 
(define-const var3634 var2488 var2488-init) ; Statement: $r5 = new java.lang.InternalError 
(define-const var2398 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2398)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2398!1 String)
(assert (= var2398!1 ""))
(assert true)
(define-const var1679 String (append/672562846 var2398!1 "Unsupported RegExp factory: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported RegExp factory: ") 
(declare-const var2398!2 String)
(assert (= var2398!2 (str.++ var2398!1 "Unsupported RegExp factory: ")))
(assert true)
(define-const var1037 String (append/672562846 var1679 var1542)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1679!1 String)
(assert (= var1679!1 (str.++ var1679 var1542)))
(assert true)
(define-const var3024 String (toString/-2075883882 var1037)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1247810213 var3634 var3024)) ; Statement: specialinvoke $r5.<java.lang.InternalError: void <init>(java.lang.String)>($r9) 

(declare-const var3634!1 var2488)
(declare-const var3024!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3953-init=([], java.util.WeakHashMap), <init>/1093678879=([java.util.WeakHashMap], void), var3980_synchronizedMap/-2081757138=([java.util.Map], java.util.Map), cast-from-var3953-to-var3110=([java.util.WeakHashMap], java.util.Map), var2171_getStringProperty/1274007531=([java.lang.String, java.lang.String], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2488-init=([], java.lang.InternalError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1247810213=([java.lang.InternalError, java.lang.String], void)}
; {var3953=java.util.WeakHashMap, var2403=$r0, var3110=java.util.Map, var3980=java.util.Collections, var3116=$r1, var2426=<jdk.nashorn.internal.runtime.regexp.RegExpFactory: java.util.Map REGEXP_CACHE>, var2171=jdk.nashorn.internal.runtime.options.Options, var1542=r2, var3047=b1, var3188=$i0, var767=jdk.nashorn.internal.runtime.regexp.RegExpFactory, var199=<jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance>, var2488=java.lang.InternalError, var3634=$r5, var2398=$r6, var1679=$r7, var1037=$r8, var3024=$r9}
; {java.util.WeakHashMap=var3953, $r0=var2403, java.util.Map=var3110, java.util.Collections=var3980, $r1=var3116, <jdk.nashorn.internal.runtime.regexp.RegExpFactory: java.util.Map REGEXP_CACHE>=var2426, jdk.nashorn.internal.runtime.options.Options=var2171, r2=var1542, b1=var3047, $i0=var3188, jdk.nashorn.internal.runtime.regexp.RegExpFactory=var767, <jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance>=var199, java.lang.InternalError=var2488, $r5=var3634, $r6=var2398, $r7=var1679, $r8=var1037, $r9=var3024}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.util.WeakHashMap;	specialinvoke $r0.<java.util.WeakHashMap: void <init>()>();	$r1 = staticinvoke <java.util.Collections: java.util.Map synchronizedMap(java.util.Map)>($r0);	<jdk.nashorn.internal.runtime.regexp.RegExpFactory: java.util.Map REGEXP_CACHE> = $r1;	r2 = staticinvoke <jdk.nashorn.internal.runtime.options.Options: java.lang.String getStringProperty(java.lang.String,java.lang.String)>("nashorn.regexp.impl", "joni");	b1 = -1;	$i0 = virtualinvoke r2.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 105073: goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("jdk");     case 3268032: goto $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("joni");     default: goto lookupswitch(b1) {     case 0: goto $r4 = new jdk.nashorn.internal.runtime.regexp.JoniRegExp$Factory;     case 1: goto $r3 = new jdk.nashorn.internal.runtime.regexp.RegExpFactory;     default: goto <jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance> = null; }; };	lookupswitch(b1) {     case 0: goto $r4 = new jdk.nashorn.internal.runtime.regexp.JoniRegExp$Factory;     case 1: goto $r3 = new jdk.nashorn.internal.runtime.regexp.RegExpFactory;     default: goto <jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance> = null; };	<jdk.nashorn.internal.runtime.regexp.RegExpFactory: jdk.nashorn.internal.runtime.regexp.RegExpFactory instance> = null;	$r5 = new java.lang.InternalError;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported RegExp factory: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.InternalError: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 3