(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var469 0)
(declare-sort var2916 0)
(declare-sort var452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var452-init () var452)
(declare-fun <init>/-1406602162 (var452 String) void)
(declare-const null-String String)
(declare-const null-var2916 var2916)
(declare-const var852 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var852 null-String)))
(declare-const var3254 var2916) ; Statement: r4 := @parameter1: com.google.debugging.sourcemap.SourceMapSupplier 
(assert (not (= var3254 null-var2916)))
(assert true)
(define-const var2097 Bool (startsWith/-1785782452 var852 "/** Begin line maps. **/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/** Begin line maps. **/") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("{") 
(assert (not (= (ite var2097 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2184 var452 var452-init) ; Statement: $r7 = new com.google.debugging.sourcemap.SourceMapParseException 
(assert true)
;(assert (<init>/-1406602162 var2184 "This appears to be a V1 SourceMap, which is not supported.")) ; Statement: specialinvoke $r7.<com.google.debugging.sourcemap.SourceMapParseException: void <init>(java.lang.String)>("This appears to be a V1 SourceMap, which is not supported.") 

(declare-const var2184!1 var452)
(declare-const var467 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var452-init=([], com.google.debugging.sourcemap.SourceMapParseException), <init>/-1406602162=([com.google.debugging.sourcemap.SourceMapParseException, java.lang.String], void)}
; {var852=r0, var469=null_type, var2916=com.google.debugging.sourcemap.SourceMapSupplier, var3254=r4, var2097=$z0, var452=com.google.debugging.sourcemap.SourceMapParseException, var2184=$r7, var467="This appears to be a V1 SourceMap, which is not supported."}
; {r0=var852, null_type=var469, com.google.debugging.sourcemap.SourceMapSupplier=var2916, r4=var3254, $z0=var2097, com.google.debugging.sourcemap.SourceMapParseException=var452, $r7=var2184, "This appears to be a V1 SourceMap, which is not supported."=var467}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.debugging.sourcemap.SourceMapSupplier;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/** Begin line maps. **/");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("{");	$r7 = new com.google.debugging.sourcemap.SourceMapParseException;	specialinvoke $r7.<com.google.debugging.sourcemap.SourceMapParseException: void <init>(java.lang.String)>("This appears to be a V1 SourceMap, which is not supported.");	throw $r7
;block_num 2