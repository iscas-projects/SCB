(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3636 0)
(declare-sort var2611 0)
(declare-sort var3062 0)
(declare-sort var3434 0)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var3062-to-var3434 (var3062) var3434)
(declare-fun image/-300401223 (var3434) String)
(declare-fun var697_add_escapes/462827422 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var2611-lg var3636)
(declare-const var3636-rexprs (Array Int var3062))
(declare-const var3039 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3039 null-Int)))
(define-const var3404 var3636 var2611-lg) ; Statement: $r0 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var2304 (Array Int var3062) var3636-rexprs) ; Statement: $r1 = <org.javacc.parser.LexGen: org.javacc.parser.RegularExpression[] rexprs> 
(define-const var2111 var3062 (select var2304 var3039)) ; Statement: r2 = $r1[i0] 
(define-const var2855 Bool false) ; Statement: $z0 = r2 instanceof org.javacc.parser.RStringLiteral 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.javacc.parser.RegularExpression: java.lang.String label> 
(assert (not (= (ite var2855 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2446 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2446)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2446!1 String)
(assert (= var2446!1 ""))
(assert true)
(define-const var3593 String (append/672562846 var2446!1 " \u0022")) ; Statement: $r19 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \"") 
(declare-const var2446!2 String)
(assert (= var2446!2 (str.++ var2446!1 " \u0022")))
(define-const var3733 var3434 (cast-from-var3062-to-var3434 var2111)) ; Statement: $r16 = (org.javacc.parser.RStringLiteral) r2 
(define-const var1390 String (image/-300401223 var3733)) ; Statement: $r17 = $r16.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(define-const var1674 String (var697_add_escapes/462827422 var1390)) ; Statement: $r18 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String add_escapes(java.lang.String)>($r17) 
(assert true)
(define-const var1733 String (append/672562846 var3593 var1674)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3593!1 String)
(assert (= var3593!1 (str.++ var3593 var1674)))
(assert true)
(define-const var930 String (append/672562846 var1733 "\u0022")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1733!1 String)
(assert (= var1733!1 (str.++ var1733 "\u0022")))
(assert true)
(define-const var1827 String (toString/-2075883882 var930)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var3062-to-var3434=([org.javacc.parser.RegularExpression], org.javacc.parser.RStringLiteral), image/-300401223=([org.javacc.parser.RStringLiteral], java.lang.String), var697_add_escapes/462827422=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3039=i0, var3636=org.javacc.parser.LexGen, var2611=org.javacc.parser.Main, var3404=$r0, var3062=org.javacc.parser.RegularExpression, var2304=$r1, var2111=r2, var2855=$z0, var2446=$r15, var3593=$r19, var3434=org.javacc.parser.RStringLiteral, var3733=$r16, var1390=$r17, var697=org.javacc.parser.JavaCCGlobals, var1674=$r18, var1733=$r20, var930=$r21, var1827=$r22}
; {i0=var3039, org.javacc.parser.LexGen=var3636, org.javacc.parser.Main=var2611, $r0=var3404, org.javacc.parser.RegularExpression=var3062, $r1=var2304, r2=var2111, $z0=var2855, $r15=var2446, $r19=var3593, org.javacc.parser.RStringLiteral=var3434, $r16=var3733, $r17=var1390, org.javacc.parser.JavaCCGlobals=var697, $r18=var1674, $r20=var1733, $r21=var930, $r22=var1827}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r1 = <org.javacc.parser.LexGen: org.javacc.parser.RegularExpression[] rexprs>;	r2 = $r1[i0];	$z0 = r2 instanceof org.javacc.parser.RStringLiteral;	if $z0 == 0 goto $r3 = r2.<org.javacc.parser.RegularExpression: java.lang.String label>;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \"");	$r16 = (org.javacc.parser.RStringLiteral) r2;	$r17 = $r16.<org.javacc.parser.RStringLiteral: java.lang.String image>;	$r18 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String add_escapes(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 2