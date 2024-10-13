(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var363 0)
(declare-sort var2378 0)
(declare-sort var900 0)
(declare-sort var2890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun findSymbol/-1847463245 (var363 String var2890) var900)
(declare-const null-var363 var363)
(declare-const null-String String)
(declare-const null-var900 var900)
(declare-const null-var2890 var2890)
(declare-const var1985 var363) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool 
(assert (not (= var1985 null-var363)))
(declare-const var1012 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1012 null-String)))
(declare-const var618 var900) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor 
(assert (not (= var618 null-var900)))
(declare-const var3611 var2890) ; Statement: r13 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter 
(assert (not (= var3611 null-var2890)))
(assert true)
(define-const var3665 Bool (startsWith/-1785782452 var1012 ".")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(assert (not (= (ite var3665 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var1012) 1))))
(define-const var369 String (substring/850833817 var1012 1)) ; Statement: r25 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
(assert true)
(define-const var634 var900 (findSymbol/-1847463245 var1985 var369 var3611)) ; Statement: r26 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter)>(r25, r13) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r26 != null goto return r26 
(assert (not (= var634 null-var900))) ; Cond: r26 != null 
 ; Statement: return r26 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String), findSymbol/-1847463245=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor)}
; {var363=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool, var1985=r4, var1012=r0, var2378=null_type, var900=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor, var618=r2, var2890=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter, var3611=r13, var3665=$z0, var369=r25, var634=r26}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool=var363, r4=var1985, r0=var1012, null_type=var2378, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor=var900, r2=var618, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter=var2890, r13=var3611, $z0=var3665, r25=var369, r26=var634}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor;	r13 := @parameter2: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(".");	if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	r25 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	r26 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$GenericDescriptor findSymbol(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$DescriptorPool$SearchFilter)>(r25, r13);	goto [?= (branch)];	if r26 != null goto return r26;	return r26
;block_num 4