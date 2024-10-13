(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2741 0)
(declare-sort var185 0)
(declare-sort var209 0)
(declare-sort var2062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun symbol/-1646641349 (var2741) var185)
(declare-fun getName/-601631167 (var185) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1646641349 (var2741) var209)
(declare-fun append/-1031950772 (String var2062) String)
(declare-fun cast-from-var209-to-var2062 (var209) var2062)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2741 var2741)
(declare-const var2354 var2741) ; Statement: r1 := @this: jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption 
(assert (not (= var2354 null-var2741)))
(define-const var2488 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2488)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2488!1 String)
(assert (= var2488!1 ""))
(define-const var1464 var185 (symbol/-1646641349 var2354)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption: jdk.nashorn.internal.ir.Symbol symbol> 
(assert true)
(define-const var28 String (getName/-601631167 var1464)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(assert true)
(define-const var1847 String (append/672562846 var2488!1 var28)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2488!2 String)
(assert (= var2488!2 (str.++ var2488!1 var28)))
(assert true)
(define-const var891 String (append/672562846 var1847 "=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var1847!1 String)
(assert (= var1847!1 (str.++ var1847 "=")))
(define-const var1481 var209 (type/-1646641349 var2354)) ; Statement: $r5 = r1.<jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption: jdk.nashorn.internal.codegen.types.Type type> 
(assert true)
(define-const var3135 String (append/-1031950772 var891 (cast-from-var209-to-var2062 var1481))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var891!1 String)
(assert (str.prefixof var891 var891!1))
(assert true)
(define-const var3155 String (toString/-2075883882 var3135)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), symbol/-1646641349=([jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption], jdk.nashorn.internal.ir.Symbol), getName/-601631167=([jdk.nashorn.internal.ir.Symbol], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1646641349=([jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption], jdk.nashorn.internal.codegen.types.Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var209-to-var2062=([jdk.nashorn.internal.codegen.types.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2741=jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption, var2354=r1, var2488=$r0, var185=jdk.nashorn.internal.ir.Symbol, var1464=$r2, var28=$r3, var1847=$r4, var891=$r6, var209=jdk.nashorn.internal.codegen.types.Type, var1481=$r5, var2062=java.lang.Object, var3135=$r7, var3155=$r8}
; {jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption=var2741, r1=var2354, $r0=var2488, jdk.nashorn.internal.ir.Symbol=var185, $r2=var1464, $r3=var28, $r4=var1847, $r6=var891, jdk.nashorn.internal.codegen.types.Type=var209, $r5=var1481, java.lang.Object=var2062, $r7=var3135, $r8=var3155}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption: jdk.nashorn.internal.ir.Symbol symbol>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r5 = r1.<jdk.nashorn.internal.ir.OptimisticLexicalContext$Assumption: jdk.nashorn.internal.codegen.types.Type type>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1