(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3038 0)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1406_getDebugLookahead/-1551651829 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3038 var3038)
(declare-const null-Bool Bool)
(declare-const var1645 var3038) ; Statement: r6 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1645 null-var3038)))
(declare-const var101 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var101 null-Bool)))
 ; Statement: if z0 == 0 goto $r30 = "false" 
(assert (not (= (ite var101 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1362 String "true") ; Statement: $r30 = "true" 
 ; Statement: goto [?= r0 = $r30] 
(assert true) ; Non Conditional
(define-const var610 String var1362) ; Statement: r0 = $r30 
(define-const var377 Bool var1406_getDebugLookahead/-1551651829) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getDebugLookahead()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var377 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1400 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1400)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1400!1 String)
(assert (= var1400!1 ""))
(assert true)
(define-const var2488 String (append/672562846 var1400!1 "return ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("return ") 
(declare-const var1400!2 String)
(assert (= var1400!2 (str.++ var1400!1 "return ")))
(assert true)
(define-const var81 String (append/672562846 var2488 var610)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2488!1 String)
(assert (= var2488!1 (str.++ var2488 var610)))
(assert true)
(define-const var1503 String (append/672562846 var81 ";")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var81!1 String)
(assert (= var81!1 (str.++ var81 ";")))
(assert true)
(define-const var454 String (toString/-2075883882 var1503)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1406_getDebugLookahead/-1551651829=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3038=org.javacc.parser.ParseEngine, var1645=r6, var101=z0, var1362=$r30, var610=r0, var1406=org.javacc.parser.Options, var377=$z1, var1400=$r1, var2488=$r2, var81=$r3, var1503=$r4, var454=$r5}
; {org.javacc.parser.ParseEngine=var3038, r6=var1645, z0=var101, $r30=var1362, r0=var610, org.javacc.parser.Options=var1406, $z1=var377, $r1=var1400, $r2=var2488, $r3=var81, $r4=var1503, $r5=var454}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.javacc.parser.ParseEngine;	z0 := @parameter0: boolean;	if z0 == 0 goto $r30 = "false";	$r30 = "true";	goto [?= r0 = $r30];	r0 = $r30;	$z1 = staticinvoke <org.javacc.parser.Options: boolean getDebugLookahead()>();	if $z1 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("return ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4