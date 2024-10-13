(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2085_getPrefixName/234183653 (Bool) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1035 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1035 null-Int)))
(declare-const var816 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var816 null-Bool)))
(define-const var519 String (var2085_getPrefixName/234183653 var816)) ; Statement: r0 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(z0) 
 ; Statement: if i0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= var1035 0))) ; Negate: Cond: i0 == 0  
(define-const var2356 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2356)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2356!1 String)
(assert (= var2356!1 ""))
(assert true)
(define-const var1567 String (append/672562846 var2356!1 "jdk/nashorn/internal/scripts/")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/internal/scripts/") 
(declare-const var2356!2 String)
(assert (= var2356!2 (str.++ var2356!1 "jdk/nashorn/internal/scripts/")))
(assert true)
(define-const var3239 String (append/672562846 var1567 var519)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1567!1 String)
(assert (= var1567!1 (str.++ var1567 var519)))
(assert true)
(define-const var3068 String (append/-1001720160 var3239 var1035)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3239!1 String)
(assert (str.prefixof var3239 var3239!1))
(assert true)
(define-const var538 String (toString/-2075883882 var3068)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2085_getPrefixName/234183653=([boolean], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1035=i0, var816=z0, var2085=jdk.nashorn.internal.codegen.ObjectClassGenerator, var519=r0, var2356=$r4, var1567=$r5, var3239=$r6, var3068=$r7, var538=$r8}
; {i0=var1035, z0=var816, jdk.nashorn.internal.codegen.ObjectClassGenerator=var2085, r0=var519, $r4=var2356, $r5=var1567, $r6=var3239, $r7=var3068, $r8=var538}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	z0 := @parameter1: boolean;	r0 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(z0);	if i0 == 0 goto $r1 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/internal/scripts/");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r8];	return $r8
;block_num 3