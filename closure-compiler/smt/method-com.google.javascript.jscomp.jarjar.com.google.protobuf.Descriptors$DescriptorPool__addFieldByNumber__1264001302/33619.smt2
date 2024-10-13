(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3637 0)
(declare-sort var434 0)
(declare-sort var810 0)
(declare-sort var3887 0)
(declare-sort var3427 0)
(declare-sort var2791 0)
(declare-sort var2314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var810-init () var810)
(declare-fun getContainingType/-747419587 (var434) var3887)
(declare-fun getNumber/-1369718730 (var434) Int)
(declare-fun <init>/910709625 (var810 var3427 Int) void)
(declare-fun cast-from-var3887-to-var3427 (var3887) var3427)
(declare-fun fieldsByNumber/-692504073 (var3637) var2791)
(declare-fun var2791_put/1464166817 (var2791 var2314 var2314) var2314)
(declare-fun cast-from-var810-to-var2314 (var810) var2314)
(declare-fun cast-from-var434-to-var2314 (var434) var2314)
(declare-fun cast-from-var2314-to-var434 (var2314) var434)
(declare-const null-var3637 var3637)
(declare-const null-var434 var434)
(declare-const var202 var3637) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool 
(assert (not (= var202 null-var3637)))
(declare-const var405 var434) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var405 null-var434)))
(define-const var593 var810 var810-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair 
(assert true)
(define-const var2921 var3887 (getContainingType/-747419587 var405)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(assert true)
(define-const var3050 Int (getNumber/-1369718730 var405)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>() 
(assert true)
;(assert (<init>/910709625 var593 (cast-from-var3887-to-var3427 var2921) var3050)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,int)>($r2, $i0) 

(declare-const var593!1 var810)
(declare-const var2921!1 var3887)
(declare-const var3050!1 Int)
(define-const var1778 var2791 (fieldsByNumber/-692504073 var202)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map fieldsByNumber> 
(define-const var3702 var2314 (var2791_put/1464166817 var1778 (cast-from-var810-to-var2314 var593!1) (cast-from-var434-to-var2314 var405))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r0, r1) 
(define-const var2957 var434 (cast-from-var2314-to-var434 var3702)) ; Statement: r6 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor) $r5 
 ; Statement: if r6 == null goto return 
(assert (= var2957 null-var434)) ; Cond: r6 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var810-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair), getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getNumber/-1369718730=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], int), <init>/910709625=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, int], void), cast-from-var3887-to-var3427=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor), fieldsByNumber/-692504073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool], java.util.Map), var2791_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var810-to-var2314=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair], java.lang.Object), cast-from-var434-to-var2314=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.Object), cast-from-var2314-to-var434=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor)}
; {var3637=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var202=r3, var434=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var405=r1, var810=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair, var593=$r0, var3887=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2921=$r2, var3050=$i0, var3427=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var2791=java.util.Map, var1778=$r4, var2314=java.lang.Object, var3702=$r5, var2957=r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3637, r3=var202, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var434, r1=var405, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair=var810, $r0=var593, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3887, $r2=var2921, $i0=var3050, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var3427, java.util.Map=var2791, $r4=var1778, java.lang.Object=var2314, $r5=var3702, r6=var2957}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: int getNumber()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$DescriptorIntPair: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,int)>($r2, $i0);	$r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map fieldsByNumber>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r0, r1);	r6 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor) $r5;	if r6 == null goto return;	return
;block_num 2