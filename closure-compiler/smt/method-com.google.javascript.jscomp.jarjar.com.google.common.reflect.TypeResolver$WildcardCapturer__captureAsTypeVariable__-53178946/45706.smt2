(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3060 0)
(declare-sort var3366 0)
(declare-sort var1793 0)
(declare-sort var1773 0)
(declare-sort var2935 0)
(declare-sort var3998 0)
(declare-sort var1633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3060!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1440334349 (var3060) var3366)
(declare-fun incrementAndGet/613115697 (var3366) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var1793_on/1487481258 (Int) var1793)
(declare-fun join/623417183 (var1793 (Array Int var1773)) String)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1773__ ((Array Int ClassObject)) (Array Int var1773))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3998_newArtificialTypeVariable/-2057251248 (var1633 String (Array Int ClassObject)) var2935)
(declare-fun cast-from-ClassObject-to-var1633 (ClassObject) var1633)
(declare-const null-var3060 var3060)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3979 var3060) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$WildcardCapturer 
(assert (not (= var3979 null-var3060)))
(declare-const var3210 (Array Int ClassObject)) ; Statement: r5 := @parameter0: java.lang.reflect.Type[] 
(assert (not (= var3210 null-__Array__Int__ClassObject__)))
(define-const var1590 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1590)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1590!1 String)
(assert (= var1590!1 ""))
(assert true)
(define-const var54 String (append/672562846 var1590!1 "capture#")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("capture#") 
(declare-const var1590!2 String)
(assert (= var1590!2 (str.++ var1590!1 "capture#")))
(define-const var2449 var3366 (id/1440334349 var3979)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$WildcardCapturer: java.util.concurrent.atomic.AtomicInteger id> 
(assert true)
(define-const var1354 Int (incrementAndGet/613115697 var2449)) ; Statement: $i0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicInteger: int incrementAndGet()>() 
(assert true)
(define-const var215 String (append/-1001720160 var54 var1354)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var54!1 String)
(assert (str.prefixof var54 var54!1))
(assert true)
(define-const var809 String (append/672562846 var215 "-of ? extends ")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-of ? extends ") 
(declare-const var215!1 String)
(assert (= var215!1 (str.++ var215 "-of ? extends ")))
(define-const var913 var1793 (var1793_on/1487481258 38)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner on(char)>(38) 
(assert true)
(define-const var2166 String (join/623417183 var913 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1773__ var3210))) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Object[])>(r5) 
(assert true)
(define-const var911 String (append/672562846 var809 var2166)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var809!1 String)
(assert (= var809!1 (str.++ var809 var2166)))
(assert true)
(define-const var3299 String (toString/-2075883882 var911)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var864 var2935 (var3998_newArtificialTypeVariable/-2057251248 (cast-from-ClassObject-to-var1633 var3060!class) var3299 var3210)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: java.lang.reflect.TypeVariable newArtificialTypeVariable(java.lang.reflect.GenericDeclaration,java.lang.String,java.lang.reflect.Type[])>(class "Lcom/google/javascript/jscomp/jarjar/com/google/common/reflect/TypeResolver$WildcardCapturer;", r10, r5) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), id/1440334349=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$WildcardCapturer], java.util.concurrent.atomic.AtomicInteger), incrementAndGet/613115697=([java.util.concurrent.atomic.AtomicInteger], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var1793_on/1487481258=([char], com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner), join/623417183=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.Object[]], java.lang.String), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1773__=([java.lang.reflect.Type[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3998_newArtificialTypeVariable/-2057251248=([java.lang.reflect.GenericDeclaration, java.lang.String, java.lang.reflect.Type[]], java.lang.reflect.TypeVariable), cast-from-ClassObject-to-var1633=([java.lang.Class], java.lang.reflect.GenericDeclaration)}
; {var3060=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$WildcardCapturer, var3979=r1, var3210=r5, var1590=$r0, var54=$r3, var3366=java.util.concurrent.atomic.AtomicInteger, var2449=$r2, var1354=$i0, var215=$r4, var809=$r8, var1793=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var913=$r6, var1773=java.lang.Object, var2166=$r7, var911=$r9, var3299=r10, var2935=java.lang.reflect.TypeVariable, var3998=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types, var1633=java.lang.reflect.GenericDeclaration, var864=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$WildcardCapturer=var3060, r1=var3979, r5=var3210, $r0=var1590, $r3=var54, java.util.concurrent.atomic.AtomicInteger=var3366, $r2=var2449, $i0=var1354, $r4=var215, $r8=var809, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var1793, $r6=var913, java.lang.Object=var1773, $r7=var2166, $r9=var911, r10=var3299, java.lang.reflect.TypeVariable=var2935, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types=var3998, java.lang.reflect.GenericDeclaration=var1633, $r11=var864}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$WildcardCapturer;	r5 := @parameter0: java.lang.reflect.Type[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("capture#");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$WildcardCapturer: java.util.concurrent.atomic.AtomicInteger id>;	$i0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicInteger: int incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-of ? extends ");	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner on(char)>(38);	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Object[])>(r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: java.lang.reflect.TypeVariable newArtificialTypeVariable(java.lang.reflect.GenericDeclaration,java.lang.String,java.lang.reflect.Type[])>(class "Lcom/google/javascript/jscomp/jarjar/com/google/common/reflect/TypeResolver$WildcardCapturer;", r10, r5);	return $r11
;block_num 1