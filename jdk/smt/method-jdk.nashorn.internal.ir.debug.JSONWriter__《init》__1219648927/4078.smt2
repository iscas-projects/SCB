(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3108 0)
(declare-sort var2273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1927968089 (var2273) void)
(declare-fun cast-from-var3108-to-var2273 (var3108) var2273)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buf/-2106681294 (var3108) String)
(declare-fun includeLocation/-2106681294 (var3108) Bool)
(declare-const null-var3108 var3108)
(declare-const null-Bool Bool)
(declare-const var3844 var3108) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var3844 null-var3108)))
(declare-const var606 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var606 null-Bool)))
(assert true)
;(assert (<init>/-1927968089 (cast-from-var3108-to-var2273 var3844))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: void <init>()>() 

(declare-const var3844!1 var3108)
(define-const var54 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var54)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var54!1 String)
(assert (= var54!1 ""))
(declare-const var3844!2 var3108)
(assert (not (= var3844!2 null-var3108)))
(assert (= (buf/-2106681294 var3844!2) var54!1)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> = $r1 
(declare-const var3844!3 var3108)
(assert (not (= var3844!3 null-var3108)))
(assert (= (includeLocation/-2106681294 var3844!3) var606)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean includeLocation> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1927968089=([jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor], void), cast-from-var3108-to-var2273=([jdk.nashorn.internal.ir.debug.JSONWriter], jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), includeLocation/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], boolean)}
; {var3108=jdk.nashorn.internal.ir.debug.JSONWriter, var3844=r0, var606=z0, var2273=jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor, var54=$r1}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var3108, r0=var3844, z0=var606, jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor=var2273, $r1=var54}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	z0 := @parameter0: boolean;	specialinvoke r0.<jdk.nashorn.internal.ir.visitor.SimpleNodeVisitor: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> = $r1;	r0.<jdk.nashorn.internal.ir.debug.JSONWriter: boolean includeLocation> = z0;	return
;block_num 1