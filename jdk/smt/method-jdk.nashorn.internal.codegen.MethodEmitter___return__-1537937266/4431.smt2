(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3430 0)
(declare-sort var650 0)
(declare-sort var1379 0)
(declare-sort var1987 0)
(declare-sort var3969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun debug/-301969445 (var3430 var1379 var1379) void)
(declare-fun cast-from-String-to-var1379 (String) var1379)
(declare-fun cast-from-var650-to-var1379 (var650) var1379)
(declare-fun stack/656530713 (var3430) var1987)
(declare-fun size/1310801893 (var1987) Int)
(declare-fun var3969-init () var3969)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1379) String)
(declare-fun cast-from-var1987-to-var1379 (var1987) var1379)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3969 var1379) void)
(declare-const null-var3430 var3430)
(declare-const null-var650 var650)
(declare-const var3430-$assertionsDisabled Bool)
(declare-const var1590 var3430) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var1590 null-var3430)))
(declare-const var2829 var650) ; Statement: r1 := @parameter0: jdk.nashorn.internal.codegen.types.Type 
(assert (not (= var2829 null-var650)))
(assert true)
;(assert (debug/-301969445 var1590 (cast-from-String-to-var1379 "return") (cast-from-var650-to-var1379 var2829))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object)>("return", r1) 

(declare-const var1590!1 var3430)
(declare-const var2274 String)
(declare-const var2829!1 var650)
(define-const var966 Bool var3430-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>() 
(assert (not (not (= (ite var966 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3797 var1987 (stack/656530713 var1590!1)) ; Statement: $r4 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.Label$Stack stack> 
(assert true)
(define-const var644 Int (size/1310801893 var3797)) ; Statement: $i0 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.Label$Stack: int size()>() 
 ; Statement: if $i0 == 1 goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>() 
(assert (not (= var644 1))) ; Negate: Cond: $i0 == 1  
(define-const var2365 var3969 var3969-init) ; Statement: $r6 = new java.lang.AssertionError 
(define-const var3741 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3741)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3741!1 String)
(assert (= var3741!1 ""))
(assert true)
(define-const var56 String (append/672562846 var3741!1 "Only return value on stack allowed at return point - depth=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Only return value on stack allowed at return point - depth=") 
(declare-const var3741!2 String)
(assert (= var3741!2 (str.++ var3741!1 "Only return value on stack allowed at return point - depth=")))
(define-const var167 var1987 (stack/656530713 var1590!1)) ; Statement: $r8 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.Label$Stack stack> 
(assert true)
(define-const var1326 Int (size/1310801893 var167)) ; Statement: $i1 = virtualinvoke $r8.<jdk.nashorn.internal.codegen.Label$Stack: int size()>() 
(assert true)
(define-const var3341 String (append/-1001720160 var56 var1326)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var56!1 String)
(assert (str.prefixof var56 var56!1))
(assert true)
(define-const var3895 String (append/672562846 var3341 " stack = ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" stack = ") 
(declare-const var3341!1 String)
(assert (= var3341!1 (str.++ var3341 " stack = ")))
(define-const var1259 var1987 (stack/656530713 var1590!1)) ; Statement: $r11 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.Label$Stack stack> 
(assert true)
(define-const var1250 String (append/-1031950772 var3895 (cast-from-var1987-to-var1379 var1259))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var3895!1 String)
(assert (str.prefixof var3895 var3895!1))
(assert true)
(define-const var235 String (toString/-2075883882 var1250)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2365 (cast-from-String-to-var1379 var235))) ; Statement: specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.Object)>($r14) 

(declare-const var2365!1 var3969)
(declare-const var235!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {debug/-301969445=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1379=([java.lang.String], java.lang.Object), cast-from-var650-to-var1379=([jdk.nashorn.internal.codegen.types.Type], java.lang.Object), stack/656530713=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.nashorn.internal.codegen.Label$Stack), size/1310801893=([jdk.nashorn.internal.codegen.Label$Stack], int), var3969-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1987-to-var1379=([jdk.nashorn.internal.codegen.Label$Stack], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void)}
; {var3430=jdk.nashorn.internal.codegen.MethodEmitter, var1590=r0, var650=jdk.nashorn.internal.codegen.types.Type, var2829=r1, var1379=java.lang.Object, var2274="return", var966=$z0, var1987=jdk.nashorn.internal.codegen.Label$Stack, var3797=$r4, var644=$i0, var3969=java.lang.AssertionError, var2365=$r6, var3741=$r7, var56=$r9, var167=$r8, var1326=$i1, var3341=$r10, var3895=$r12, var1259=$r11, var1250=$r13, var235=$r14}
; {jdk.nashorn.internal.codegen.MethodEmitter=var3430, r0=var1590, jdk.nashorn.internal.codegen.types.Type=var650, r1=var2829, java.lang.Object=var1379, "return"=var2274, $z0=var966, jdk.nashorn.internal.codegen.Label$Stack=var1987, $r4=var3797, $i0=var644, java.lang.AssertionError=var3969, $r6=var2365, $r7=var3741, $r9=var56, $r8=var167, $i1=var1326, $r10=var3341, $r12=var3895, $r11=var1259, $r13=var1250, $r14=var235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	r1 := @parameter0: jdk.nashorn.internal.codegen.types.Type;	specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object)>("return", r1);	$z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled>;	if $z0 != 0 goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>();	$r4 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.Label$Stack stack>;	$i0 = virtualinvoke $r4.<jdk.nashorn.internal.codegen.Label$Stack: int size()>();	if $i0 == 1 goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>();	$r6 = new java.lang.AssertionError;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Only return value on stack allowed at return point - depth=");	$r8 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.Label$Stack stack>;	$i1 = virtualinvoke $r8.<jdk.nashorn.internal.codegen.Label$Stack: int size()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" stack = ");	$r11 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.Label$Stack stack>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.Object)>($r14);	throw $r6
;block_num 3