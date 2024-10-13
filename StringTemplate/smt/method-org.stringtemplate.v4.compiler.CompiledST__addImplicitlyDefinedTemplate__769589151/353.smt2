(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1067 0)
(declare-sort var1104 0)
(declare-sort var230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/1377009226 (var1067) String)
(declare-fun name/1377009226 (var1067) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun implicitlyDefinedTemplates/1377009226 (var1067) var1104)
(declare-fun var1104_add/328494887 (var1104 var230) Bool)
(declare-fun cast-from-var1067-to-var230 (var1067) var230)
(declare-const null-var1067 var1067)
(declare-const null-var1104 var1104)
(declare-const var1753 var1067) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.CompiledST 
(assert (not (= var1753 null-var1067)))
(declare-const var2233 var1067) ; Statement: r0 := @parameter0: org.stringtemplate.v4.compiler.CompiledST 
(assert (not (= var2233 null-var1067)))
(define-const var3484 String (prefix/1377009226 var1753)) ; Statement: $r2 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String prefix> 
(declare-const var2233!1 var1067)
(assert (not (= var2233!1 null-var1067)))
(assert (= (prefix/1377009226 var2233!1) var3484)) ; Statement: r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String prefix> = $r2 
(define-const var1576 String (name/1377009226 var2233!1)) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert (and true (and (> (str.len var1576) 0) (<= 0 0))))
(define-const var2 Int (charAt/698050440 var1576 0)) ; Statement: $c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0) 
(define-const var1174 Int (cast-from-Int-to-Int var2)) ; Statement: $i1 = (int) $c0 
 ; Statement: if $i1 == 47 goto $r4 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates> 
(assert (= var1174 47)) ; Cond: $i1 == 47 
(define-const var2230 var1104 (implicitlyDefinedTemplates/1377009226 var1753)) ; Statement: $r4 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates> 
 ; Statement: if $r4 != null goto $r5 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates> 
(assert (not (= var2230 null-var1104))) ; Cond: $r4 != null 
(define-const var2130 var1104 (implicitlyDefinedTemplates/1377009226 var1753)) ; Statement: $r5 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates> 
;(assert (var1104_add/328494887 var2130 (cast-from-var1067-to-var230 var2233!1))) ; Statement: interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>(r0) 

(declare-const var2130!1 var1104)
(declare-const var2233!2 var1067)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), implicitlyDefinedTemplates/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.List), var1104_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1067-to-var230=([org.stringtemplate.v4.compiler.CompiledST], java.lang.Object)}
; {var1067=org.stringtemplate.v4.compiler.CompiledST, var1753=r1, var2233=r0, var3484=$r2, var1576=$r3, var2=$c0, var1174=$i1, var1104=java.util.List, var2230=$r4, var2130=$r5, var230=java.lang.Object}
; {org.stringtemplate.v4.compiler.CompiledST=var1067, r1=var1753, r0=var2233, $r2=var3484, $r3=var1576, $c0=var2, $i1=var1174, java.util.List=var1104, $r4=var2230, $r5=var2130, java.lang.Object=var230}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.CompiledST;	r0 := @parameter0: org.stringtemplate.v4.compiler.CompiledST;	$r2 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String prefix>;	r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String prefix> = $r2;	$r3 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 47 goto $r4 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates>;	$r4 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates>;	if $r4 != null goto $r5 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates>;	$r5 = r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.List implicitlyDefinedTemplates>;	interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>(r0);	return
;block_num 3