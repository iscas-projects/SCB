(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1225_getPrefixName/234183653 (Bool) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2284 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2284 null-Int)))
(declare-const var3733 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3733 null-Int)))
(declare-const var3894 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3894 null-Bool)))
(define-const var1681 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1681)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1681!1 String)
(assert (= var1681!1 ""))
(assert true)
(define-const var1703 String (append/672562846 var1681!1 "jdk/nashorn/internal/scripts/")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/internal/scripts/") 
(declare-const var1681!2 String)
(assert (= var1681!2 (str.++ var1681!1 "jdk/nashorn/internal/scripts/")))
(define-const var2719 String (var1225_getPrefixName/234183653 var3894)) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(z0) 
(assert true)
(define-const var3472 String (append/672562846 var1703 var2719)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1703!1 String)
(assert (= var1703!1 (str.++ var1703 var2719)))
(assert true)
(define-const var251 String (append/-1001720160 var3472 var2284)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3472!1 String)
(assert (str.prefixof var3472 var3472!1))
(assert true)
(define-const var949 String (append/672562846 var251 "P")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("P") 
(declare-const var251!1 String)
(assert (= var251!1 (str.++ var251 "P")))
(assert true)
(define-const var2839 String (append/-1001720160 var949 var3733)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var949!1 String)
(assert (str.prefixof var949 var949!1))
(assert true)
(define-const var806 String (toString/-2075883882 var2839)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1225_getPrefixName/234183653=([boolean], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2284=i0, var3733=i1, var3894=z0, var1681=$r0, var1703=$r2, var1225=jdk.nashorn.internal.codegen.ObjectClassGenerator, var2719=$r1, var3472=$r3, var251=$r4, var949=$r5, var2839=$r6, var806=$r7}
; {i0=var2284, i1=var3733, z0=var3894, $r0=var1681, $r2=var1703, jdk.nashorn.internal.codegen.ObjectClassGenerator=var1225, $r1=var2719, $r3=var3472, $r4=var251, $r5=var949, $r6=var2839, $r7=var806}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jdk/nashorn/internal/scripts/");	$r1 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(boolean)>(z0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("P");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1