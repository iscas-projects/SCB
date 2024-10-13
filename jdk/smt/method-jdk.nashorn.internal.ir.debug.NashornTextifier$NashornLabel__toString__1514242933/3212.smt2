(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bci/1435210901 (var2993) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2993 var2993)
(declare-const var864 var2993) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel 
(assert (not (= var864 null-var2993)))
(define-const var3161 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3161)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3161!1 String)
(assert (= var3161!1 ""))
(assert true)
(define-const var2405 String (append/672562846 var3161!1 "label ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("label ") 
(declare-const var3161!2 String)
(assert (= var3161!2 (str.++ var3161!1 "label ")))
(define-const var299 Int (bci/1435210901 var864)) ; Statement: $i0 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel: int bci> 
(assert true)
(define-const var3842 String (append/-1001720160 var2405 var299)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2405!1 String)
(assert (str.prefixof var2405 var2405!1))
(assert true)
(define-const var1717 String (toString/-2075883882 var3842)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bci/1435210901=([jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2993=jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel, var864=r1, var3161=$r0, var2405=$r2, var299=$i0, var3842=$r3, var1717=$r4}
; {jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel=var2993, r1=var864, $r0=var3161, $r2=var2405, $i0=var299, $r3=var3842, $r4=var1717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("label ");	$i0 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier$NashornLabel: int bci>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1