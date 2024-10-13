(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3404 0)
(declare-sort var1236 0)
(declare-sort var1935 0)
(declare-sort var2472 0)
(declare-sort var2911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1236-to-var2472 (var1236) var2472)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2911_booleanValue/1280995494 (String) Bool)
(declare-const null-var3404 var3404)
(declare-const null-var1236 var1236)
(declare-const null-var1935 var1935)
(declare-const var1933 var3404) ; Statement: r8 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1933 null-var3404)))
(declare-const var1179 var1236) ; Statement: r0 := @parameter0: org.javacc.parser.Expansion 
(assert (not (= var1179 null-var1236)))
(define-const var1458 String "") ; Statement: r371 = "" 
(define-const var3878 var1935 null-var1935) ; Statement: r372 = null 
(define-const var1522 Bool false) ; Statement: $z0 = r0 instanceof org.javacc.parser.RegularExpression 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.javacc.parser.NonTerminal 
(assert (= (ite var1522 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1725 Bool false) ; Statement: $z1 = r0 instanceof org.javacc.parser.NonTerminal 
 ; Statement: if $z1 == 0 goto $z2 = r0 instanceof org.javacc.parser.Action 
(assert (= (ite var1725 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1407 Bool false) ; Statement: $z2 = r0 instanceof org.javacc.parser.Action 
 ; Statement: if $z2 == 0 goto $z3 = r0 instanceof org.javacc.parser.Choice 
(assert (not (= (ite var1407 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3915 var2472 (cast-from-var1236-to-var2472 var1179)) ; Statement: r387 = (org.javacc.parser.Action) r0 
(define-const var3176 String String-init) ; Statement: $r247 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3176)) ; Statement: specialinvoke $r247.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3176!1 String)
(assert (= var3176!1 ""))
(assert true)
(define-const var2891 String (append/672562846 var3176!1 "")) ; Statement: $r248 = virtualinvoke $r247.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var3176!2 String)
(assert (= var3176!2 (str.++ var3176!1 "")))
(assert true)
(define-const var2531 String (append/672562846 var2891 "\u0003\n")) ; Statement: $r249 = virtualinvoke $r248.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u0003\n") 
(declare-const var2891!1 String)
(assert (= var2891!1 (str.++ var2891 "\u0003\n")))
(assert true)
(define-const var2937 String (toString/-2075883882 var2531)) ; Statement: r388 = virtualinvoke $r249.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2202 Bool (var2911_booleanValue/1280995494 "IGNORE_ACTIONS")) ; Statement: $z30 = staticinvoke <org.javacc.parser.Options: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS") 
 ; Statement: if $z30 != 0 goto $r390 = new java.lang.StringBuilder 
(assert (not (= (ite var2202 1 0) 0))) ; Cond: $z30 != 0 
(define-const var2933 String String-init) ; Statement: $r390 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2933)) ; Statement: specialinvoke $r390.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2933!1 String)
(assert (= var2933!1 ""))
(assert true)
(define-const var3480 String (append/672562846 var2933!1 var2937)) ; Statement: $r391 = virtualinvoke $r390.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r388) 
(declare-const var2933!2 String)
(assert (= var2933!2 (str.++ var2933!1 var2937)))
(assert true)
(define-const var1656 String (append/672562846 var3480 "\u0004")) ; Statement: $r392 = virtualinvoke $r391.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u0004") 
(declare-const var3480!1 String)
(assert (= var3480!1 (str.++ var3480 "\u0004")))
(assert true)
(define-const var1458!1 String (toString/-2075883882 var1656)) ; Statement: r371 = virtualinvoke $r392.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r371] 
(assert true) ; Non Conditional
 ; Statement: return r371 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1236-to-var2472=([org.javacc.parser.Expansion], org.javacc.parser.Action), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2911_booleanValue/1280995494=([java.lang.String], boolean)}
; {var3404=org.javacc.parser.ParseEngine, var1933=r8, var1236=org.javacc.parser.Expansion, var1179=r0, var1458=r371, var1935=org.javacc.parser.Token, var3878=r372, var1522=$z0, var1725=$z1, var1407=$z2, var2472=org.javacc.parser.Action, var3915=r387, var3176=$r247, var2891=$r248, var2531=$r249, var2937=r388, var2911=org.javacc.parser.Options, var2202=$z30, var2933=$r390, var3480=$r391, var1656=$r392}
; {org.javacc.parser.ParseEngine=var3404, r8=var1933, org.javacc.parser.Expansion=var1236, r0=var1179, r371=var1458, org.javacc.parser.Token=var1935, r372=var3878, $z0=var1522, $z1=var1725, $z2=var1407, org.javacc.parser.Action=var2472, r387=var3915, $r247=var3176, $r248=var2891, $r249=var2531, r388=var2937, org.javacc.parser.Options=var2911, $z30=var2202, $r390=var2933, $r391=var3480, $r392=var1656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r8 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Expansion;	r371 = "";	r372 = null;	$z0 = r0 instanceof org.javacc.parser.RegularExpression;	if $z0 == 0 goto $z1 = r0 instanceof org.javacc.parser.NonTerminal;	$z1 = r0 instanceof org.javacc.parser.NonTerminal;	if $z1 == 0 goto $z2 = r0 instanceof org.javacc.parser.Action;	$z2 = r0 instanceof org.javacc.parser.Action;	if $z2 == 0 goto $z3 = r0 instanceof org.javacc.parser.Choice;	r387 = (org.javacc.parser.Action) r0;	$r247 = new java.lang.StringBuilder;	specialinvoke $r247.<java.lang.StringBuilder: void <init>()>();	$r248 = virtualinvoke $r247.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r249 = virtualinvoke $r248.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u0003\n");	r388 = virtualinvoke $r249.<java.lang.StringBuilder: java.lang.String toString()>();	$z30 = staticinvoke <org.javacc.parser.Options: boolean booleanValue(java.lang.String)>("IGNORE_ACTIONS");	if $z30 != 0 goto $r390 = new java.lang.StringBuilder;	$r390 = new java.lang.StringBuilder;	specialinvoke $r390.<java.lang.StringBuilder: void <init>()>();	$r391 = virtualinvoke $r390.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r388);	$r392 = virtualinvoke $r391.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u0004");	r371 = virtualinvoke $r392.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r371];	return r371
;block_num 6