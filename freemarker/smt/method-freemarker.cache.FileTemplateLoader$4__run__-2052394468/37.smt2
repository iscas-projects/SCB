(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3411 0)
(declare-sort var2547 0)
(declare-sort var3368 0)
(declare-sort var2080 0)
(declare-sort var1324 0)
(declare-sort var493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$templateSource/1563630701 (var3411) var2547)
(declare-fun var3368-init () var3368)
(declare-fun var2080-init () var2080)
(declare-fun cast-from-var2547-to-var1324 (var2547) var1324)
(declare-fun <init>/-2099739949 (var2080 var1324) void)
(declare-fun val$encoding/1563630701 (var3411) String)
(declare-fun <init>/630241661 (var3368 var493 String) void)
(declare-fun cast-from-var2080-to-var493 (var2080) var493)
(declare-const null-var3411 var3411)
(declare-const var505 var3411) ; Statement: r0 := @this: freemarker.cache.FileTemplateLoader$4 
(assert (not (= var505 null-var3411)))
(define-const var864 var2547 (val$templateSource/1563630701 var505)) ; Statement: $r1 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource> 
(define-const var3219 Bool false) ; Statement: $z0 = $r1 instanceof java.io.File 
 ; Statement: if $z0 != 0 goto $r2 = new java.io.InputStreamReader 
(assert (not (= (ite var3219 1 0) 0))) ; Cond: $z0 != 0 
(define-const var791 var3368 var3368-init) ; Statement: $r2 = new java.io.InputStreamReader 
(define-const var1694 var2080 var2080-init) ; Statement: $r3 = new java.io.FileInputStream 
(define-const var286 var2547 (val$templateSource/1563630701 var505)) ; Statement: $r4 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource> 
(define-const var2875 var1324 (cast-from-var2547-to-var1324 var286)) ; Statement: $r5 = (java.io.File) $r4 
(assert true)
;(assert (<init>/-2099739949 var1694 var2875)) ; Statement: specialinvoke $r3.<java.io.FileInputStream: void <init>(java.io.File)>($r5) 

(declare-const var1694!1 var2080)
(declare-const var2875!1 var1324)
(define-const var1148 String (val$encoding/1563630701 var505)) ; Statement: $r6 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.String val$encoding> 
(assert true)
;(assert (<init>/630241661 var791 (cast-from-var2080-to-var493 var1694!1) var1148)) ; Statement: specialinvoke $r2.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.lang.String)>($r3, $r6) 

(declare-const var791!1 var3368)
(declare-const var1694!2 var2080)
(declare-const var1148!1 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {val$templateSource/1563630701=([freemarker.cache.FileTemplateLoader$4], java.lang.Object), var3368-init=([], java.io.InputStreamReader), var2080-init=([], java.io.FileInputStream), cast-from-var2547-to-var1324=([java.lang.Object], java.io.File), <init>/-2099739949=([java.io.FileInputStream, java.io.File], void), val$encoding/1563630701=([freemarker.cache.FileTemplateLoader$4], java.lang.String), <init>/630241661=([java.io.InputStreamReader, java.io.InputStream, java.lang.String], void), cast-from-var2080-to-var493=([java.io.FileInputStream], java.io.InputStream)}
; {var3411=freemarker.cache.FileTemplateLoader$4, var505=r0, var2547=java.lang.Object, var864=$r1, var3219=$z0, var3368=java.io.InputStreamReader, var791=$r2, var2080=java.io.FileInputStream, var1694=$r3, var286=$r4, var1324=java.io.File, var2875=$r5, var1148=$r6, var493=java.io.InputStream}
; {freemarker.cache.FileTemplateLoader$4=var3411, r0=var505, java.lang.Object=var2547, $r1=var864, $z0=var3219, java.io.InputStreamReader=var3368, $r2=var791, java.io.FileInputStream=var2080, $r3=var1694, $r4=var286, java.io.File=var1324, $r5=var2875, $r6=var1148, java.io.InputStream=var493}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.cache.FileTemplateLoader$4;	$r1 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource>;	$z0 = $r1 instanceof java.io.File;	if $z0 != 0 goto $r2 = new java.io.InputStreamReader;	$r2 = new java.io.InputStreamReader;	$r3 = new java.io.FileInputStream;	$r4 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.Object val$templateSource>;	$r5 = (java.io.File) $r4;	specialinvoke $r3.<java.io.FileInputStream: void <init>(java.io.File)>($r5);	$r6 = r0.<freemarker.cache.FileTemplateLoader$4: java.lang.String val$encoding>;	specialinvoke $r2.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.lang.String)>($r3, $r6);	return $r2
;block_num 2