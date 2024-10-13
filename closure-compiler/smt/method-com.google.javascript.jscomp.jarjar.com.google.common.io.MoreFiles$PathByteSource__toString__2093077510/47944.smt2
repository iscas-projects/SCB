(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1442 0)
(declare-sort var1477 0)
(declare-sort var1848 0)
(declare-sort var789 0)
(declare-sort var3262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/-1944693786 (var1442) var1477)
(declare-fun append/-1031950772 (String var1848) String)
(declare-fun cast-from-var1477-to-var1848 (var1477) var1848)
(declare-fun options/-1944693786 (var1442) (Array Int var789))
(declare-fun var3262_toString/-575966009 ((Array Int var1848)) String)
(declare-fun cast-from-__Array__Int__var789__-to-__Array__Int__var1848__ ((Array Int var789)) (Array Int var1848))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1442 var1442)
(declare-const var1228 var1442) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource 
(assert (not (= var1228 null-var1442)))
(define-const var3598 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3598)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3598!1 String)
(assert (= var3598!1 ""))
(assert true)
(define-const var1144 String (append/672562846 var3598!1 "MoreFiles.asByteSource(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.asByteSource(") 
(declare-const var3598!2 String)
(assert (= var3598!2 (str.++ var3598!1 "MoreFiles.asByteSource(")))
(define-const var2984 var1477 (path/-1944693786 var1228)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource: java.nio.file.Path path> 
(assert true)
(define-const var2161 String (append/-1031950772 var1144 (cast-from-var1477-to-var1848 var2984))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1144!1 String)
(assert (str.prefixof var1144 var1144!1))
(assert true)
(define-const var1867 String (append/672562846 var2161 ", ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2161!1 String)
(assert (= var2161!1 (str.++ var2161 ", ")))
(define-const var1476 (Array Int var789) (options/-1944693786 var1228)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource: java.nio.file.OpenOption[] options> 
(define-const var3153 String (var3262_toString/-575966009 (cast-from-__Array__Int__var789__-to-__Array__Int__var1848__ var1476))) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r5) 
(assert true)
(define-const var243 String (append/672562846 var1867 var3153)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1867!1 String)
(assert (= var1867!1 (str.++ var1867 var3153)))
(assert true)
(define-const var1222 String (append/672562846 var243 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var243!1 String)
(assert (= var243!1 (str.++ var243 ")")))
(assert true)
(define-const var135 String (toString/-2075883882 var1222)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/-1944693786=([com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource], java.nio.file.Path), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1477-to-var1848=([java.nio.file.Path], java.lang.Object), options/-1944693786=([com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource], java.nio.file.OpenOption[]), var3262_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var789__-to-__Array__Int__var1848__=([java.nio.file.OpenOption[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1442=com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource, var1228=r1, var3598=$r0, var1144=$r3, var1477=java.nio.file.Path, var2984=$r2, var1848=java.lang.Object, var2161=$r4, var1867=$r7, var789=java.nio.file.OpenOption, var1476=$r5, var3262=java.util.Arrays, var3153=$r6, var243=$r8, var1222=$r9, var135=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource=var1442, r1=var1228, $r0=var3598, $r3=var1144, java.nio.file.Path=var1477, $r2=var2984, java.lang.Object=var1848, $r4=var2161, $r7=var1867, java.nio.file.OpenOption=var789, $r5=var1476, java.util.Arrays=var3262, $r6=var3153, $r8=var243, $r9=var1222, $r10=var135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MoreFiles.asByteSource(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource: java.nio.file.Path path>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.MoreFiles$PathByteSource: java.nio.file.OpenOption[] options>;	$r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1