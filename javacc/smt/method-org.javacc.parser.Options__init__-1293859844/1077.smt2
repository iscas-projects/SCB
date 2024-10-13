(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1911 0)
(declare-sort var1349 0)
(declare-sort var3767 0)
(declare-sort var1673 0)
(declare-sort var874 0)
(declare-sort var2013 0)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1911-init () var1911)
(declare-fun <init>/-201242697 (var1911) void)
(declare-fun cast-from-var1911-to-var1349 (var1911) var1349)
(declare-fun var3767-init () var3767)
(declare-fun <init>/451842749 (var3767) void)
(declare-fun cast-from-var3767-to-var1673 (var3767) var1673)
(declare-fun var1673_iterator/1911472585 (var1673) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1349_get/1088891777 (var1349 var2013) var2013)
(declare-fun cast-from-String-to-var2013 (String) var2013)
(declare-fun var217_valueOf/1602327315 (Bool) var217)
(declare-fun var1349_put/1464166817 (var1349 var2013 var2013) var2013)
(declare-fun cast-from-var217-to-var2013 (var217) var2013)
(declare-const var874-userOptions var1673)
(declare-const var874-optionValues var1349)
(define-const var223 var1911 var1911-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var223)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var223!1 var1911)
(define-const var3446 var1349 (cast-from-var1911-to-var1349 var223!1)) ; Statement: <org.javacc.parser.Options: java.util.Map optionValues> = $r0 
(define-const var1048 var3767 var3767-init) ; Statement: $r1 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var1048)) ; Statement: specialinvoke $r1.<java.util.HashSet: void <init>()>() 

(declare-const var1048!1 var3767)
(define-const var3699 var1673 (cast-from-var3767-to-var1673 var1048!1)) ; Statement: <org.javacc.parser.Options: java.util.Set cmdLineSetting> = $r1 
(define-const var2351 var3767 var3767-init) ; Statement: $r2 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2351)) ; Statement: specialinvoke $r2.<java.util.HashSet: void <init>()>() 

(declare-const var2351!1 var3767)
(define-const var1134 var1673 (cast-from-var3767-to-var1673 var2351!1)) ; Statement: <org.javacc.parser.Options: java.util.Set inputFileSetting> = $r2 
(define-const var3215 var1673 var874-userOptions) ; Statement: $r3 = <org.javacc.parser.Options: java.util.Set userOptions> 
(define-const var3238 Iterator (var1673_iterator/1911472585 var3215)) ; Statement: r12 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3871 Bool (Iterator_hasNext/-1669924200 var3238)) ; Statement: $z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = <org.javacc.parser.Options: java.util.Map optionValues> 
(assert (= (ite var3871 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2352 var1349 var874-optionValues) ; Statement: $r4 = <org.javacc.parser.Options: java.util.Map optionValues> 
(define-const var1450 var2013 (var1349_get/1088891777 var2352 (cast-from-String-to-var2013 "JAVA_TEMPLATE_TYPE"))) ; Statement: r14 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>("JAVA_TEMPLATE_TYPE") 
(define-const var3704 String "classic") ; Statement: $r5 = "classic" 
(assert true)
(define-const var716 Bool false) ; Statement: z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r14) 
(define-const var1686 var1349 var874-optionValues) ; Statement: $r6 = <org.javacc.parser.Options: java.util.Map optionValues> 
(define-const var535 var217 (var217_valueOf/1602327315 var716)) ; Statement: $r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z1) 
;(assert (var1349_put/1464166817 var1686 (cast-from-String-to-var2013 "LEGACY_EXCEPTION_HANDLING") (cast-from-var217-to-var2013 var535))) ; Statement: interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("LEGACY_EXCEPTION_HANDLING", $r7) 

(declare-const var1686!1 var1349)
(declare-const var731 String)
(declare-const var535!1 var217)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1911-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1911-to-var1349=([java.util.HashMap], java.util.Map), var3767-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), cast-from-var3767-to-var1673=([java.util.HashSet], java.util.Set), var1673_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1349_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2013=([java.lang.String], java.lang.Object), var217_valueOf/1602327315=([boolean], java.lang.Boolean), var1349_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var217-to-var2013=([java.lang.Boolean], java.lang.Object)}
; {var1911=java.util.HashMap, var223=$r0, var1349=java.util.Map, var3446=<org.javacc.parser.Options: java.util.Map optionValues>, var3767=java.util.HashSet, var1048=$r1, var1673=java.util.Set, var3699=<org.javacc.parser.Options: java.util.Set cmdLineSetting>, var2351=$r2, var1134=<org.javacc.parser.Options: java.util.Set inputFileSetting>, var874=org.javacc.parser.Options, var3215=$r3, var3238=r12, var3871=$z0, var2352=$r4, var2013=java.lang.Object, var1450=r14, var3704=$r5, var716=z1, var1686=$r6, var217=java.lang.Boolean, var535=$r7, var731="LEGACY_EXCEPTION_HANDLING"}
; {java.util.HashMap=var1911, $r0=var223, java.util.Map=var1349, <org.javacc.parser.Options: java.util.Map optionValues>=var3446, java.util.HashSet=var3767, $r1=var1048, java.util.Set=var1673, <org.javacc.parser.Options: java.util.Set cmdLineSetting>=var3699, $r2=var2351, <org.javacc.parser.Options: java.util.Set inputFileSetting>=var1134, org.javacc.parser.Options=var874, $r3=var3215, r12=var3238, $z0=var3871, $r4=var2352, java.lang.Object=var2013, r14=var1450, $r5=var3704, z1=var716, $r6=var1686, java.lang.Boolean=var217, $r7=var535, "LEGACY_EXCEPTION_HANDLING"=var731}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	<org.javacc.parser.Options: java.util.Map optionValues> = $r0;	$r1 = new java.util.HashSet;	specialinvoke $r1.<java.util.HashSet: void <init>()>();	<org.javacc.parser.Options: java.util.Set cmdLineSetting> = $r1;	$r2 = new java.util.HashSet;	specialinvoke $r2.<java.util.HashSet: void <init>()>();	<org.javacc.parser.Options: java.util.Set inputFileSetting> = $r2;	$r3 = <org.javacc.parser.Options: java.util.Set userOptions>;	r12 = interfaceinvoke $r3.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = <org.javacc.parser.Options: java.util.Map optionValues>;	$r4 = <org.javacc.parser.Options: java.util.Map optionValues>;	r14 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>("JAVA_TEMPLATE_TYPE");	$r5 = "classic";	z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r14);	$r6 = <org.javacc.parser.Options: java.util.Map optionValues>;	$r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z1);	interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("LEGACY_EXCEPTION_HANDLING", $r7);	return
;block_num 3