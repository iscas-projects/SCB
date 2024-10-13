(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var843 0)
(declare-sort var2945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var138) Bool)
(declare-fun isDirectory/-2122094196 (var138) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var843) String)
(declare-fun cast-from-var138-to-var843 (var138) var843)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2945_semantic_error/-498493661 (String) void)
(declare-const null-var138 var138)
(declare-const var2281 var138) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2281 null-var138)))
(assert true)
(define-const var1438 Bool (exists/1072868559 var2281)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>() 
(assert (not (= (ite var1438 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2930 Bool (isDirectory/-2122094196 var2281)) ; Statement: $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z1 != 0 goto $z2 = virtualinvoke r0.<java.io.File: boolean canWrite()>() 
(assert (not (not (= (ite var2930 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2645 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2645)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2645!1 String)
(assert (= var2645!1 ""))
(assert true)
(define-const var382 String (append/672562846 var2645!1 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2645!2 String)
(assert (= var2645!2 (str.++ var2645!1 "\u0022")))
(assert true)
(define-const var3888 String (append/-1031950772 var382 (cast-from-var138-to-var843 var2281))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var382!1 String)
(assert (str.prefixof var382 var382!1))
(assert true)
(define-const var214 String (append/672562846 var3888 " is not a valid output directory.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid output directory.") 
(declare-const var3888!1 String)
(assert (= var3888!1 (str.++ var3888 " is not a valid output directory.")))
(assert true)
(define-const var3193 String (toString/-2075883882 var214)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2945_semantic_error/-498493661 var3193)) ; Statement: staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r10) 

(declare-const var3193!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), isDirectory/-2122094196=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var138-to-var843=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2945_semantic_error/-498493661=([java.lang.String], void)}
; {var138=java.io.File, var2281=r0, var1438=$z0, var2930=$z1, var2645=$r6, var382=$r7, var843=java.lang.Object, var3888=$r8, var214=$r9, var3193=$r10, var2945=org.javacc.parser.JavaCCErrors}
; {java.io.File=var138, r0=var2281, $z0=var1438, $z1=var2930, $r6=var2645, $r7=var382, java.lang.Object=var843, $r8=var3888, $r9=var214, $r10=var3193, org.javacc.parser.JavaCCErrors=var2945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>();	$z1 = virtualinvoke r0.<java.io.File: boolean isDirectory()>();	if $z1 != 0 goto $z2 = virtualinvoke r0.<java.io.File: boolean canWrite()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid output directory.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.javacc.parser.JavaCCErrors: void semantic_error(java.lang.String)>($r10);	return
;block_num 3