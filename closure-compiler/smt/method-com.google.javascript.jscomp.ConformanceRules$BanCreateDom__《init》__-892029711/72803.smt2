(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2060 0)
(declare-sort var1007 0)
(declare-sort var797 0)
(declare-sort var2605 0)
(declare-sort var840 0)
(declare-sort var2552 0)
(declare-sort var374 0)
(declare-sort var1726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1612451176 (var2605 var1007 var797) void)
(declare-fun cast-from-var2060-to-var2605 (var2060) var2605)
(declare-fun var840-init () var840)
(declare-fun <init>/-325640736 (var840) void)
(declare-fun cast-from-var840-to-var2552 (var840) var2552)
(declare-fun bannedTagAttrs/-1981652996 (var2060) var2552)
(declare-fun getValueList/951915007 (var797) var374)
(declare-fun var2552_iterator/-912451715 (var2552) Iterator)
(declare-fun cast-from-var374-to-var2552 (var374) var2552)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2552_isEmpty/-153543822 (var2552) Bool)
(declare-fun var1726-init () var1726)
(declare-fun <init>/67088071 (var1726 String) void)
(declare-const null-var2060 var2060)
(declare-const null-var1007 var1007)
(declare-const null-var797 var797)
(declare-const var1661 var2060) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom 
(assert (not (= var1661 null-var2060)))
(declare-const var3359 var1007) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var3359 null-var1007)))
(declare-const var564 var797) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.Requirement 
(assert (not (= var564 null-var797)))
(assert true)
;(assert (<init>/-1612451176 (cast-from-var2060-to-var2605 var1661) var3359 var564)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: void <init>(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.Requirement)>(r1, r2) 

(declare-const var1661!1 var2060)
(declare-const var3359!1 var1007)
(declare-const var564!1 var797)
(define-const var1122 var840 var840-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1122)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var1122!1 var840)
(declare-const var1661!2 var2060)
(assert (not (= var1661!2 null-var2060)))
(assert (= (bannedTagAttrs/-1981652996 var1661!2) (cast-from-var840-to-var2552 var1122!1))) ; Statement: r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> = $r3 
(assert true)
(define-const var2136 var374 (getValueList/951915007 var564!1)) ; Statement: $r4 = virtualinvoke r2.<com.google.javascript.jscomp.Requirement: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList getValueList()>() 
(define-const var1137 Iterator (var2552_iterator/-912451715 (cast-from-var374-to-var2552 var2136))) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1631 Bool (Iterator_hasNext/-1669924200 var1137)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> 
(assert (= (ite var1631 1 0) 0)) ; Cond: $z0 == 0 
(define-const var985 var2552 (bannedTagAttrs/-1981652996 var1661!2)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> 
(define-const var3790 Bool (var2552_isEmpty/-153543822 var985)) ; Statement: $z1 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>() 
(assert (not (= (ite var3790 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3821 var1726 var1726-init) ; Statement: $r24 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec 
(assert true)
;(assert (<init>/67088071 var3821 "Specify one or more values.")) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec: void <init>(java.lang.String)>("Specify one or more values.") 

(declare-const var3821!1 var1726)
(declare-const var583 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1612451176=([com.google.javascript.jscomp.ConformanceRules$AbstractRule, com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.Requirement], void), cast-from-var2060-to-var2605=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], com.google.javascript.jscomp.ConformanceRules$AbstractRule), var840-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var840-to-var2552=([java.util.ArrayList], java.util.List), bannedTagAttrs/-1981652996=([com.google.javascript.jscomp.ConformanceRules$BanCreateDom], java.util.List), getValueList/951915007=([com.google.javascript.jscomp.Requirement], com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList), var2552_iterator/-912451715=([java.util.List], java.util.Iterator), cast-from-var374-to-var2552=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList], java.util.List), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2552_isEmpty/-153543822=([java.util.List], boolean), var1726-init=([], com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec), <init>/67088071=([com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec, java.lang.String], void)}
; {var2060=com.google.javascript.jscomp.ConformanceRules$BanCreateDom, var1661=r0, var1007=com.google.javascript.jscomp.AbstractCompiler, var3359=r1, var797=com.google.javascript.jscomp.Requirement, var564=r2, var2605=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var840=java.util.ArrayList, var1122=$r3, var2552=java.util.List, var374=com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList, var2136=$r4, var1137=r5, var1631=$z0, var985=$r6, var3790=$z1, var1726=com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec, var3821=$r24, var583="Specify one or more values."}
; {com.google.javascript.jscomp.ConformanceRules$BanCreateDom=var2060, r0=var1661, com.google.javascript.jscomp.AbstractCompiler=var1007, r1=var3359, com.google.javascript.jscomp.Requirement=var797, r2=var564, com.google.javascript.jscomp.ConformanceRules$AbstractRule=var2605, java.util.ArrayList=var840, $r3=var1122, java.util.List=var2552, com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList=var374, $r4=var2136, r5=var1137, $z0=var1631, $r6=var985, $z1=var3790, com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec=var1726, $r24=var3821, "Specify one or more values."=var583}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$BanCreateDom;	r1 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r2 := @parameter1: com.google.javascript.jscomp.Requirement;	specialinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: void <init>(com.google.javascript.jscomp.AbstractCompiler,com.google.javascript.jscomp.Requirement)>(r1, r2);	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs> = $r3;	$r4 = virtualinvoke r2.<com.google.javascript.jscomp.Requirement: com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList getValueList()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ProtocolStringList: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs>;	$r6 = r0.<com.google.javascript.jscomp.ConformanceRules$BanCreateDom: java.util.List bannedTagAttrs>;	$z1 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.jstype.JSTypeRegistry getTypeRegistry()>();	$r24 = new com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec;	specialinvoke $r24.<com.google.javascript.jscomp.CheckConformance$InvalidRequirementSpec: void <init>(java.lang.String)>("Specify one or more values.");	throw $r24
;block_num 4