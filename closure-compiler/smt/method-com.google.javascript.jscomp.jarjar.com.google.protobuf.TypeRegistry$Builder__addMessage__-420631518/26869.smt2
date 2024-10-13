(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var425 0)
(declare-sort var2877 0)
(declare-sort var2764 0)
(declare-sort var3843 0)
(declare-sort var1266 0)
(declare-sort var3732 0)
(declare-sort var3605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNestedTypes/-1333670420 (var2877) var2764)
(declare-fun var2764_iterator/-912451715 (var2764) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun types/-239458726 (var425) var3843)
(declare-fun getFullName/-1302123061 (var2877) String)
(declare-fun var3843_containsKey/1715618542 (var3843 var1266) Bool)
(declare-fun cast-from-String-to-var1266 (String) var1266)
(declare-fun var3605_access$200/1319406191 () var3732)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warning/-1321853967 (var3732 String) void)
(declare-const null-var425 var425)
(declare-const null-var2877 var2877)
(declare-const var761 var425) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder 
(assert (not (= var761 null-var425)))
(declare-const var3613 var2877) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var3613 null-var2877)))
(assert true)
(define-const var1931 var2764 (getNestedTypes/-1333670420 var3613)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getNestedTypes()>() 
(define-const var3244 Iterator (var2764_iterator/-912451715 var1931)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var696 Bool (Iterator_hasNext/-1669924200 var3244)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types> 
(assert (= (ite var696 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3563 var3843 (types/-239458726 var761)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types> 
(assert true)
(define-const var2866 String (getFullName/-1302123061 var3613)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(define-const var955 Bool (var3843_containsKey/1715618542 var3563 (cast-from-String-to-var1266 var2866))) ; Statement: $z1 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r5) 
 ; Statement: if $z1 == 0 goto $r6 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types> 
(assert (not (= (ite var955 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1588 var3732 var3605_access$200/1319406191) ; Statement: $r14 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry: java.util.logging.Logger access$200()>() 
(define-const var1239 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1239)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1239!1 String)
(assert (= var1239!1 ""))
(assert true)
(define-const var2794 String (append/672562846 var1239!1 "Type ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type ") 
(declare-const var1239!2 String)
(assert (= var1239!2 (str.++ var1239!1 "Type ")))
(assert true)
(define-const var1687 String (getFullName/-1302123061 var3613)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var3357 String (append/672562846 var2794 var1687)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2794!1 String)
(assert (= var2794!1 (str.++ var2794 var1687)))
(assert true)
(define-const var2439 String (append/672562846 var3357 " is added multiple times.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is added multiple times.") 
(declare-const var3357!1 String)
(assert (= var3357!1 (str.++ var3357 " is added multiple times.")))
(assert true)
(define-const var2925 String (toString/-2075883882 var2439)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warning/-1321853967 var1588 var2925)) ; Statement: virtualinvoke $r14.<java.util.logging.Logger: void warning(java.lang.String)>($r13) 

(declare-const var1588!1 var3732)
(declare-const var2925!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getNestedTypes/-1333670420=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.util.List), var2764_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), types/-239458726=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder], java.util.Map), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), var3843_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var1266=([java.lang.String], java.lang.Object), var3605_access$200/1319406191=([], java.util.logging.Logger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warning/-1321853967=([java.util.logging.Logger, java.lang.String], void)}
; {var425=com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder, var761=r3, var2877=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3613=r0, var2764=java.util.List, var1931=$r1, var3244=r2, var696=$z0, var3843=java.util.Map, var3563=$r4, var2866=$r5, var1266=java.lang.Object, var955=$z1, var3732=java.util.logging.Logger, var3605=com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry, var1588=$r14, var1239=$r8, var2794=$r10, var1687=$r9, var3357=$r11, var2439=$r12, var2925=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder=var425, r3=var761, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2877, r0=var3613, java.util.List=var2764, $r1=var1931, r2=var3244, $z0=var696, java.util.Map=var3843, $r4=var3563, $r5=var2866, java.lang.Object=var1266, $z1=var955, java.util.logging.Logger=var3732, com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry=var3605, $r14=var1588, $r8=var1239, $r10=var2794, $r9=var1687, $r11=var3357, $r12=var2439, $r13=var2925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getNestedTypes()>();	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types>;	$r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types>;	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$z1 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r5);	if $z1 == 0 goto $r6 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types>;	$r14 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry: java.util.logging.Logger access$200()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type ");	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is added multiple times.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r14.<java.util.logging.Logger: void warning(java.lang.String)>($r13);	return
;block_num 4