(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3085 0)
(declare-sort var1923 0)
(declare-sort var2247 0)
(declare-sort var3935 0)
(declare-sort var1218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1923) void)
(declare-fun cast-from-var3085-to-var1923 (var3085) var1923)
(declare-fun var2247-init () var2247)
(declare-fun <init>/-460065511 (var2247) void)
(declare-fun cast-from-var2247-to-var3935 (var2247) var3935)
(declare-fun stack/906978120 (var3085) var3935)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun indent/906978120 (var3085) String)
(declare-fun gap/906978120 (var3085) String)
(declare-fun propertyList/906978120 (var3085) var1218)
(declare-fun replacerFunction/906978120 (var3085) var1923)
(declare-const null-var3085 var3085)
(declare-const null-var1218 var1218)
(declare-const null-var1923 var1923)
(declare-const var2811 var3085) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeJSON$StringifyState 
(assert (not (= var2811 null-var3085)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3085-to-var1923 var2811))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2811!1 var3085)
(define-const var3829 var2247 var2247-init) ; Statement: $r1 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var3829)) ; Statement: specialinvoke $r1.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var3829!1 var2247)
(declare-const var2811!2 var3085)
(assert (not (= var2811!2 null-var3085)))
(assert (= (stack/906978120 var2811!2) (cast-from-var2247-to-var3935 var3829!1))) ; Statement: r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.util.Map stack> = $r1 
(define-const var1929 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
(declare-const var2811!3 var3085)
(assert (not (= var2811!3 null-var3085)))
(assert (= (indent/906978120 var2811!3) var1929!1)) ; Statement: r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.StringBuilder indent> = $r2 
(declare-const var2811!4 var3085)
(assert (not (= var2811!4 null-var3085)))
(assert (= (gap/906978120 var2811!4) "")) ; Statement: r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = "" 
(declare-const var2811!5 var3085)
(assert (not (= var2811!5 null-var3085)))
(assert (= (propertyList/906978120 var2811!5) null-var1218)) ; Statement: r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.util.List propertyList> = null 
(declare-const var2811!6 var3085)
(assert (not (= var2811!6 null-var3085)))
(assert (= (replacerFunction/906978120 var2811!6) null-var1923)) ; Statement: r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3085-to-var1923=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object), var2247-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), cast-from-var2247-to-var3935=([java.util.IdentityHashMap], java.util.Map), stack/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.util.Map), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), indent/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.StringBuilder), gap/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.String), propertyList/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.util.List), replacerFunction/906978120=([jdk.nashorn.internal.objects.NativeJSON$StringifyState], java.lang.Object)}
; {var3085=jdk.nashorn.internal.objects.NativeJSON$StringifyState, var2811=r0, var1923=java.lang.Object, var2247=java.util.IdentityHashMap, var3829=$r1, var3935=java.util.Map, var1929=$r2, var1218=java.util.List}
; {jdk.nashorn.internal.objects.NativeJSON$StringifyState=var3085, r0=var2811, java.lang.Object=var1923, java.util.IdentityHashMap=var2247, $r1=var3829, java.util.Map=var3935, $r2=var1929, java.util.List=var1218}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeJSON$StringifyState;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.IdentityHashMap;	specialinvoke $r1.<java.util.IdentityHashMap: void <init>()>();	r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.util.Map stack> = $r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.StringBuilder indent> = $r2;	r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.String gap> = "";	r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.util.List propertyList> = null;	r0.<jdk.nashorn.internal.objects.NativeJSON$StringifyState: java.lang.Object replacerFunction> = null;	return
;block_num 1