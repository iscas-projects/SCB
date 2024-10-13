(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3591 0)
(declare-sort var3822 0)
(declare-sort var1805 0)
(declare-sort var2327 0)
(declare-sort var3722 0)
(declare-sort var1804 0)
(declare-sort var1040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addPackage/1117774531 (var3591 String var1805) void)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun descriptorsByName/-692504073 (var3591) var2327)
(declare-fun var3722-init () var3722)
(declare-fun <init>/-1721557824 (var3722 String String var1805) void)
(declare-fun var2327_put/1464166817 (var2327 var1804 var1804) var1804)
(declare-fun cast-from-String-to-var1804 (String) var1804)
(declare-fun cast-from-var3722-to-var1804 (var3722) var1804)
(declare-fun cast-from-var1804-to-var1040 (var1804) var1040)
(declare-const null-var3591 var3591)
(declare-const null-String String)
(declare-const null-var1805 var1805)
(declare-const null-var1040 var1040)
(declare-const var2575 var3591) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool 
(assert (not (= var2575 null-var3591)))
(declare-const var1753 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1753 null-String)))
(declare-const var2315 var1805) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var2315 null-var1805)))
(assert true)
(define-const var1930 Int (lastIndexOf/-1292097097 var1753 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1218 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var1930 var1218))) ; Cond: i0 != $i3 
(assert (and true (and (>= 0 0) (>= (str.len var1753) var1930) (>= var1930 0))))
(define-const var216 String (substring/-1240304868 var1753 0 var1930)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
;(assert (addPackage/1117774531 var2575 var216 var2315)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addPackage(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3, r2) 

(declare-const var2575!1 var3591)
(declare-const var216!1 String)
(declare-const var2315!1 var1805)
(define-const var3645 Int (+ var1930 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var3645 0) (>= (str.len var1753) var3645))))
(define-const var241 String (substring/850833817 var1753 var3645)) ; Statement: r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true) ; Non Conditional
(define-const var1093 var2327 (descriptorsByName/-692504073 var2575!1)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map descriptorsByName> 
(define-const var771 var3722 var3722-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor 
(assert true)
;(assert (<init>/-1721557824 var771 var241 var1753 var2315!1)) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r19, r0, r2) 

(declare-const var771!1 var3722)
(declare-const var241!1 String)
(declare-const var1753!1 String)
(declare-const var2315!2 var1805)
(define-const var2052 var1804 (var2327_put/1464166817 var1093 (cast-from-String-to-var1804 var1753!1) (cast-from-var3722-to-var1804 var771!1))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r20) 
(define-const var1177 var1040 (cast-from-var1804-to-var1040 var2052)) ; Statement: $r18 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor) $r6 
 ; Statement: if $r18 == null goto return 
(assert (= var1177 null-var1040)) ; Cond: $r18 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addPackage/1117774531=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], void), substring/850833817=([java.lang.String, int], java.lang.String), descriptorsByName/-692504073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool], java.util.Map), var3722-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor), <init>/-1721557824=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor, java.lang.String, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], void), var2327_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1804=([java.lang.String], java.lang.Object), cast-from-var3722-to-var1804=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor], java.lang.Object), cast-from-var1804-to-var1040=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var3591=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var2575=r1, var1753=r0, var3822=null_type, var1805=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2315=r2, var1930=i0, var1218=$i3, var216=$r3, var3645=$i1, var241=r19, var2327=java.util.Map, var1093=$r5, var3722=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor, var771=$r20, var1804=java.lang.Object, var2052=$r6, var1040=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var1177=$r18}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var3591, r1=var2575, r0=var1753, null_type=var3822, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1805, r2=var2315, i0=var1930, $i3=var1218, $r3=var216, $i1=var3645, r19=var241, java.util.Map=var2327, $r5=var1093, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor=var3722, $r20=var771, java.lang.Object=var1804, $r6=var2052, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var1040, $r18=var1177}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: void addPackage(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>($r3, r2);	$i1 = i0 + 1;	r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: java.util.Map descriptorsByName>;	$r20 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor;	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$PackageDescriptor: void <init>(java.lang.String,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor)>(r19, r0, r2);	$r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r20);	$r18 = (com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor) $r6;	if $r18 == null goto return;	return
;block_num 4