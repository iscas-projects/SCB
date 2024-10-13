(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1115 0)
(declare-sort var2045 0)
(declare-sort var2299 0)
(declare-sort var803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2299_requireNonNull/-961817614 (var2045) var2045)
(declare-fun cast-from-String-to-var2045 (String) var2045)
(declare-fun cast-from-var2045-to-String (var2045) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var803-init () var803)
(declare-fun <init>/875830710 (var803 String) void)
(declare-const null-String String)
(declare-const var3370 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3370 null-String)))
(define-const var2562 var2045 (var2299_requireNonNull/-961817614 (cast-from-String-to-var2045 var3370))) ; Statement: $r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 
(define-const var3479 String (cast-from-var2045-to-String var2562)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var2065 Bool (startsWith/-1785782452 var3479 "nashorn.")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("nashorn.") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2065 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var407 var803 var803-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var407 var3370)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r0) 

(declare-const var407!1 var803)
(declare-const var3370!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2299_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var2045=([java.lang.String], java.lang.Object), cast-from-var2045-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var803-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3370=r0, var1115=null_type, var2045=java.lang.Object, var2299=java.util.Objects, var2562=$r1, var3479=$r2, var2065=$z0, var803=java.lang.IllegalArgumentException, var407=$r3}
; {r0=var3370, null_type=var1115, java.lang.Object=var2045, java.util.Objects=var2299, $r1=var2562, $r2=var3479, $z0=var2065, java.lang.IllegalArgumentException=var803, $r3=var407}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	$r2 = (java.lang.String) $r1;	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("nashorn.");	if $z0 != 0 goto return;	$r3 = new java.lang.IllegalArgumentException;	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r0);	throw $r3
;block_num 2