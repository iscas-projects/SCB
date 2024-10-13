(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var933 0)
(declare-sort var1632 0)
(declare-sort var1647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun runtimeLibraryName/1015947962 (var933) String)
(declare-fun var1632_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun compilerSupplier/1015947962 (var933) var1647)
(declare-fun runtime/342255982 (var1647 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var933 var933)
(declare-const var3105 var933) ; Statement: r1 := @this: com.google.javascript.jscomp.transpile.BaseTranspiler 
(assert (not (= var3105 null-var933)))
(define-const var525 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var525)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var525!1 String)
(assert (= var525!1 ""))
(define-const var3829 String (runtimeLibraryName/1015947962 var3105)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.transpile.BaseTranspiler: java.lang.String runtimeLibraryName> 
(define-const var20 Bool (var1632_isNullOrEmpty/1886904788 var3829)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r2) 
 ; Statement: if $z0 != 0 goto $r3 = r1.<com.google.javascript.jscomp.transpile.BaseTranspiler: com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier compilerSupplier> 
(assert (not (= (ite var20 1 0) 0))) ; Cond: $z0 != 0 
(define-const var729 var1647 (compilerSupplier/1015947962 var3105)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.transpile.BaseTranspiler: com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier compilerSupplier> 
(assert true)
(define-const var331 String (runtime/342255982 var729 "modules")) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: java.lang.String runtime(java.lang.String)>("modules") 
(assert true)
;(assert (append/672562846 var525!1 var331)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var525!2 String)
(assert (= var525!2 (str.++ var525!1 var331)))
(assert true)
(define-const var1707 String (toString/-2075883882 var525!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), runtimeLibraryName/1015947962=([com.google.javascript.jscomp.transpile.BaseTranspiler], java.lang.String), var1632_isNullOrEmpty/1886904788=([java.lang.String], boolean), compilerSupplier/1015947962=([com.google.javascript.jscomp.transpile.BaseTranspiler], com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier), runtime/342255982=([com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var933=com.google.javascript.jscomp.transpile.BaseTranspiler, var3105=r1, var525=$r0, var3829=$r2, var1632=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var20=$z0, var1647=com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier, var729=$r3, var331=$r4, var1707=$r5}
; {com.google.javascript.jscomp.transpile.BaseTranspiler=var933, r1=var3105, $r0=var525, $r2=var3829, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1632, $z0=var20, com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier=var1647, $r3=var729, $r4=var331, $r5=var1707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.transpile.BaseTranspiler;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.transpile.BaseTranspiler: java.lang.String runtimeLibraryName>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>($r2);	if $z0 != 0 goto $r3 = r1.<com.google.javascript.jscomp.transpile.BaseTranspiler: com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier compilerSupplier>;	$r3 = r1.<com.google.javascript.jscomp.transpile.BaseTranspiler: com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier compilerSupplier>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.transpile.BaseTranspiler$CompilerSupplier: java.lang.String runtime(java.lang.String)>("modules");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2