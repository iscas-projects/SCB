(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var53 0)
(declare-sort var211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classStarted/619462538 (var1211) Bool)
(declare-fun var53-init () var53)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun unitClassName/619462538 (var1211) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var53 var211) void)
(declare-fun cast-from-String-to-var211 (String) var211)
(declare-const null-var1211 var1211)
(declare-const var1211-$assertionsDisabled Bool)
(declare-const var2308 var1211) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.ClassEmitter 
(assert (not (= var2308 null-var1211)))
(define-const var3468 Bool var1211-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.ClassEmitter: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: java.lang.String unitClassName> 
(assert (not (not (= (ite var3468 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1849 Bool (classStarted/619462538 var2308)) ; Statement: $z3 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: boolean classStarted> 
 ; Statement: if $z3 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: java.lang.String unitClassName> 
(assert (not (not (= (ite var1849 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var784 var53 var53-init) ; Statement: $r15 = new java.lang.AssertionError 
(define-const var2931 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2931)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2931!1 String)
(assert (= var2931!1 ""))
(assert true)
(define-const var2505 String (append/672562846 var2931!1 "class not started for ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class not started for ") 
(declare-const var2931!2 String)
(assert (= var2931!2 (str.++ var2931!1 "class not started for ")))
(define-const var37 String (unitClassName/619462538 var2308)) ; Statement: $r17 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: java.lang.String unitClassName> 
(assert true)
(define-const var3633 String (append/672562846 var2505 var37)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2505!1 String)
(assert (= var2505!1 (str.++ var2505 var37)))
(assert true)
(define-const var46 String (toString/-2075883882 var3633)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var784 (cast-from-String-to-var211 var46))) ; Statement: specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20) 

(declare-const var784!1 var53)
(declare-const var46!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {classStarted/619462538=([jdk.nashorn.internal.codegen.ClassEmitter], boolean), var53-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), unitClassName/619462538=([jdk.nashorn.internal.codegen.ClassEmitter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var211=([java.lang.String], java.lang.Object)}
; {var1211=jdk.nashorn.internal.codegen.ClassEmitter, var2308=r0, var3468=$z0, var1849=$z3, var53=java.lang.AssertionError, var784=$r15, var2931=$r16, var2505=$r18, var37=$r17, var3633=$r19, var46=$r20, var211=java.lang.Object}
; {jdk.nashorn.internal.codegen.ClassEmitter=var1211, r0=var2308, $z0=var3468, $z3=var1849, java.lang.AssertionError=var53, $r15=var784, $r16=var2931, $r18=var2505, $r17=var37, $r19=var3633, $r20=var46, java.lang.Object=var211}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.ClassEmitter;	$z0 = <jdk.nashorn.internal.codegen.ClassEmitter: boolean $assertionsDisabled>;	if $z0 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: java.lang.String unitClassName>;	$z3 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: boolean classStarted>;	if $z3 != 0 goto $r1 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: java.lang.String unitClassName>;	$r15 = new java.lang.AssertionError;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class not started for ");	$r17 = r0.<jdk.nashorn.internal.codegen.ClassEmitter: java.lang.String unitClassName>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20);	throw $r15
;block_num 3