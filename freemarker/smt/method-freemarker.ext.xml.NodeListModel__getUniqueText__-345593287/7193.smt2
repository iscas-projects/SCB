(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3724 0)
(declare-sort var2750 0)
(declare-sort var2317 0)
(declare-sort var3070 0)
(declare-sort var527 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodes/1014398653 (var3724) var3070)
(declare-fun var3070_iterator/-912451715 (var3070) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var527-init () var527)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var985) String)
(declare-fun cast-from-var2317-to-var985 (var2317) var985)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var527 String) void)
(declare-const null-var3724 var3724)
(declare-const null-String String)
(declare-const null-var2317 var2317)
(declare-const var3699 var3724) ; Statement: r14 := @this: freemarker.ext.xml.NodeListModel 
(assert (not (= var3699 null-var3724)))
(declare-const var1016 var3724) ; Statement: r0 := @parameter0: freemarker.ext.xml.NodeListModel 
(assert (not (= var1016 null-var3724)))
(declare-const var1593 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1593 null-String)))
(define-const var1937 String null-String) ; Statement: r15 = null 
(define-const var2677 var2317 null-var2317) ; Statement: r16 = null 
(define-const var3042 var3070 (nodes/1014398653 var1016)) ; Statement: $r1 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes> 
(define-const var471 Iterator (var3070_iterator/-912451715 var3042)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var781 Bool (Iterator_hasNext/-1669924200 var471)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var781 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r16 != null goto $r3 = new freemarker.template.TemplateModelException 
(assert (not (= var2677 null-var2317))) ; Cond: r16 != null 
(define-const var1509 var527 var527-init) ; Statement: $r3 = new freemarker.template.TemplateModelException 
(define-const var1100 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1100)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1100!1 String)
(assert (= var1100!1 ""))
(assert true)
(define-const var1735 String (append/672562846 var1100!1 "Value for node ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value for node ") 
(declare-const var1100!2 String)
(assert (= var1100!2 (str.++ var1100!1 "Value for node ")))
(assert true)
(define-const var3911 String (append/672562846 var1735 var1593)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1735!1 String)
(assert (= var1735!1 (str.++ var1735 var1593)))
(assert true)
(define-const var3757 String (append/672562846 var3911 " is ambiguos: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is ambiguos: ") 
(declare-const var3911!1 String)
(assert (= var3911!1 (str.++ var3911 " is ambiguos: ")))
(assert true)
(define-const var1347 String (append/-1031950772 var3757 (cast-from-var2317-to-var985 var2677))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r16) 
(declare-const var3757!1 String)
(assert (str.prefixof var3757 var3757!1))
(assert true)
(define-const var2403 String (toString/-2075883882 var1347)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var1509 var2403)) ; Statement: specialinvoke $r3.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r10) 

(declare-const var1509!1 var527)
(declare-const var2403!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {nodes/1014398653=([freemarker.ext.xml.NodeListModel], java.util.List), var3070_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var527-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2317-to-var985=([java.util.HashSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var3724=freemarker.ext.xml.NodeListModel, var3699=r14, var1016=r0, var1593=r5, var2750=null_type, var1937=r15, var2317=java.util.HashSet, var2677=r16, var3070=java.util.List, var3042=$r1, var471=r2, var781=$z0, var527=freemarker.template.TemplateModelException, var1509=$r3, var1100=$r4, var1735=$r6, var3911=$r7, var3757=$r8, var985=java.lang.Object, var1347=$r9, var2403=$r10}
; {freemarker.ext.xml.NodeListModel=var3724, r14=var3699, r0=var1016, r5=var1593, null_type=var2750, r15=var1937, java.util.HashSet=var2317, r16=var2677, java.util.List=var3070, $r1=var3042, r2=var471, $z0=var781, freemarker.template.TemplateModelException=var527, $r3=var1509, $r4=var1100, $r6=var1735, $r7=var3911, $r8=var3757, java.lang.Object=var985, $r9=var1347, $r10=var2403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r14 := @this: freemarker.ext.xml.NodeListModel;	r0 := @parameter0: freemarker.ext.xml.NodeListModel;	r5 := @parameter1: java.lang.String;	r15 = null;	r16 = null;	$r1 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes>;	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r16 != null goto $r3 = new freemarker.template.TemplateModelException;	$r3 = new freemarker.template.TemplateModelException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value for node ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is ambiguos: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r16);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 4