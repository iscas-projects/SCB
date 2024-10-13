(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort var3128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-425049343 (var3483) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tag/-425049343 (var3483) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3483 var3483)
(declare-const null-String String)
(declare-const var2821 var3483) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk 
(assert (not (= var2821 null-var3483)))
(define-const var3938 String (label/-425049343 var2821)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag> 
(assert (not (= var3938 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2871 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2871)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2871!1 String)
(assert (= var2871!1 ""))
(define-const var1984 String (label/-425049343 var2821)) ; Statement: $r4 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String label> 
(assert true)
(define-const var636 String (append/672562846 var2871!1 var1984)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2871!2 String)
(assert (= var2871!2 (str.++ var2871!1 var1984)))
(assert true)
(define-const var1415 String (append/672562846 var636 ":")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var636!1 String)
(assert (= var636!1 (str.++ var636 ":")))
(define-const var3465 String (tag/-425049343 var2821)) ; Statement: $r6 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag> 
(assert true)
(define-const var3305 String (append/672562846 var1415 var3465)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1415!1 String)
(assert (= var1415!1 (str.++ var1415 var3465)))
(assert true)
(define-const var1912 String (toString/-2075883882 var3305)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-425049343=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tag/-425049343=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3483=com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk, var2821=r0, var3938=$r1, var3128=null_type, var2871=$r3, var1984=$r4, var636=$r5, var1415=$r7, var3465=$r6, var3305=$r8, var1912=$r9}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk=var3483, r0=var2821, $r1=var3938, null_type=var3128, $r3=var2871, $r4=var1984, $r5=var636, $r7=var1415, $r6=var3465, $r8=var3305, $r9=var1912}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String label>;	if $r1 == null goto $r2 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String label>;	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r6 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2