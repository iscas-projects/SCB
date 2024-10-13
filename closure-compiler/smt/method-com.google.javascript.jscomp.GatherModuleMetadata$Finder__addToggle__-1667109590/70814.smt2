(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3516 0)
(declare-sort var1965 0)
(declare-sort var859 0)
(declare-sort var310 0)
(declare-sort var1653 0)
(declare-sort var3529 0)
(declare-sort var2549 0)
(declare-sort var1788 0)
(declare-sort var2838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun this$0/-1406849449 (var3516) var1653)
(declare-fun currentModule/-1587967053 (var1653) var3529)
(declare-fun metadataBuilder/630380303 (var3529) var2549)
(declare-fun readTogglesBuilder/-2023084870 (var2549) var1788)
(declare-fun add/1745185465 (var1788 var2838) var1788)
(declare-fun cast-from-String-to-var2838 (String) var2838)
(declare-const null-var3516 var3516)
(declare-const null-var1965 var1965)
(declare-const null-var859 var859)
(declare-const null-String String)
(declare-const var1149 var3516) ; Statement: r7 := @this: com.google.javascript.jscomp.GatherModuleMetadata$Finder 
(assert (not (= var1149 null-var3516)))
(declare-const var278 var1965) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var278 null-var1965)))
(declare-const var478 var859) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var478 null-var859)))
(declare-const var3468 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3468 null-String)))
(assert true)
(define-const var2717 Bool (startsWith/-1785782452 var3468 "TOGGLE_")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("TOGGLE_") 
 ; Statement: if $z0 == 0 goto $r4 = <com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.DiagnosticType INVALID_TOGGLE_USAGE> 
(assert (not (= (ite var2717 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var224 String "TOGGLE_") ; Statement: $r5 = "TOGGLE_" 
(assert true)
(define-const var1982 Int (length/-134980193 var224)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int length()>() 
(assert (and true (and (>= var1982 0) (>= (str.len var3468) var1982))))
(define-const var3849 String (substring/850833817 var3468 var1982)) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0) 
(define-const var2124 var1653 (this$0/-1406849449 var1149)) ; Statement: $r8 = r7.<com.google.javascript.jscomp.GatherModuleMetadata$Finder: com.google.javascript.jscomp.GatherModuleMetadata this$0> 
(define-const var1887 var3529 (currentModule/-1587967053 var2124)) ; Statement: $r9 = $r8.<com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder currentModule> 
(define-const var2952 var2549 (metadataBuilder/630380303 var1887)) ; Statement: $r10 = $r9.<com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder metadataBuilder> 
(assert true)
(define-const var241 var1788 (readTogglesBuilder/-2023084870 var2952)) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder readTogglesBuilder()>() 
(assert true)
;(assert (add/1745185465 var241 (cast-from-String-to-var2838 var3849))) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder add(java.lang.Object)>(r6) 

(declare-const var241!1 var1788)
(declare-const var3849!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), this$0/-1406849449=([com.google.javascript.jscomp.GatherModuleMetadata$Finder], com.google.javascript.jscomp.GatherModuleMetadata), currentModule/-1587967053=([com.google.javascript.jscomp.GatherModuleMetadata], com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder), metadataBuilder/630380303=([com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder], com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder), readTogglesBuilder/-2023084870=([com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder), add/1745185465=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder, java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder), cast-from-String-to-var2838=([java.lang.String], java.lang.Object)}
; {var3516=com.google.javascript.jscomp.GatherModuleMetadata$Finder, var1149=r7, var1965=com.google.javascript.jscomp.NodeTraversal, var278=r1, var859=com.google.javascript.rhino.Node, var478=r2, var3468=r0, var310=null_type, var2717=$z0, var224=$r5, var1982=$i0, var3849=r6, var1653=com.google.javascript.jscomp.GatherModuleMetadata, var2124=$r8, var3529=com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder, var1887=$r9, var2549=com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder, var2952=$r10, var1788=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder, var241=$r11, var2838=java.lang.Object}
; {com.google.javascript.jscomp.GatherModuleMetadata$Finder=var3516, r7=var1149, com.google.javascript.jscomp.NodeTraversal=var1965, r1=var278, com.google.javascript.rhino.Node=var859, r2=var478, r0=var3468, null_type=var310, $z0=var2717, $r5=var224, $i0=var1982, r6=var3849, com.google.javascript.jscomp.GatherModuleMetadata=var1653, $r8=var2124, com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder=var3529, $r9=var1887, com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder=var2549, $r10=var2952, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder=var1788, $r11=var241, java.lang.Object=var2838}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.GatherModuleMetadata$Finder;	r1 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r2 := @parameter1: com.google.javascript.rhino.Node;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("TOGGLE_");	if $z0 == 0 goto $r4 = <com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.DiagnosticType INVALID_TOGGLE_USAGE>;	$r5 = "TOGGLE_";	$i0 = virtualinvoke $r5.<java.lang.String: int length()>();	r6 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	$r8 = r7.<com.google.javascript.jscomp.GatherModuleMetadata$Finder: com.google.javascript.jscomp.GatherModuleMetadata this$0>;	$r9 = $r8.<com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder currentModule>;	$r10 = $r9.<com.google.javascript.jscomp.GatherModuleMetadata$ModuleMetadataBuilder: com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder metadataBuilder>;	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.modules.ModuleMetadataMap$ModuleMetadata$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder readTogglesBuilder()>();	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMultiset$Builder add(java.lang.Object)>(r6);	goto [?= return];	return
;block_num 3