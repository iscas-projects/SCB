(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3216 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3216-init () var3216)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3216 var47) void)
(declare-fun cast-from-String-to-var47 (String) var47)
(declare-const null-Int Int)
(declare-const var372 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var372 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto return "template namespace";     case 2: goto return "local scope";     case 3: goto return "global scope";     default: goto $r0 = new java.lang.AssertionError; } 
(assert (and (not (= var372 3)) (and (not (= var372 2)) (and (not (= var372 1)) true)))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional   
(define-const var1733 var3216 var3216-init) ; Statement: $r0 = new java.lang.AssertionError 
(define-const var3078 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3078)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3078!1 String)
(assert (= var3078!1 ""))
(assert true)
(define-const var2383 String (append/672562846 var3078!1 "Unsupported scope: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported scope: ") 
(declare-const var3078!2 String)
(assert (= var3078!2 (str.++ var3078!1 "Unsupported scope: ")))
(assert true)
(define-const var1625 String (append/-1001720160 var2383 var372)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2383!1 String)
(assert (str.prefixof var2383 var2383!1))
(assert true)
(define-const var1319 String (toString/-2075883882 var1625)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1733 (cast-from-String-to-var47 var1319))) ; Statement: specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r4) 

(declare-const var1733!1 var3216)
(declare-const var1319!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3216-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var47=([java.lang.String], java.lang.Object)}
; {var372=i0, var3216=java.lang.AssertionError, var1733=$r0, var3078=$r1, var2383=$r2, var1625=$r3, var1319=$r4, var47=java.lang.Object}
; {i0=var372, java.lang.AssertionError=var3216, $r0=var1733, $r1=var3078, $r2=var2383, $r3=var1625, $r4=var1319, java.lang.Object=var47}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto return "template namespace";     case 2: goto return "local scope";     case 3: goto return "global scope";     default: goto $r0 = new java.lang.AssertionError; };	$r0 = new java.lang.AssertionError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported scope: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.AssertionError: void <init>(java.lang.Object)>($r4);	throw $r0
;block_num 2