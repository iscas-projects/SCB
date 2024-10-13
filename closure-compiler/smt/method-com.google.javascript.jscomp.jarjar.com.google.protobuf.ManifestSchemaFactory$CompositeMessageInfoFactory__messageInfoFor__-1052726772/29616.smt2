(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3869 0)
(declare-sort var1391 0)
(declare-sort var1792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun factories/1878106086 (var3869) (Array Int var1391))
(declare-fun getLength-Arr-var1391-1 ((Array Int var1391)) Int)
(declare-fun var1792-init () var1792)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1792 String) void)
(declare-const null-var3869 var3869)
(declare-const null-ClassObject ClassObject)
(declare-const var3041 var3869) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory 
(assert (not (= var3041 null-var3869)))
(declare-const var1814 ClassObject) ; Statement: r4 := @parameter0: java.lang.Class 
(assert (not (= var1814 null-ClassObject)))
(define-const var1454 (Array Int var1391) (factories/1878106086 var3041)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfoFactory[] factories> 
(define-const var2976 Int (getLength-Arr-var1391-1 var1454)) ; Statement: i0 = lengthof r1 
(define-const var3266 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r2 = new java.lang.UnsupportedOperationException 
(assert (>= var3266 var2976)) ; Cond: i1 >= i0 
(define-const var2547 var1792 var1792-init) ; Statement: $r2 = new java.lang.UnsupportedOperationException 
(define-const var591 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var591)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var591!1 String)
(assert (= var591!1 ""))
(assert true)
(define-const var3194 String (append/672562846 var591!1 "No factory is available for message type: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No factory is available for message type: ") 
(declare-const var591!2 String)
(assert (= var591!2 (str.++ var591!1 "No factory is available for message type: ")))
(assert true)
(define-const var3503 String (getName/-1958580599 var1814)) ; Statement: $r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var657 String (append/672562846 var3194 var3503)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3194!1 String)
(assert (= var3194!1 (str.++ var3194 var3503)))
(assert true)
(define-const var494 String (toString/-2075883882 var657)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2547 var494)) ; Statement: specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8) 

(declare-const var2547!1 var1792)
(declare-const var494!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {factories/1878106086=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory], com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfoFactory[]), getLength-Arr-var1391-1=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfoFactory[]], int), var1792-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3869=com.google.javascript.jscomp.jarjar.com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory, var3041=r0, var1814=r4, var1391=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfoFactory, var1454=r1, var2976=i0, var3266=i1, var1792=java.lang.UnsupportedOperationException, var2547=$r2, var591=$r3, var3194=$r6, var3503=$r5, var657=$r7, var494=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory=var3869, r0=var3041, r4=var1814, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfoFactory=var1391, r1=var1454, i0=var2976, i1=var3266, java.lang.UnsupportedOperationException=var1792, $r2=var2547, $r3=var591, $r6=var3194, $r5=var3503, $r7=var657, $r8=var494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory;	r4 := @parameter0: java.lang.Class;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfoFactory[] factories>;	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $r2 = new java.lang.UnsupportedOperationException;	$r2 = new java.lang.UnsupportedOperationException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No factory is available for message type: ");	$r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 3