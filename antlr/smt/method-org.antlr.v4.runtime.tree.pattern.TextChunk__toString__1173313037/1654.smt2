(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/1495431469 (var3326) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3326 var3326)
(declare-const var3097 var3326) ; Statement: r1 := @this: org.antlr.v4.runtime.tree.pattern.TextChunk 
(assert (not (= var3097 null-var3326)))
(define-const var2772 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2772)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2772!1 String)
(assert (= var2772!1 ""))
(assert true)
(define-const var3376 String (append/672562846 var2772!1 "\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2772!2 String)
(assert (= var2772!2 (str.++ var2772!1 "\u0027")))
(define-const var1659 String (text/1495431469 var3097)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.tree.pattern.TextChunk: java.lang.String text> 
(assert true)
(define-const var1796 String (append/672562846 var3376 var1659)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3376!1 String)
(assert (= var3376!1 (str.++ var3376 var1659)))
(assert true)
(define-const var2701 String (append/672562846 var1796 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1796!1 String)
(assert (= var1796!1 (str.++ var1796 "\u0027")))
(assert true)
(define-const var3997 String (toString/-2075883882 var2701)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), text/1495431469=([org.antlr.v4.runtime.tree.pattern.TextChunk], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3326=org.antlr.v4.runtime.tree.pattern.TextChunk, var3097=r1, var2772=$r0, var3376=$r3, var1659=$r2, var1796=$r4, var2701=$r5, var3997=$r6}
; {org.antlr.v4.runtime.tree.pattern.TextChunk=var3326, r1=var3097, $r0=var2772, $r3=var3376, $r2=var1659, $r4=var1796, $r5=var2701, $r6=var3997}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.tree.pattern.TextChunk;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r2 = r1.<org.antlr.v4.runtime.tree.pattern.TextChunk: java.lang.String text>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1