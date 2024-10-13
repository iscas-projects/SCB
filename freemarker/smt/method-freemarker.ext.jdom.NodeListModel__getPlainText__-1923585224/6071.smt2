(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3843 0)
(declare-sort var1173 0)
(declare-sort var3067 0)
(declare-sort var1896 0)
(declare-sort var49 0)
(declare-sort var137 0)
(declare-sort var1061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1173_get/1088891777 (var1173 var3067) var3067)
(declare-fun cast-from-String-to-var3067 (String) var3067)
(declare-fun cast-from-var3067-to-var1896 (var3067) var1896)
(declare-fun nodes/1336386696 (var3843) var49)
(declare-fun var3843_evaluateElementOperation/2084329385 (var137 var49) var49)
(declare-fun cast-from-var1896-to-var137 (var1896) var137)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var49_iterator/-912451715 (var49) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1061-init () var1061)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/378607920 (var1061 String) void)
(declare-const null-var3843 var3843)
(declare-const var3843-OPERATIONS var1173)
(declare-const var673 var3843) ; Statement: r2 := @this: freemarker.ext.jdom.NodeListModel 
(assert (not (= var673 null-var3843)))
(define-const var1798 var1173 var3843-OPERATIONS) ; Statement: $r0 = <freemarker.ext.jdom.NodeListModel: java.util.Map OPERATIONS> 
(define-const var800 var3067 (var1173_get/1088891777 var1798 (cast-from-String-to-var3067 "_text"))) ; Statement: $r1 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("_text") 
(define-const var2734 var1896 (cast-from-var3067-to-var1896 var800)) ; Statement: $r4 = (freemarker.ext.jdom.NodeListModel$TextOp) $r1 
(define-const var3491 var49 (nodes/1336386696 var673)) ; Statement: $r3 = r2.<freemarker.ext.jdom.NodeListModel: java.util.List nodes> 
(define-const var1958 var49 (var3843_evaluateElementOperation/2084329385 (cast-from-var1896-to-var137 var2734) var3491)) ; Statement: r5 = staticinvoke <freemarker.ext.jdom.NodeListModel: java.util.List evaluateElementOperation(freemarker.ext.jdom.NodeListModel$NodeOperator,java.util.List)>($r4, $r3) 
(define-const var2752 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2752)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2752!1 String)
(assert (= var2752!1 ""))
(define-const var3314 Iterator (var49_iterator/-912451715 var1958)) ; Statement: r7 = interfaceinvoke r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var527 Bool (Iterator_hasNext/-1669924200 var3314)) ; Statement: $z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r8 = new freemarker.template.SimpleScalar 
(assert (= (ite var527 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1125 var1061 var1061-init) ; Statement: $r8 = new freemarker.template.SimpleScalar 
(assert true)
(define-const var2174 String (toString/-2075883882 var2752!1)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/378607920 var1125 var2174)) ; Statement: specialinvoke $r8.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9) 

(declare-const var1125!1 var1061)
(declare-const var2174!1 String)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1173_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3067=([java.lang.String], java.lang.Object), cast-from-var3067-to-var1896=([java.lang.Object], freemarker.ext.jdom.NodeListModel$TextOp), nodes/1336386696=([freemarker.ext.jdom.NodeListModel], java.util.List), var3843_evaluateElementOperation/2084329385=([freemarker.ext.jdom.NodeListModel$NodeOperator, java.util.List], java.util.List), cast-from-var1896-to-var137=([freemarker.ext.jdom.NodeListModel$TextOp], freemarker.ext.jdom.NodeListModel$NodeOperator), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var49_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1061-init=([], freemarker.template.SimpleScalar), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3843=freemarker.ext.jdom.NodeListModel, var673=r2, var1173=java.util.Map, var1798=$r0, var3067=java.lang.Object, var800=$r1, var1896=freemarker.ext.jdom.NodeListModel$TextOp, var2734=$r4, var49=java.util.List, var3491=$r3, var137=freemarker.ext.jdom.NodeListModel$NodeOperator, var1958=r5, var2752=$r6, var3314=r7, var527=$z0, var1061=freemarker.template.SimpleScalar, var1125=$r8, var2174=$r9}
; {freemarker.ext.jdom.NodeListModel=var3843, r2=var673, java.util.Map=var1173, $r0=var1798, java.lang.Object=var3067, $r1=var800, freemarker.ext.jdom.NodeListModel$TextOp=var1896, $r4=var2734, java.util.List=var49, $r3=var3491, freemarker.ext.jdom.NodeListModel$NodeOperator=var137, r5=var1958, $r6=var2752, r7=var3314, $z0=var527, freemarker.template.SimpleScalar=var1061, $r8=var1125, $r9=var2174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.ext.jdom.NodeListModel;	$r0 = <freemarker.ext.jdom.NodeListModel: java.util.Map OPERATIONS>;	$r1 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>("_text");	$r4 = (freemarker.ext.jdom.NodeListModel$TextOp) $r1;	$r3 = r2.<freemarker.ext.jdom.NodeListModel: java.util.List nodes>;	r5 = staticinvoke <freemarker.ext.jdom.NodeListModel: java.util.List evaluateElementOperation(freemarker.ext.jdom.NodeListModel$NodeOperator,java.util.List)>($r4, $r3);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	r7 = interfaceinvoke r5.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r7.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r8 = new freemarker.template.SimpleScalar;	$r8 = new freemarker.template.SimpleScalar;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r9);	return $r8
;block_num 3