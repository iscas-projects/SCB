(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3067 0)
(declare-sort var962 0)
(declare-sort var1699 0)
(declare-sort var2184 0)
(declare-sort var2839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/-1253424866 (var3067) var962)
(declare-fun append/-1031950772 (String var1699) String)
(declare-fun cast-from-var962-to-var1699 (var962) var1699)
(declare-fun options/-1253424866 (var3067) (Array Int var2184))
(declare-fun var2839_toString/-575966009 ((Array Int var1699)) String)
(declare-fun cast-from-__Array__Int__var2184__-to-__Array__Int__var1699__ ((Array Int var2184)) (Array Int var1699))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3067 var3067)
(declare-const var2259 var3067) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink 
(assert (not (= var2259 null-var3067)))
(define-const var1298 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1298)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1298!1 String)
(assert (= var1298!1 ""))
(assert true)
(define-const var3006 String (append/672562846 var1298!1 "MoreFiles.asByteSink(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.asByteSink(") 
(declare-const var1298!2 String)
(assert (= var1298!2 (str.++ var1298!1 "MoreFiles.asByteSink(")))
(define-const var1026 var962 (path/-1253424866 var2259)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink: java.nio.file.Path path> 
(assert true)
(define-const var719 String (append/-1031950772 var3006 (cast-from-var962-to-var1699 var1026))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3006!1 String)
(assert (str.prefixof var3006 var3006!1))
(assert true)
(define-const var2965 String (append/672562846 var719 ", ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var719!1 String)
(assert (= var719!1 (str.++ var719 ", ")))
(define-const var1194 (Array Int var2184) (options/-1253424866 var2259)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink: java.nio.file.OpenOption[] options> 
(define-const var1812 String (var2839_toString/-575966009 (cast-from-__Array__Int__var2184__-to-__Array__Int__var1699__ var1194))) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r5) 
(assert true)
(define-const var3819 String (append/672562846 var2965 var1812)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2965!1 String)
(assert (= var2965!1 (str.++ var2965 var1812)))
(assert true)
(define-const var3576 String (append/672562846 var3819 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3819!1 String)
(assert (= var3819!1 (str.++ var3819 ")")))
(assert true)
(define-const var3954 String (toString/-2075883882 var3576)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/-1253424866=([com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink], java.nio.file.Path), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var962-to-var1699=([java.nio.file.Path], java.lang.Object), options/-1253424866=([com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink], java.nio.file.OpenOption[]), var2839_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var2184__-to-__Array__Int__var1699__=([java.nio.file.OpenOption[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3067=com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink, var2259=r1, var1298=$r0, var3006=$r3, var962=java.nio.file.Path, var1026=$r2, var1699=java.lang.Object, var719=$r4, var2965=$r7, var2184=java.nio.file.OpenOption, var1194=$r5, var2839=java.util.Arrays, var1812=$r6, var3819=$r8, var3576=$r9, var3954=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink=var3067, r1=var2259, $r0=var1298, $r3=var3006, java.nio.file.Path=var962, $r2=var1026, java.lang.Object=var1699, $r4=var719, $r7=var2965, java.nio.file.OpenOption=var2184, $r5=var1194, java.util.Arrays=var2839, $r6=var1812, $r8=var3819, $r9=var3576, $r10=var3954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.asByteSink(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink: java.nio.file.Path path>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSink: java.nio.file.OpenOption[] options>;	$r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1