(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var240 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/955095398 (var1717) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tag/955095398 (var1717) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1717 var1717)
(declare-const null-String String)
(declare-const var3120 var1717) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.pattern.TagChunk 
(assert (not (= var3120 null-var1717)))
(define-const var2346 String (label/955095398 var3120)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag> 
(assert (not (= var2346 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2632 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2632)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2632!1 String)
(assert (= var2632!1 ""))
(define-const var531 String (label/955095398 var3120)) ; Statement: $r4 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String label> 
(assert true)
(define-const var637 String (append/672562846 var2632!1 var531)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2632!2 String)
(assert (= var2632!2 (str.++ var2632!1 var531)))
(assert true)
(define-const var3851 String (append/672562846 var637 ":")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var637!1 String)
(assert (= var637!1 (str.++ var637 ":")))
(define-const var870 String (tag/955095398 var3120)) ; Statement: $r6 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag> 
(assert true)
(define-const var1465 String (append/672562846 var3851 var870)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3851!1 String)
(assert (= var3851!1 (str.++ var3851 var870)))
(assert true)
(define-const var2284 String (toString/-2075883882 var1465)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {label/955095398=([org.antlr.v4.runtime.tree.pattern.TagChunk], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tag/955095398=([org.antlr.v4.runtime.tree.pattern.TagChunk], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1717=org.antlr.v4.runtime.tree.pattern.TagChunk, var3120=r0, var2346=$r1, var240=null_type, var2632=$r3, var531=$r4, var637=$r5, var3851=$r7, var870=$r6, var1465=$r8, var2284=$r9}
; {org.antlr.v4.runtime.tree.pattern.TagChunk=var1717, r0=var3120, $r1=var2346, null_type=var240, $r3=var2632, $r4=var531, $r5=var637, $r7=var3851, $r6=var870, $r8=var1465, $r9=var2284}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.tree.pattern.TagChunk;	$r1 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String label>;	if $r1 == null goto $r2 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String label>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r6 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2