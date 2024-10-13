(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1360 0)
(declare-sort var3718 0)
(declare-sort var2921 0)
(declare-sort var484 0)
(declare-sort var365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNestedTypes/-1333670420 (var3718) var2921)
(declare-fun var2921_iterator/-912451715 (var2921) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun types/-239458726 (var1360) var484)
(declare-fun getFullName/-1302123061 (var3718) String)
(declare-fun var484_containsKey/1715618542 (var484 var365) Bool)
(declare-fun cast-from-String-to-var365 (String) var365)
(declare-fun var484_put/1464166817 (var484 var365 var365) var365)
(declare-fun cast-from-var3718-to-var365 (var3718) var365)
(declare-const null-var1360 var1360)
(declare-const null-var3718 var3718)
(declare-const var214 var1360) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder 
(assert (not (= var214 null-var1360)))
(declare-const var2367 var3718) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var2367 null-var3718)))
(assert true)
(define-const var1244 var2921 (getNestedTypes/-1333670420 var2367)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getNestedTypes()>() 
(define-const var1521 Iterator (var2921_iterator/-912451715 var1244)) ; Statement: r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var63 Bool (Iterator_hasNext/-1669924200 var1521)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types> 
(assert (= (ite var63 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3722 var484 (types/-239458726 var214)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types> 
(assert true)
(define-const var3763 String (getFullName/-1302123061 var2367)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(define-const var2696 Bool (var484_containsKey/1715618542 var3722 (cast-from-String-to-var365 var3763))) ; Statement: $z1 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r5) 
 ; Statement: if $z1 == 0 goto $r6 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types> 
(assert (= (ite var2696 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3430 var484 (types/-239458726 var214)) ; Statement: $r6 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types> 
(assert true)
(define-const var2038 String (getFullName/-1302123061 var2367)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
;(assert (var484_put/1464166817 var3430 (cast-from-String-to-var365 var2038) (cast-from-var3718-to-var365 var2367))) ; Statement: interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, r0) 

(declare-const var3430!1 var484)
(declare-const var2038!1 String)
(declare-const var2367!1 var3718)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getNestedTypes/-1333670420=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.util.List), var2921_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), types/-239458726=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder], java.util.Map), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), var484_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var365=([java.lang.String], java.lang.Object), var484_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3718-to-var365=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object)}
; {var1360=com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder, var214=r3, var3718=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2367=r0, var2921=java.util.List, var1244=$r1, var1521=r2, var63=$z0, var484=java.util.Map, var3722=$r4, var3763=$r5, var365=java.lang.Object, var2696=$z1, var3430=$r6, var2038=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder=var1360, r3=var214, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3718, r0=var2367, java.util.List=var2921, $r1=var1244, r2=var1521, $z0=var63, java.util.Map=var484, $r4=var3722, $r5=var3763, java.lang.Object=var365, $z1=var2696, $r6=var3430, $r7=var2038}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.util.List getNestedTypes()>();	r2 = interfaceinvoke $r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types>;	$r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types>;	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$z1 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r5);	if $z1 == 0 goto $r6 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types>;	$r6 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TypeRegistry$Builder: java.util.Map types>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, r0);	return
;block_num 4