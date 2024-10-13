(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3216 0)
(declare-sort var3726 0)
(declare-sort var3769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun symbolName/-133345059 (var3726) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isOnDemandCompilation/-2147371229 (var3216) Bool)
(declare-fun compilationId/-2141777069 (var3216) Int)
(declare-fun types/-2141777069 (var3216) var3769)
(declare-fun safeSourceName/-1374770292 (var3216) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3216 var3216)
(declare-const var3726-DEFAULT_SCRIPT_NAME var3726)
(declare-const null-var3769 var3769)
(declare-const var2667 var3216) ; Statement: r6 := @this: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var2667 null-var3216)))
(define-const var1383 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1383 "jdk/nashorn/internal/scripts")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("jdk/nashorn/internal/scripts") 
(declare-const var1383!1 String)
(assert (= var1383!1 "jdk/nashorn/internal/scripts"))
(assert true)
(define-const var1753 String (append/-1166366385 var1383!1 47)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var1383!2 String)
(assert (str.prefixof var1383!1 var1383!2))
(define-const var776 var3726 var3726-DEFAULT_SCRIPT_NAME) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants DEFAULT_SCRIPT_NAME> 
(assert true)
(define-const var2113 String (symbolName/-133345059 var776)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var3205 String (append/672562846 var1753 var2113)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1753!1 String)
(assert (= var1753!1 (str.++ var1753 var2113)))
(assert true)
(define-const var796 String (append/-1166366385 var3205 36)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var3205!1 String)
(assert (str.prefixof var3205 var3205!1))
(assert true)
(define-const var270 Bool (isOnDemandCompilation/-2147371229 var2667)) ; Statement: $z0 = virtualinvoke r6.<jdk.nashorn.internal.codegen.Compiler: boolean isOnDemandCompilation()>() 
 ; Statement: if $z0 == 0 goto $i0 = r6.<jdk.nashorn.internal.codegen.Compiler: int compilationId> 
(assert (= (ite var270 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3181 Int (compilationId/-2141777069 var2667)) ; Statement: $i0 = r6.<jdk.nashorn.internal.codegen.Compiler: int compilationId> 
 ; Statement: if $i0 <= 0 goto $r7 = r6.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.TypeMap types> 
(assert (<= var3181 0)) ; Cond: $i0 <= 0 
(define-const var818 var3769 (types/-2141777069 var2667)) ; Statement: $r7 = r6.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.TypeMap types> 
 ; Statement: if $r7 == null goto $r15 = specialinvoke r6.<jdk.nashorn.internal.codegen.Compiler: java.lang.String safeSourceName()>() 
(assert (= var818 null-var3769)) ; Cond: $r7 == null 
(assert true)
(define-const var2959 String (safeSourceName/-1374770292 var2667)) ; Statement: $r15 = specialinvoke r6.<jdk.nashorn.internal.codegen.Compiler: java.lang.String safeSourceName()>() 
(assert true)
;(assert (append/672562846 var796 var2959)) ; Statement: virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 var2959)))
(assert true)
(define-const var896 String (toString/-2075883882 var796!1)) ; Statement: $r16 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isOnDemandCompilation/-2147371229=([jdk.nashorn.internal.codegen.Compiler], boolean), compilationId/-2141777069=([jdk.nashorn.internal.codegen.Compiler], int), types/-2141777069=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.codegen.TypeMap), safeSourceName/-1374770292=([jdk.nashorn.internal.codegen.Compiler], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3216=jdk.nashorn.internal.codegen.Compiler, var2667=r6, var1383=$r0, var1753=$r3, var3726=jdk.nashorn.internal.codegen.CompilerConstants, var776=$r1, var2113=$r2, var3205=$r4, var796=r5, var270=$z0, var3181=$i0, var3769=jdk.nashorn.internal.codegen.TypeMap, var818=$r7, var2959=$r15, var896=$r16}
; {jdk.nashorn.internal.codegen.Compiler=var3216, r6=var2667, $r0=var1383, $r3=var1753, jdk.nashorn.internal.codegen.CompilerConstants=var3726, $r1=var776, $r2=var2113, $r4=var3205, r5=var796, $z0=var270, $i0=var3181, jdk.nashorn.internal.codegen.TypeMap=var3769, $r7=var818, $r15=var2959, $r16=var896}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: jdk.nashorn.internal.codegen.Compiler;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("jdk/nashorn/internal/scripts");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants DEFAULT_SCRIPT_NAME>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	$z0 = virtualinvoke r6.<jdk.nashorn.internal.codegen.Compiler: boolean isOnDemandCompilation()>();	if $z0 == 0 goto $i0 = r6.<jdk.nashorn.internal.codegen.Compiler: int compilationId>;	$i0 = r6.<jdk.nashorn.internal.codegen.Compiler: int compilationId>;	if $i0 <= 0 goto $r7 = r6.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.TypeMap types>;	$r7 = r6.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.TypeMap types>;	if $r7 == null goto $r15 = specialinvoke r6.<jdk.nashorn.internal.codegen.Compiler: java.lang.String safeSourceName()>();	$r15 = specialinvoke r6.<jdk.nashorn.internal.codegen.Compiler: java.lang.String safeSourceName()>();	virtualinvoke r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r16 = virtualinvoke r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 4