(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2941 0)
(declare-sort var3483 0)
(declare-sort var596 0)
(declare-sort var999 0)
(declare-sort var2495 0)
(declare-sort var3464 0)
(declare-sort var1637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var596!class ClassObject)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3483_loadGlobalConformance/167913896 (ClassObject) var2941)
(declare-fun var999_of/-695793745 (var2495) var999)
(declare-fun cast-from-var2941-to-var2495 (var2941) var2495)
(declare-fun var3464-init () var3464)
(declare-fun <init>/491815619 (var3464) void)
(declare-fun cast-from-var3464-to-var1637 (var3464) var1637)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var1496 String "ABCDEFGHIJKLMNOPQRSTUVWXYZ$") ; Statement: $r0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ$" 
(assert true)
(define-const var3991 (Array Int Int) (toCharArray/415275702 var1496)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3782 (Array Int Int) var3991) ; Statement: <com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_FIRST_CHARS> = $r1 
(define-const var1694 String "_$") ; Statement: $r2 = "_$" 
(assert true)
(define-const var2322 (Array Int Int) (toCharArray/415275702 var1694)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(define-const var1962 (Array Int Int) var2322) ; Statement: <com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_NON_FIRST_CHARS> = $r3 
(define-const var2917 (Array Int Int) arr-Int-init) ; Statement: $r4 = newarray (char)[1] 
(declare-const var2917!1 (Array Int Int))
(assert (not (= var2917!1 null-__Array__Int__Int__)))
(assert (= (select var2917!1 0) 36)) ; Statement: $r4[0] = 36 
(define-const var797 (Array Int Int) var2917!1) ; Statement: <com.google.javascript.jscomp.CompilerOptions: char[] ANGULAR_PROPERTY_RESERVED_FIRST_CHARS> = $r4 
(define-const var1306 var2941 (var3483_loadGlobalConformance/167913896 var596!class)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.resources.ResourceLoader: com.google.javascript.jscomp.ConformanceConfig loadGlobalConformance(java.lang.Class)>(class "Lcom/google/javascript/jscomp/CompilerOptions;") 
(define-const var3857 var999 (var999_of/-695793745 (cast-from-var2941-to-var2495 var1306))) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList of(java.lang.Object)>($r5) 
(define-const var2799 var999 var3857) ; Statement: <com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList GLOBAL_CONFORMANCE_CONFIGS> = $r6 
(define-const var3509 var3464 var3464-init) ; Statement: $r7 = new com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler 
(assert true)
;(assert (<init>/491815619 var3509)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler: void <init>()>() 

(declare-const var3509!1 var3464)
(define-const var2203 var1637 (cast-from-var3464-to-var1637 var3509!1)) ; Statement: <com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.CompilerOptions$AliasTransformationHandler NULL_ALIAS_TRANSFORMATION_HANDLER> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), arr-Int-init=([], char[]), var3483_loadGlobalConformance/167913896=([java.lang.Class], com.google.javascript.jscomp.ConformanceConfig), var999_of/-695793745=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), cast-from-var2941-to-var2495=([com.google.javascript.jscomp.ConformanceConfig], java.lang.Object), var3464-init=([], com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler), <init>/491815619=([com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler], void), cast-from-var3464-to-var1637=([com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler], com.google.javascript.jscomp.CompilerOptions$AliasTransformationHandler)}
; {var1496=$r0, var3991=$r1, var3782=<com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_FIRST_CHARS>, var1694=$r2, var2322=$r3, var1962=<com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_NON_FIRST_CHARS>, var2917=$r4, var797=<com.google.javascript.jscomp.CompilerOptions: char[] ANGULAR_PROPERTY_RESERVED_FIRST_CHARS>, var2941=com.google.javascript.jscomp.ConformanceConfig, var3483=com.google.javascript.jscomp.resources.ResourceLoader, var596=com.google.javascript.jscomp.CompilerOptions, var1306=$r5, var999=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2495=java.lang.Object, var3857=$r6, var2799=<com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList GLOBAL_CONFORMANCE_CONFIGS>, var3464=com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler, var3509=$r7, var1637=com.google.javascript.jscomp.CompilerOptions$AliasTransformationHandler, var2203=<com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.CompilerOptions$AliasTransformationHandler NULL_ALIAS_TRANSFORMATION_HANDLER>}
; {$r0=var1496, $r1=var3991, <com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_FIRST_CHARS>=var3782, $r2=var1694, $r3=var2322, <com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_NON_FIRST_CHARS>=var1962, $r4=var2917, <com.google.javascript.jscomp.CompilerOptions: char[] ANGULAR_PROPERTY_RESERVED_FIRST_CHARS>=var797, com.google.javascript.jscomp.ConformanceConfig=var2941, com.google.javascript.jscomp.resources.ResourceLoader=var3483, com.google.javascript.jscomp.CompilerOptions=var596, $r5=var1306, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var999, java.lang.Object=var2495, $r6=var3857, <com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList GLOBAL_CONFORMANCE_CONFIGS>=var2799, com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler=var3464, $r7=var3509, com.google.javascript.jscomp.CompilerOptions$AliasTransformationHandler=var1637, <com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.CompilerOptions$AliasTransformationHandler NULL_ALIAS_TRANSFORMATION_HANDLER>=var2203}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts $r0 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ$";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_FIRST_CHARS> = $r1;	$r2 = "_$";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	<com.google.javascript.jscomp.CompilerOptions: char[] POLYMER_PROPERTY_RESERVED_NON_FIRST_CHARS> = $r3;	$r4 = newarray (char)[1];	$r4[0] = 36;	<com.google.javascript.jscomp.CompilerOptions: char[] ANGULAR_PROPERTY_RESERVED_FIRST_CHARS> = $r4;	$r5 = staticinvoke <com.google.javascript.jscomp.resources.ResourceLoader: com.google.javascript.jscomp.ConformanceConfig loadGlobalConformance(java.lang.Class)>(class "Lcom/google/javascript/jscomp/CompilerOptions;");	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList of(java.lang.Object)>($r5);	<com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList GLOBAL_CONFORMANCE_CONFIGS> = $r6;	$r7 = new com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler;	specialinvoke $r7.<com.google.javascript.jscomp.CompilerOptions$NullAliasTransformationHandler: void <init>()>();	<com.google.javascript.jscomp.CompilerOptions: com.google.javascript.jscomp.CompilerOptions$AliasTransformationHandler NULL_ALIAS_TRANSFORMATION_HANDLER> = $r7;	return
;block_num 1