(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var558 0)
(declare-sort var603 0)
(declare-sort var862 0)
(declare-sort var2710 0)
(declare-sort var3419 0)
(declare-sort var1892 0)
(declare-sort var1896 0)
(declare-sort var2187 0)
(declare-sort var2306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1612451176 (var2710 var603 var862) void)
(declare-fun cast-from-var558-to-var2710 (var558) var2710)
(declare-fun var3419-init () var3419)
(declare-fun <init>/-325640736 (var3419) void)
(declare-fun cast-from-var3419-to-var1892 (var3419) var1892)
(declare-fun bannedTagAttrs/-1981652996 (var558) var1892)
(declare-fun getValueList/951915007 (var862) var1896)
(declare-fun var1892_iterator/-912451715 (var1892) Iterator)
(declare-fun cast-from-var1896-to-var1892 (var1896) var1892)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2187)
(declare-fun cast-from-var2187-to-String (var2187) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2306-init () var2306)
(declare-fun <init>/67088071 (var2306 String) void)
(declare-const null-var558 var558)
(declare-const null-var603 var603)
(declare-const null-var862 var862)
(declare-const var1231 var558) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom 
(assert (not (= var1231 null-var558)))
(declare-const var3778 var603) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var3778 null-var603)))
(declare-const var2450 var862) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.Requirement 
(assert (not (= var2450 null-var862)))
(assert true)
;(assert (<init>/-1612451176 (cast-from-var558-to-var2710 var1231) var3778 var2450)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: void <init>(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.Requirement)>(r1, r2) 

(declare-const var1231!1 var558)
(declare-const var3778!1 var603)
(declare-const var2450!1 var862)
(define-const var1841 var3419 var3419-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1841)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var1841!1 var3419)
(declare-const var1231!2 var558)
(assert (not (= var1231!2 null-var558)))
(assert (= (bannedTagAttrs/-1981652996 var1231!2) (cast-from-var3419-to-var1892 var1841!1))) ; Statement: r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> = $r3 
(assert true)
(define-const var3843 var1896 (getValueList/951915007 var2450!1)) ; Statement: $r4 = virtualinvoke r2.<com.google.javascript.jscomp.Requirement: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList getValueList()>() 
(define-const var1867 Iterator (var1892_iterator/-912451715 (cast-from-var1896-to-var1892 var3843))) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1330 Bool (Iterator_hasNext/-1669924200 var1867)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> 
(assert (not (= (ite var1330 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var252 var2187 (Iterator_next/-1124697587 var1867)) ; Statement: $r25 = interfaceinvoke r5.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1867!1 Iterator)
(define-const var1716 String (cast-from-var2187-to-String var252)) ; Statement: r26 = (java.lang.String) $r25 
(assert true)
(define-const var3809 (Array Int String) (split/-636890950 var1716 "\u005c.")) ; Statement: r27 = virtualinvoke r26.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1716 "\u005c.") i) (re.++ (re.* re.all) (str.to_re ".") (re.* re.all))))))
(define-const var3640 Int (getLength-Arr-String-1 var3809)) ; Statement: $i0 = lengthof r27 
 ; Statement: if $i0 != 2 goto $r34 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec 
(assert (not (= var3640 2))) ; Cond: $i0 != 2 
(define-const var466 var2306 var2306-init) ; Statement: $r34 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec 
(assert true)
;(assert (<init>/67088071 var466 "Values must be in the format tagname.attribute.")) ; Statement: specialinvoke $r34.<com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec: void <init>(java.lang.String)>("Values must be in the format tagname.attribute.") 

(declare-const var466!1 var2306)
(declare-const var722 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1612451176=([com.google.javascript.jscomp.ConformanceRules$AbstractRule, com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.Requirement], void), cast-from-var558-to-var2710=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], com.google.javascript.jscomp.ConformanceRules$AbstractRule), var3419-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3419-to-var1892=([java.util.ArrayList], java.util.List), bannedTagAttrs/-1981652996=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], java.util.List), getValueList/951915007=([com.google.javascript.jscomp.Requirement], com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList), var1892_iterator/-912451715=([java.util.List], java.util.Iterator), cast-from-var1896-to-var1892=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList], java.util.List), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2187-to-String=([java.lang.Object], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2306-init=([], com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec), <init>/67088071=([com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec, java.lang.String], void)}
; {var558=com.google.javascript.jscomp.ConformanceRules$BanCreateDom, var1231=r0, var603=com.google.javascript.jscomp.AbstractCompiler, var3778=r1, var862=com.google.javascript.jscomp.Requirement, var2450=r2, var2710=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var3419=java.util.ArrayList, var1841=$r3, var1892=java.util.List, var1896=com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList, var3843=$r4, var1867=r5, var1330=$z0, var2187=java.lang.Object, var252=$r25, var1716=r26, var3809=r27, var3640=$i0, var2306=com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec, var466=$r34, var722="Values must be in the format tagname.attribute."}
; {com.google.javascript.jscomp.ConformanceRules$BanCreateDom=var558, r0=var1231, com.google.javascript.jscomp.AbstractCompiler=var603, r1=var3778, com.google.javascript.jscomp.Requirement=var862, r2=var2450, com.google.javascript.jscomp.ConformanceRules$AbstractRule=var2710, java.util.ArrayList=var3419, $r3=var1841, java.util.List=var1892, com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList=var1896, $r4=var3843, r5=var1867, $z0=var1330, java.lang.Object=var2187, $r25=var252, r26=var1716, r27=var3809, $i0=var3640, com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec=var2306, $r34=var466, "Values must be in the format tagname.attribute."=var722}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom;	r1 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r2 := @parameter1: com.google.javascript.jscomp.Requirement;	specialinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: void <init>(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.Requirement)>(r1, r2);	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> = $r3;	$r4 = virtualinvoke r2.<com.google.javascript.jscomp.Requirement: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList getValueList()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs>;	$r25 = interfaceinvoke r5.<java.util.Iterator: java.lang.Object next()>();	r26 = (java.lang.String) $r25;	r27 = virtualinvoke r26.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.");	$i0 = lengthof r27;	if $i0 != 2 goto $r34 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec;	$r34 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec;	specialinvoke $r34.<com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec: void <init>(java.lang.String)>("Values must be in the format tagname.attribute.");	throw $r34
;block_num 4