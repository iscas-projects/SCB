(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var970 0)
(declare-sort var2300 0)
(declare-sort var892 0)
(declare-sort var3711 0)
(declare-sort var1825 0)
(declare-sort var2227 0)
(declare-sort var2726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun descriptorsByName/-692504073 (var970) var3711)
(declare-fun var1825-init () var1825)
(declare-fun <init>/-1721557824 (var1825 String String var892) void)
(declare-fun var3711_put/1464166817 (var3711 var2227 var2227) var2227)
(declare-fun cast-from-String-to-var2227 (String) var2227)
(declare-fun cast-from-var1825-to-var2227 (var1825) var2227)
(declare-fun cast-from-var2227-to-var2726 (var2227) var2726)
(declare-const null-var970 var970)
(declare-const null-String String)
(declare-const null-var892 var892)
(declare-const null-var2726 var2726)
(declare-const var3224 var970) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool 
(assert (not (= var3224 null-var970)))
(declare-const var3592 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3592 null-String)))
(declare-const var3000 var892) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var3000 null-var892)))
(assert true)
(define-const var1682 Int (lastIndexOf/-1292097097 var3592 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var686 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var1682 var686)))) ; Negate: Cond: i0 != $i3  
(define-const var2905 String var3592) ; Statement: r19 = r0 
 ; Statement: goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map descriptorsByName>] 
(assert true) ; Non Conditional
(define-const var1028 var3711 (descriptorsByName/-692504073 var3224)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map descriptorsByName> 
(define-const var1729 var1825 var1825-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor 
(assert true)
;(assert (<init>/-1721557824 var1729 var2905 var3592 var3000)) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r19, r0, r2) 

(declare-const var1729!1 var1825)
(declare-const var2905!1 String)
(declare-const var3592!1 String)
(declare-const var3000!1 var892)
(define-const var663 var2227 (var3711_put/1464166817 var1028 (cast-from-String-to-var2227 var3592!1) (cast-from-var1825-to-var2227 var1729!1))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r20) 
(define-const var500 var2726 (cast-from-var2227-to-var2726 var663)) ; Statement: $r18 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor) $r6 
 ; Statement: if $r18 == null goto return 
(assert (= var500 null-var2726)) ; Cond: $r18 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), descriptorsByName/-692504073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool], java.util.Map), var1825-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor), <init>/-1721557824=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor, java.lang.String, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], void), var3711_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2227=([java.lang.String], java.lang.Object), cast-from-var1825-to-var2227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor], java.lang.Object), cast-from-var2227-to-var2726=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var970=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var3224=r1, var3592=r0, var2300=null_type, var892=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3000=r2, var1682=i0, var686=$i3, var2905=r19, var3711=java.util.Map, var1028=$r5, var1825=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor, var1729=$r20, var2227=java.lang.Object, var663=$r6, var2726=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var500=$r18}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var970, r1=var3224, r0=var3592, null_type=var2300, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var892, r2=var3000, i0=var1682, $i3=var686, r19=var2905, java.util.Map=var3711, $r5=var1028, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor=var1825, $r20=var1729, java.lang.Object=var2227, $r6=var663, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var2726, $r18=var500}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r19 = r0;	goto [?= $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map descriptorsByName>];	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map descriptorsByName>;	$r20 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor;	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r19, r0, r2);	$r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r20);	$r18 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor) $r6;	if $r18 == null goto return;	return
;block_num 4