(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3163 0)
(declare-sort var3654 0)
(declare-sort var1306 0)
(declare-sort var2364 0)
(declare-sort var487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3654-init () var3654)
(declare-fun <init>/-157649024 (var3654 String) void)
(declare-fun var1306-init () var1306)
(declare-fun <init>/-734113845 (var1306 String) void)
(declare-fun var2364_add/328494887 (var2364 var487) Bool)
(declare-fun cast-from-var3654-to-var2364 (var3654) var2364)
(declare-fun cast-from-var1306-to-var487 (var1306) var487)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2837 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2837 null-String)))
(declare-const var3006 Bool) ; Statement: z9 := @parameter1: boolean 
(assert (not (= var3006 null-Bool)))
(define-const var3981 var3654 var3654-init) ; Statement: $r29 = new com.github.jknack.handlebars.internal.PathExpressionList 
(assert true)
;(assert (<init>/-157649024 var3981 var2837)) ; Statement: specialinvoke $r29.<com.github.jknack.handlebars.internal.PathExpressionList: void <init>(java.lang.String)>(r1) 

(declare-const var3981!1 var3654)
(declare-const var2837!1 String)
(define-const var98 String "this") ; Statement: $r2 = "this" 
(assert true)
(define-const var3194 Bool (= var98 var2837!1)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r30 = new com.github.jknack.handlebars.internal.path.ResolveThisPath 
(assert (not (= (ite var3194 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2388 var1306 var1306-init) ; Statement: $r30 = new com.github.jknack.handlebars.internal.path.ResolveThisPath 
(assert true)
;(assert (<init>/-734113845 var2388 var2837!1)) ; Statement: specialinvoke $r30.<com.github.jknack.handlebars.internal.path.ResolveThisPath: void <init>(java.lang.String)>(r1) 

(declare-const var2388!1 var1306)
(declare-const var2837!2 String)
;(assert (var2364_add/328494887 (cast-from-var3654-to-var2364 var3981!1) (cast-from-var1306-to-var487 var2388!1))) ; Statement: interfaceinvoke $r29.<java.util.List: boolean add(java.lang.Object)>($r30) 

(declare-const var3981!2 var3654)
(declare-const var2388!2 var1306)
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var3654-init=([], com.github.jknack.handlebars.internal.PathExpressionList), <init>/-157649024=([com.github.jknack.handlebars.internal.PathExpressionList, java.lang.String], void), var1306-init=([], com.github.jknack.handlebars.internal.path.ResolveThisPath), <init>/-734113845=([com.github.jknack.handlebars.internal.path.ResolveThisPath, java.lang.String], void), var2364_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3654-to-var2364=([com.github.jknack.handlebars.internal.PathExpressionList], java.util.List), cast-from-var1306-to-var487=([com.github.jknack.handlebars.internal.path.ResolveThisPath], java.lang.Object)}
; {var2837=r1, var3163=null_type, var3006=z9, var3654=com.github.jknack.handlebars.internal.PathExpressionList, var3981=$r29, var98=$r2, var3194=$z0, var1306=com.github.jknack.handlebars.internal.path.ResolveThisPath, var2388=$r30, var2364=java.util.List, var487=java.lang.Object}
; {r1=var2837, null_type=var3163, z9=var3006, com.github.jknack.handlebars.internal.PathExpressionList=var3654, $r29=var3981, $r2=var98, $z0=var3194, com.github.jknack.handlebars.internal.path.ResolveThisPath=var1306, $r30=var2388, java.util.List=var2364, java.lang.Object=var487}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	z9 := @parameter1: boolean;	$r29 = new com.github.jknack.handlebars.internal.PathExpressionList;	specialinvoke $r29.<com.github.jknack.handlebars.internal.PathExpressionList: void <init>(java.lang.String)>(r1);	$r2 = "this";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $r30 = new com.github.jknack.handlebars.internal.path.ResolveThisPath;	$r30 = new com.github.jknack.handlebars.internal.path.ResolveThisPath;	specialinvoke $r30.<com.github.jknack.handlebars.internal.path.ResolveThisPath: void <init>(java.lang.String)>(r1);	interfaceinvoke $r29.<java.util.List: boolean add(java.lang.Object)>($r30);	return $r29
;block_num 2