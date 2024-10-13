(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var381 0)
(declare-sort var3641 0)
(declare-sort var2768 0)
(declare-sort var2924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun path/-1302676885 (var381) String)
(declare-fun pathWithFilesystem/-1302676885 (var381) var2768)
(declare-const null-var381 var381)
(declare-const null-String String)
(declare-const null-var2768 var2768)
(declare-const var2924-BANG_SLASH String)
(declare-const var740 var381) ; Statement: r2 := @this: com.google.javascript.jscomp.SourceFile$Builder 
(assert (not (= var740 null-var381)))
(declare-const var2872 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2872 null-String)))
(declare-const var2817 var2768) ; Statement: r3 := @parameter1: java.nio.file.Path 
(assert (not (= var2817 null-var2768)))
(define-const var3092 String var2924-BANG_SLASH) ; Statement: $r1 = <com.google.javascript.jscomp.SourceFile: java.lang.String BANG_SLASH> 
(assert true)
(define-const var3284 Int (indexOf/-1209756239 var2872 var3092)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>($r1) 
 ; Statement: if i0 < 0 goto r2.<com.google.javascript.jscomp.SourceFile$Builder: java.lang.String path> = r0 
(assert (< var3284 0)) ; Cond: i0 < 0 
(declare-const var740!1 var381)
(assert (not (= var740!1 null-var381)))
(assert (= (path/-1302676885 var740!1) var2872)) ; Statement: r2.<com.google.javascript.jscomp.SourceFile$Builder: java.lang.String path> = r0 
(declare-const var740!2 var381)
(assert (not (= var740!2 null-var381)))
(assert (= (pathWithFilesystem/-1302676885 var740!2) var2817)) ; Statement: r2.<com.google.javascript.jscomp.SourceFile$Builder: java.nio.file.Path pathWithFilesystem> = r3 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), path/-1302676885=([com.google.javascript.jscomp.SourceFile$Builder], java.lang.String), pathWithFilesystem/-1302676885=([com.google.javascript.jscomp.SourceFile$Builder], java.nio.file.Path)}
; {var381=com.google.javascript.jscomp.SourceFile$Builder, var740=r2, var2872=r0, var3641=null_type, var2768=java.nio.file.Path, var2817=r3, var2924=com.google.javascript.jscomp.SourceFile, var3092=$r1, var3284=i0}
; {com.google.javascript.jscomp.SourceFile$Builder=var381, r2=var740, r0=var2872, null_type=var3641, java.nio.file.Path=var2768, r3=var2817, com.google.javascript.jscomp.SourceFile=var2924, $r1=var3092, i0=var3284}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.SourceFile$Builder;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.nio.file.Path;	$r1 = <com.google.javascript.jscomp.SourceFile: java.lang.String BANG_SLASH>;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>($r1);	if i0 < 0 goto r2.<com.google.javascript.jscomp.SourceFile$Builder: java.lang.String path> = r0;	r2.<com.google.javascript.jscomp.SourceFile$Builder: java.lang.String path> = r0;	r2.<com.google.javascript.jscomp.SourceFile$Builder: java.nio.file.Path pathWithFilesystem> = r3;	return r2
;block_num 2