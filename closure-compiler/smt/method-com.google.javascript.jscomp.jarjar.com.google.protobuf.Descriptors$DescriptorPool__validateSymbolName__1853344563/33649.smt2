(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2212 0)
(declare-sort var2279 0)
(declare-sort var445 0)
(declare-sort var2362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/45802131 (var2212) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2279-init () var2279)
(declare-fun <init>/-1603475532 (var2279 var2212 String var445) void)
(declare-const null-var2212 var2212)
(declare-const null-NullType var2362)
(declare-const null-var445 var445)
(declare-const var3187 var2212) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor 
(assert (not (= var3187 null-var2212)))
(assert true)
(define-const var3646 String (getName/45802131 var3187)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var2400 Int (length/-134980193 var3646)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto i3 = 0 
(assert (not (not (= var2400 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3687 var2279 var2279-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException 
(assert true)
;(assert (<init>/-1603475532 var3687 var3187 "Missing name." null-var445)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(r0, "Missing name.", null) 

(declare-const var3687!1 var2279)
(declare-const var3187!1 var2212)
(declare-const var3955 String)
(declare-const var1872 var2362)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/45802131=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor], java.lang.String), length/-134980193=([java.lang.String], int), var2279-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException), <init>/-1603475532=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1], void)}
; {var2212=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var3187=r0, var3646=r1, var2400=$i0, var2279=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException, var3687=$r9, var445=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1, var3955="Missing name.", var1872=null, var2362=null_type}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var2212, r0=var3187, r1=var3646, $i0=var2400, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException=var2279, $r9=var3687, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1=var445, "Missing name."=var3955, null=var1872, null_type=var2362}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor: java.lang.String getName()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 != 0 goto i3 = 0;	$r9 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorValidationException: void <init>(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$1)>(r0, "Missing name.", null);	throw $r9
;block_num 2